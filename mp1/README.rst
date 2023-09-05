==========================
ECE 411: MP1 Documentation
==========================

-----------------------------------------
Introduction to SystemVerilog HDL and HVL
-----------------------------------------

    The software programs described in this document are confidential and proprietary products of
    Synopsys Corp. or its licensors. The terms and conditions
    governing the sale and licensing of Synopsys products are set forth in written
    agreements between Synopsys Corp. and its customers. No representation or other
    affirmation of fact contained in this publication shall be deemed to be a warranty or give rise
    to any liability of Synopsys Corp. whatsoever. Images of software programs in use
    are assumed to be copyright and may not be reproduced.

    This document is for informational and instructional purposes only. The ECE 411 teaching staff
    reserves the right to make changes in specifications and other information contained in this
    publication without prior notice, and the reader should, in all cases, consult the teaching
    staff to determine whether any changes have been made.

.. contents:: Table of Contents
.. section-numbering::

-----

.. Aliases for appendix references
.. _Appendix A: `Appendix A: DIV5 DFA`_


Introduction
============

In this MP, you will verify and debug designs for several hardware components. You will also design a hardware component using test-driven design methodology. This document contains the design specifications required to complete these tasks.

The primary objective of these exercises is to introduce you to hardware verification methodologies using SystemVerilog. You will use SystemVerilog for more complicated hardware designs in the following MPs. In this MP, you will learn how to verify and design the following hardware components:

- An eight-bit multiplier
- A synchronous FIFO
- A content addressable memory (CAM)
- A cacheline adapter

In the following, we will describe some notation that you will encounter through this
tutorial. Most of this notation should not be new to you, however, it will be worthwhile for you to
reacquaint yourself with it before proceeding to the tutorial itself. The following sections will
take you through the process of verifying and designing several hardware modules. The `VCS`_
section covers the simulation of the design using VCS. The `Submission`_ section
contains the items you will need to submit for a grade. Additional useful information is included in
the appendices.

As a final note, **please read and follow the tutorial carefully**, as careful
attention to how signal values are assigned and sampled is the key to passing the verification
assignments. If you do decide to work on the MP before finishing this documentation, make sure to read
Sections `VCS`_ and `Submission`_ for instructions on running the simulation software and
submitting your MP for grading, respectively.

Notation
--------

The numbering and notation conventions used in this tutorial are described below:

- Indexing into arrays is based on the dimensions of the array. For example, in
  ``logic [7:0] arr1``, 'bit 0' refers to the *rightmost* bit of ``arr1``, while in
  ``logic [0:7] arr2``, 'bit 0' refers to the *leftmost* bit of ``arr2``. [#]_

- Numbers beginning with ``0x`` are hexadecimal.

- For RTL descriptions, ``pattern[x:y]`` identifies a bit field consisting of bits ``x`` through
  ``y`` of a larger binary pattern.  For example, ``X[15:12]`` identifies a field consisting of bits
  15, 14, 13, and 12 from the value ``X``.

- Commands to be typed on the terminal are shown as follows::

    $ command

  Do not type the dollar sign; this represents the prompt displayed by the shell (e.g.,
  ``[netid@linux-a2 ~]$``).

- Filenames are shown in ``fixed_width``, referenced from your root 411 repository (e.g.
  ``mp1/cam/run.do``) and will end in either an extension, or a directory marker (``/``).

- SystemVerilog keywords and signal identifiers are shown in ``fixed_width``.

  - Longer code segments will be formatted as a block, appearing with a darker background and syntax
    highlighting.

- Signal identifiers are written in 'snake case' (lower case with underscores separating words).
  Additionally identifiers may include one or more suffix:

  - port input signals are suffixed with ``_i``.
  - port output signals are suffixed with ``_o``.
  - port inout signals are suffixed with ``_io``.
  - signals which are synthesized into registers are suffixed with ``_r``.
  - signals which are used to wire components within a module are suffixed with ``_w``.
  - signals which are 'active low' are suffixed with ``_n``.
  - SystemVerilog ``interface`` signals are suffixed appropriately to show the driver of the signal
    and, if there is only one consumer, the consumer (e.g. if the 'master' port is the driver and
    the 'slave' port is the consumer, then the signal will use the suffix ``_m_s``).
  - a ``parameter`` identifier is suffixed with ``_p``.
  - a ``localparameter`` identifier is suffixed with ``_lp``.
  - signals may concatenate multiple suffixes as necessary.

- All SystemVerilog ``function``, ``task``, ``module``, ``interface``, ``modport``, and ``class``
  identifiers use either 'snake case' of 'camel case'.

- SystemVerilog macro identifiers are written in ``UPPER_CASE`` and do not have a prefixed
  underscore.

- Actions to take in the GUI are shown in **bold**.

.. [#] If these notations are new to you, see IEEE Standard 1800-2017 "IEEE Standard for
       SystemVerilog" section 7.4 "Packed and Unpacked Arrays":
       `<https://ieeexplore.ieee.org/document/8299595>`_
.. Perhaps this document should be downloaded and published on the course webpage


Getting Started
===============

Retrieving MP1 Code
----------------------------
To setup the ECE 411 environment, run::

  $ source /class/ece411/ece411.sh

To get the provided base code for MP1, from your ece411 MP directory, run::

  $ git fetch release
  $ git merge --allow-unrelated-histories release/mp1 -m "Merging MP1"

What is Verification
====================

When designing a digital circuit in a hardware description language (HDL), we are attempting to
describe a hardware component whose behavior will comply with a high level description of an
intended behavior (a specification). Hardware verification is a process which attempts to ensure
that a design's behavior matches a specified behavior.

Verification is Hard
--------------------

Digital hardware verification is a hard [#]_ problem. For example, consider the collection of
Boolean functions 𝐵ₙ = {𝑓 | 𝑓 : {0,1}ⁿ → {0,1}}.

.. The above equation would be better rendered on a separate line using LaTeX syntax. GitHub does
   not support this though, so unicode literals are used instead.  The same goes for the math in the
   following paragraphs.

These are the functions with 𝑛 binary inputs and a binary output.

How would you go about writing a program which takes as input an element of 𝐵ₙ (the specification),
and a SystemVerilog description of a digital circuit (the design), and outputs whether or not the
design matches the specification? Can you come up with something significantly better than iterating
through all 2ⁿ possible function inputs and ensuring that the output of the design matches the
output of the specification? [#]_

.. [#] coNP-Complete
.. [#] If you can, please give ECE 411 a shout out as you claim your
       `$1M prize <http://www.claymath.org/millennium-problems/p-vs-np-problem>`_

Verification is Necessary
-------------------------


We have all experienced buggy software where developers put significant effort in debugging. This is also true for hardware development. But hardware verification is more challenging and expensive in industry.

There are numerous reasons, including the following from Kropf [#]_:

- Fabrication costs are much higher for hardware than for software.
- Hardware bug fixes after delivery to customers are almost impossible.
- Quality expectations are usually higher for hardware than for software.
- Time to market severely affects potential revenue.

In this excerpt, "quality expectations are usually higher" often means "human safety is at risk if
this hardware device does not work properly".


.. TODO something about job availability for verification engineers

.. _EDA Playground: https://www.edaplayground.com/
.. _JSFiddle: https://www.jsfiddle.net/
.. [#] T. Kropf, *Introduction to Formal Hardware Verification*, Springer, 1999, ISBN: 3-540-65445-3.

Verification is Not Validation
------------------------------

A similar but different process to verification is *validation*. Whereas verification is a process
by which we ensure that a design matches **its** specification, validation is a process by which we
ensure that a design matches **a** specification.

Consider the case where a truck is designed to meet a specification of being able to haul twenty
tons of material. The truck designers at ACME Truck Co. must *verify* that their trucks can haul
twenty tons. Likewise, ACE Hauling Co. requires a truck which can haul twenty-two tons. Thus the
engineers and technicians at ACE Hauling Co. must *validate* that the ACME Truck Co.'s truck can
haul twenty-two tons.

How To Do Verification
----------------------

There are three central tasks to verification [#]_:

1. Stimulate a design by providing sequences of stimuli.
2. Check that the design outputs results in accordance with the specification.
3. Measure how much of a design's *execution state space* [#]_ has been stimulated and checked.

The way that you will complete these three tasks in this MP is using *dynamic simulation* [#]_.
In this MP, you will use specifications to generate (sometimes random) sequences of input stimuli,
create software checkers which confirm that the output of the *design under test* (DUT) conform to
the specification, and "scoreboard" DUT accuracy and coverage.

.. [#] E. Seligman et al, *Formal Verification: An Essential Toolkit for Modern VLSI Design*,
       Elsevier, ISBN: 978-0-12-800727-3, pg.23,
       `<http://elibrary.nusamandiri.ac.id/ebook/2015_Formal_Verification_An_Essential_Toolkit_for_Modern_VLSI_Design.pdf>`_
.. [#] The full space of all RTL state and input values.
.. [#] In *dynamic simulation*, the design is simulated in software using cycle or gate level
       simulators (e.g., VCS), stimuli consist of sequences of input signals to the device under
       test, and outputs are verified against the specification using assertions. This is in
       contrast to *formal verification* techniques which use mathematical representations of the
       design, along with assumptions about possible inputs and states, to constrain the test space
       to a subset of the execution state space which is actually reachable by the design (and
       assumptions). In effect, formal verification techniques partition the execution state space
       into *reachable space* and *unreachable space*, often drastically reducing the size of the
       space needed to be tested, and then use automated proofing techniques to prove properties
       about the circuit.

A Quick Note on 'Assert'
------------------------

The word 'assert' is used to mean two different things.  The first way
describes the value of a signal.  When  we write that a 'signal is asserted',
this means that the signal is driven to its 'on' position.  Likewise, when
we say that a 'signal is asserted [high|low]', this means that the signal
is set to either logical '1' or '0', respectively.  Additionally,
``assert`` is a SystemVerilog keyword which evaluates a condition and raises
an assertion warning (or executes programmer specified behavior) when the
condition evaluates to logical '0'.

A Simple Verification Example
-----------------------------

To demonstrate dynamic simulation, we can use the simple example of a purely combinational circuit. [#]_

Our task is to verify that ``module purefunction``, shown in `Listing 1`_ (the design) actually
implements the truth-table its description comment says it does. The truth-table is an example of a
specification which describes the intended behavior of the circuit. [#]_

.. _Listing 1:

Listing 1: A purely combinational design

.. code:: verilog
  :number-lines:

  // Module implements the following truth-table:
  /*
      abc || x
      000 || 0
      001 || 0
      010 || 1
      011 || 1
      100 || 0
      101 || 1
      110 || 0
      111 || 1
   */
  module purefunction
  (
      input logic a_i,
      input logic b_i,
      input logic c_i,
      output logic x_o
  );

  assign x_o = a_i ^ b_i ^ (a_i & c_i);

  endmodule : purefuction

In a sense, combinational circuits are the simplest of digital circuits: they have no initial or
intermediate state, the size of the input and the output are fixed, and the "runtime" is constant.
To verify the design, we can simply [#]_ run through all possible inputs and verify that the DUT
generates the proper outputs:

.. _Listing 2:

Listing 2: Generating Stimulus [#]_

.. code:: verilog
  :number-lines:

  initial begin
      for (int i = 0; i < 4'b1000; ++i) begin
          {a_i, b_i, c_i} = i[2:0];
          #1;
      end
  end


Now that we've managed to generate all possible inputs, we must create a model of the specified
behavior:

.. _Listing 3:

Listing 3: Modeling the Proper Behavior [#]_

.. code:: verilog
  :number-lines:

  function logic spec_output(logic a, logic b, logic c);
      case ({a, b, c})
          3'b000: return 0;
          3'b001: return 0;
          3'b011: return 1;
          3'b010: return 1;
          3'b110: return 0;
          3'b100: return 1;
          3'b101: return 0;
          3'b111: return 1;
          default: $error("Invalid input to spec_output function");
      endcase
  endfunction

Here we directly implement the specified truth table in something which resembles a MUX. In the case
of combinational logic with more inputs, we could instead load the truth table into a memory indexed
by the inputs as our specification model.

Finally, we can rewrite the for loop which generates the input stimuli to check that the output of
the DUT matches the output of the model:

.. _Listing 4:

Listing 4: Checking Outputs [#]_

.. code:: verilog
  :number-lines:

  initial begin
      for (int i = 0; i <= 4'b1000; ++i) begin
          {a_i, b_i, c_i} = i[2:0];
          #1;
          output_equiv: assert (x_o == spec_output(a_i, b_i, c_i))
                        else $error("{a,b,c}=%b, dut output: %b spec output: %b",
                                    {a_i,b_i,c_i},x_o,spec_output(a_i,b_i,c_i));
      end
      $finish;
  end

Putting this all together, we can write our testbench to verify ``module purefunction``:

.. code:: verilog
  :number-lines:

  function logic spec_output(logic a, logic b, logic c);
      case ({a, b, c})
          3'b000: return 0;
          3'b001: return 0;
          3'b011: return 1;
          3'b010: return 1;
          3'b110: return 0;
          3'b100: return 1;
          3'b101: return 0;
          3'b111: return 1;
          default: $error("Invalid input to spec_output function");
      endcase
  endfunction

  module purefunction_tb;
      timeunit 1ns;
      timeprecision 1ns;

      logic a_i, b_i, c_i, x_o;

      purefunction dut(.*);

      initial begin
          reset = '1;
          // Generate sequence of inputs
          for (int i = 0; i <= 4'b1000; ++i) begin
              // Set input values to the dut, and let combinational logic settle
              {a_i, b_i, c_i} = i[2:0];
              #1;
              reset = '0;
              // Check dut output vs specification output
              output_equiv: assert (x_o == spec_output(a_i, b_i, c_i))
                            else $error("With {a, b, c}=%b, dut outputs: %b while spec outputs: %b",
                                        {a_i, b_i, c_i}, x_o, spec_output(a_i, b_i, c_i));
          end
          $finish;
      end
  endmodule : purefunction_tb

Our testbench generates sequences of input stimuli, uses these stimuli to drive the DUT as well as a
software model of the specification, and compares the outputs of the two. Further, although we do not
explicitly measure it, our knowledge of the test stimuli generated and the execution state space
ensures that we have full coverage of the design.

.. [#] Although in this case, an eight-to-one MUX may be an appropriate implementation of
       ``module purefunction``, consider a similar circuit but with 20 bits of input rather than 3,
       implementing a function 𝑓 : {0, 1}²⁰ → {0,1}. In this case, a 2²⁰-to-one mux is likely
       unreasonable, and the circuit should be implemented differently.

.. Once again, GitHub does not support math type, so literals are used instead.

.. [#] In this case, the specification is a *formal* specification, as it is written in a formal
       language with the expressivity of propositional logic. Often an initial specification will
       not be formalized so nicely.

.. [#] in time exponential to the number of inputs

.. [#] Note line 4: we must have some time delay in order to ensure that each input stimulus
       actually gets simulated. If there were no time delay, the input stimulus would immediately
       be set to ``3'b111``.

.. [#] Note line 11: we have this default case since *logic* encodes four-states. Thus if the input
       to the function is mistakenly ``x`` or ``z``, we can display an error showing our *test
       bench* is at fault, rather than our *DUT*.

.. [#] Note line 5: the label ``output_equiv:`` is used as a name for the *assertion*. This is NOT a
       label for flow control (in fact, SystemVerilog lacks a ``goto`` statement).

Verifying a Sequential Circuit
------------------------------

When verifying a circuit representation of a Boolean function, we can exhaust all possible inputs
simply by iterating through each possible input combination. Consider the case of a sequential
circuit, which takes arbitrarily large inputs serially. Clearly, verifying the circuit by simply
monitoring the input and output ports is insufficient, since the circuit can potentially process
infinitely many different input "strings". We consider such an example:

.. _Listing 5:

Listing 5: A Sequential Circuit with Binary String Input

.. code:: verilog
  :number-lines:

  module div5 (
      input logic clk,
      input logic rst,
      input logic serial_in,
      input logic run,
      output logic decision
  );

  logic [2:0] state;
  localparam logic [2:0] initial_state = '1;

  always_ff @(posedge clk) begin
      if (rst) begin
          state <= initial_state;
      end
      else if (run) begin
          case (state)
              initial_state,
              3'b000: state <= serial_in ? 3'b001 : 3'b000;
              3'b001: state <= serial_in ? 3'b011 : 3'b010;
              3'b010: state <= serial_in ? 3'b000 : 3'b100;
              3'b011: state <= serial_in ? 3'b010 : 3'b001;
              3'b100: state <= serial_in ? 3'b100 : 3'b011;
          endcase
      end
      else begin
          state <= initial_state;
      end
  end

  assign decision = state == 3'b000;

  endmodule : div5

`Listing 5`_ is a SystemVerilog representation of a Deterministic Finite Automaton (DFA) which
"decides" the language "DIV5". If the input string is divisible by five, then on completion of input
processing, the output port ``decision`` should be high. Similarly, if the input string is NOT
divisible by five, then on completion of input processing, the output port ``decision`` should be
low.

Since there is no limit on how long input strings can be, if we test the functionality by looking
only at inputs and outputs of the design module, then we can only give guarantees qualified by a
certain input size (e.g. "all inputs of less than 16-bits produced the proper outputs"). Luckily,
we *can* verify whether this design is functionally correct without qualifications. Rather than
specifying that the design produces a certain output signal based on the sequence of input signals,
we instead specify that the design implements a specific DFA which we prove decides the language
DIV5. Thus, we must simply verify that the design implements the DFA.

The DFA that we implement has six states, five of which are labeled 0 through 4 which represent the
value of the in-process input string modulus 5. The sixth state is the initial state, labeled s. The
next state transition function, 𝛿, which takes the current state 𝑖 and input bit 𝑏 as follows::

  𝛿(𝑖,𝑏) = (2𝑖+𝑏) mod 5 if 𝑖 ∈ {0,1,2,3,4} else 𝑏

.. Ugh, GitHub, why are you like this. This equation might be better served as a png after being
   rendered in LaTeX...

An input string is divisible by five if and only if the DFA moves to state 0 upon processing the
last (least significant) bit in the string. We consider the DFA to consume its input string from
left-to-right (i.e. the most significant bit first).  See `Appendix A`_ for a proof of the DFA's
correctness.

Thus, to verify the design, we must move the design into every possible state it can enter, and then
ensure the transitions from these states are correct.

Coverage Points
~~~~~~~~~~~~~~~

These "edges" -- combinations of internal design state and input signals -- are called "coverage
points" (or "coverages" of "covers"). In this MP, you will be graded on your ability to write
testbenches which reach these coverage points and ensure the correct behavior of the design at these
points.

Testbench Components
--------------------

In the prior examples, the verification steps of input stimulus generation, driving the DUT and
model, and comparing the results of the two are done using only the most basic building blocks
of SystemVerilog: modules, arithmetic and logical operators, procedural flow-control, immediate
assertions, functions, and the timestep delay operator (``#``). Additionally, it may be useful to
separate functionality of the verification process into multiple independent parts:

- A 'sequencer' whose only responsibility is generating input stimuli, independent of the bus or
  interface used by the DUT.

  - Consider two 8-bit adders, one whose data inputs are sent in parallel through a 16 bit port in
    one clock cycle, and another whose data inputs are sent serially one bit per cycle. Since both
    have the same functionality -- 8-bit adder -- they both should be simulated with the same data
    stimuli (i.e., 3+5), while the interface protocol stimuli must be radically different.

- A 'driver' which generates the bus or interface control input stimuli and transfers the
  sequencer's data to the DUT.

  - Similarly, we can reuse drivers across differing modules as long as those modules share the same
    bus protocol.

- A 'monitor' which acts like a mirrored image of the driver. Just as the driver transactionalizes
  input stimuli to send to the DUT, the monitor observes and collects the inputs and outputs of the
  DUT to identify when a transaction is complete and ready to be evaluated by the 'scoreboard'.

- A 'scoreboard' takes the output of the monitor and evaluates whether the DUT produced the
  appropriate value. In addition to evaluating correctness, the scoreboard can also measure testing
  coverage.

Performing dynamic simulation of more complicated designs will often suggest using other
SystemVerilog language features, such as object-oriented programming and interprocess communication
[#]_ features. Further, other designs may have far too large of an execution state space to fully
cover, and thus explicit cover points must be determined and tested for, while large portions of the
execution space may only be covered if randomized stimuli happen to check those states.

In the ensuing exercises, you will see designs which you should be able to fully cover as we did for
``module purefunction``, and designs whose execution state space is too large to fully cover.

.. [#] Each ``initial`` and ``always`` block is treated as an individual process by SystemVerilog
       simulators. Additionally, the ``fork ... join[_any | _none]?`` constructs allow dynamic
       creation of additional processes. SystemVerilog's ``mailbox`` provides signals and message
       passing, while ``mutex`` provides both blocking and non-blocking mutual exclusion primitives.




Verifying a Multiplier
======================

Overview
--------

For this exercise, you will write a testbench to verify an unsigned integer add-shift multiplier for
use in an 8-bit computer. The multiplier is described in ``mp1/multiplier/hdl/add_shift_multiplier.sv``. In
this exercise, you will design a test bench to verify this design. There are no RTL bugs in the multiplier.

Specification
-------------

The multiplier has the following port listing:

.. code:: verilog

  module add_shift_multiplier
  (
      input logic clk_i,
      input logic reset_n_i,
      input operand_t multiplicand_i,
      input operand_t multiplier_i,
      input logic start_i,
      output logic ready_o,
      output result_t product_o,
      output logic done_o
  );

- ``clk_i`` is the clock which drives the sequential logic in the multiplier

- ``reset_n_i`` is an active low, synchronous reset signal. If this signal is asserted at
  ``@(posedge clk_i)``, the multiplier should halt any ongoing multiplication and reset its state to
  allow for the start of a new multiplication.

- ``multiplicand_i`` and ``multiplier_i`` are the input operands for the multiplication.  When a
  multiplication begins, these signals are registered in the multiplier and thus are not required
  to be continuously asserted throughout the multiplication.

- ``start_i`` begins a new multiplication if it is asserted at ``@(posedge clk_i)`` and the
  multiplier is in a 'ready' state.  If the multiplier is not in a 'ready' state, assertion of this
  signal has no effect.

- ``ready_o`` asserts that the multiplier is in a 'ready' state and can begin a new multiplication.

- ``product_o`` contains the ``2 * width_p`` bit output of the multiplication when the multiplier is
  in a 'done' state.

- ``done_o`` is asserted when the multiplier is in a 'done' state. This occurs when multiplication
  is complete, meaning (``product_o`` contains the product of the registered input operands OR a
  synchronous reset has occurred), AND a new multiplication has not been started.

See `Figure 1`_ below for a timing diagram of this protocol. We do not specify how many cycles the
multiplier takes to complete the multiplicaton.

.. _Figure 1:
.. figure:: doc/figures/multiplier_wave.png
   :align: center
   :width: 80%
   :alt: multiplier timing diagram

   Figure 1: Multiplier Timing Diagram

Coverages
---------

Your testbench must cover at least the following:

- From a 'ready' [#]_ state, assert ``start_i`` with every possible combination of multiplicand and
  multiplier, and without any resets until the multiplier enters a 'done' state (resets while the
  device is in a 'done' state are acceptable).

- For each 'run' state ``s``, assert the ``start_i`` signal while the multiplier is in state ``s``.

- For each 'run' state ``s``, assert the active-low ``reset_n_i`` signal while the multiplier is in
  state ``s``.

.. [#] see ``ready_states`` in ``mp1/multiplier/pkg/design_types.sv``

Error Reporting
---------------

Your testbench must detect the following errors (defined in ``types.sv``):

- Upon entering the 'DONE' state, if the output signal ``product_o`` holds an incorrect product,
  report a ``BAD_PRODUCT`` error.
- If the ``ready_o`` signal is not asserted after a reset, report a ``NOT_READY`` error.
- If the ``ready_o`` signal is not asserted upon completion of a multiplication, report a
  ``NOT_READY`` error.

To report an error, pass the appropriate error type to ``report_error`` task defined in
``testbench.sv``. An example is given below.

.. code:: verilog

  assert (/* your assertion here */)
    else begin
      $error ("%0d: %0t: BAD_PRODUCT error detected", `__LINE__, $time);
      report_error (BAD_PRODUCT);
    end

Clocking Blocks
---------------

In SystemVerilog, ``clocking`` blocks are an abstraction used to capture precise timing information
and allow the verification engineer to write verification code at the 'cycle' level. The
``clocking`` blocks allow you to specify input and output skews, but in this MP,
you only use them to specify clocks.  When using a ``default clocking``
construct, signals should be assigned using non-blocking assignments. Further,
you can insert a delay of ``N`` cycles using the syntax
``##(N)``. To delay until some condition holds, use the 'if and only if' keyword:
``@(<clk> iff <conditon>);``.

Driving Signals
---------------

In order to facilitate autograding, your testbench should set signal values only at time 0 (the
beginning of an ``initial`` block) or using the ``tb_clk`` clock as described in the
`Clocking Blocks`_ section. Additionally, at time 0, your testbench must assert the ``reset_n_i``
signal.

Sampling Signals
----------------

Additionally, all time delaying constructs should be associated with this default clock. That is,
they should either be of the form ``##(n)``, which waits for ``n`` cycles with respect to the
clocking block, or ``@(tb_clk [iff <predicate>])`` which delays for a single cycle, or delays until
'predicate' is evaluated true with samples taken with respect to the clocking block. Using the
default clocking block in these ways is vital to getting an accurate assessment from the grading
harness.

For example, the following are appropriate procedural blocks for your testbench

.. code:: verilog

  initial reset_n = 0;   // initialize reset signal
  initial begin
      ##(5);               // Ensure DUT is reset
      reset_n <= 1;
      multiplicand_i <= 16;
      multiplier_i <= 32;  // NBA: signals still have their initial values
      @(tb_clk);           // Wait for clock signal (could use '##(1)')
                           // Now, when the values get assigned
  end

  always @() begin
      $display("SystemVerilog Functions cannot block");
  end

and the following are inappropriate

.. code:: verilog

  initial begin
      reset_n_i = 1'b1;    // reset not initialized to active low 0
      @(posedge clk);      // Using clk rather than tb_clk
      multiplier_i = 32;   // signal value set at rising edge of clock
  end

  always @(negedge clk) begin
      reset_n_i = 1'b0;
      multiplicand_i = 16;
      multiplier_i = 32;  // Only use NON Blocking Assignments
                          // with a clocking block
      @(tb_clk);
  end


Verifying a FIFO
================

Overview
--------

For this exercise, you will write a testbench to verify a synchronous FIFO with a single enqueuer
and a single dequeuer. A FIFO is called 'synchronous' when the enqueue clock and the dequeue clock
are the same. [#]_ The FIFO is described in ``mp1/fifo/hdl/fifo.sv``. In this exercise, you will:

1. Design a test bench to verify this design.

2. While verifying, notice the given RTL design has bugs. Your submission must have these bugs fixed
   for full credit.

.. [#] If the clocks are distinct, then it is an *asynchronous* FIFO, and much more complicated.

Specification
-------------

The FIFO implements a valid-ready enqueue protocol, and a valid-yumi dequeue protocol, and has the
following port listing:

.. code:: verilog

  module fifo_synch_1r1w
  (
      input logic clk_i,
      input logic reset_n_i,

      // valid-ready input protocol
      input word_t data_i,
      input logic valid_i,
      output logic ready_o,

      // valid-yumi output protocol
      output logic valid_o,
      output word_t data_o,
      input logic yumi_i
  );

- ``clk_i`` is the clock which drives the sequential logic in the fifo.

- ``reset_n_i`` is an active low, synchronous reset signal. If this signal is asserted at
  ``@(posedge clk_i)``, the FIFO sets itself to 'empty'.
- The valid-ready protocol is:

  - ``data_i`` contains the enqueued data word.

  - ``valid_i`` is asserted by the enqueuer to enqueue ``data_i`` into the FIFO.

  - ``ready_o`` asserts that the FIFO is not full and has capacity to enqueue a word. The behavior
    when ``valid_i`` is asserted while the FIFO is full is undefined and should be avoided.

- The valid-yumi protocol is:

  - ``valid_o`` asserts that the FIFO is not empty and that the value on ``data_o`` is the oldest
    word stored in the FIFO.

  - ``yumi_i`` is asserted by the dequeuer to signal to the FIFO that the word in ``data_o`` must be
    removed from the FIFO.

See `Figure 2`_ below for a timing diagram depiction of these protocols.

.. _Figure 2:
.. figure:: doc/figures/fifo_wave.png
   :align: center
   :width: 80%
   :alt: FIFO timing diagram

   Figure 2: FIFO Timing Diagram

Coverages
---------

Your testbench must cover at least the following for the FIFO with capacity ``CAP_P``:

- You must enqueue words while the FIFO has size in [0, CAP_P-1].
- You must dequeue words while the FIFO has size in [1, CAP_P].
- You must simultaneously enqueue and dequeue while the FIFO has size in [1, CAP_P-1].

Error Reporting
---------------

Your testbench must detect the following errors (defined in ``mp1/fifo/pkg/design_types.sv``):

- Asserting ``reset_n_i`` at ``@(tb_clk)`` should result in ``ready_o`` being high at
  ``@(posedge clk_i)``. If it is not, report the appropriate error.

- When asserting ``yumi_i`` at ``@(tb_clk)`` when data is ready, the value on ``data_o`` is the
  CORRECT value. If not, report the appropriate error. Recall that asserting ``yumi_i`` when the
  FIFO is empty results in undefined behavior, so avoid doing this.

To report an error, pass the appropriate error type to ``report_error`` task defined in
``mp1/fifo/hvl/testbench.sv``. An example is given below.

.. code:: verilog

  assert (/* your assertion here */)
    else begin
      $error ("%0d: %0t: %s error detected", `__LINE__, $time, err.name);
      report_error (err);
    end

Driving Signals
---------------

Once again, only drive signals at time 0 or using non-blocking assignments synchronized using the
default ``tb_clk``. Only sample signals as described in `Sampling Signals`_ above.


Verifying a CAM
===============

Overview
--------

For this exercise, you will write a testbench to verify a content
addressable memory, or CAM. You will also debug the RTL, as usual.

A CAM can be thought of as similar to a software's 'associative array' abstract data type, with the distinction
that a CAM is of fixed size. A CAM, then, is a collection of key-value pairs, and supports read and
write operations. When reading a CAM, a key is provided, and the CAM responds with the appropriate
value, or a signal indicating that there is no value associated with the key in the CAM. On a write,
both a key and a value are provided, and these get stored into the CAM.

Since a CAM has a fixed number of entries (eight, in this MP), some type of 'replacement policy'
must be used when writing a new key to a full [#]_ CAM.  The replacement policy used by the CAM in this MP is the
'least recently used' `(LRU) <https://en.wikipedia.org/wiki/Cache_replacement_policies>`_ policy,
which evicts (removes) the entry whose key was least recently used by a read or write.
More explicitly, on writes, a CAM takes different actions depending on whether
the key is already present in the CAM, and whether the CAM is full.  These are

- If the key is present in the CAM, the value associated with the key is
  updated.
- If the key is not present and the CAM is not full, then a new entry is
  allocated and both the key and value are stored into this new entry.
- If the key is not present and the CAM is full, then an entry is evicted,
  meaning the new key and value are written in the location of the previous
  entry.

In all write cases, metadata associated with the replacement policy is updated.

The CAM is described across several files in ``mp1/cam/hdl``. In this exercise, you will design a
test bench to verify this design.

.. [#] We say that a CAM is full when all of its entries are filled with valid
       key-value pairs.

Specification
-------------

The CAM has the following port listing:

.. code:: verilog

  module cam
  (
      input clk_i,
      input reset_n_i,
      input rw_n_i,
      input valid_i,
      input key_t key_i,
      input val_t val_i,
      output val_t val_o,
      output logic valid_o
  );

- ``clk_i`` is the clock which drives the sequential logic in the CAM.

- ``reset_n_i`` is an active low, synchronous reset signal. If this signal is asserted at
  ``@(posedge clk_i)``, the CAM resets itself to 'empty'.

- ``rw_n_i`` decides whether the operation is a read (if set to ``1'b1``) or a write (if set to
  ``1'b0``). This value has no effect on the CAM unless ``valid_i`` is asserted.

- ``valid_i`` is asserted when a read or write operation is performed.

- ``key_i`` is the key input used by both read and write operations.

- ``val_i`` is the value input used by write operations.

- ``val_o`` is the output value on reads.

- ``valid_o`` is asserted by the CAM on reads to assert that the value in ``val_o`` is correct (that
  is, the CAM found a value associated with ``key_i``).

Write and read operations are serviced at the rising edge of ``clk_i``. That is, the CAM updates its
internal state (both key-value pairs as well as LRU metadata) sequentially. Additionally, the CAM
guarantees that ``val_o`` and ``valid_o`` show the correct value on a read at the rising edge of
``clk_i``.

Coverages
---------

Your testbench must cover at least the following:

- The CAM must evict a key-value pair from each of its eight indices.
- The CAM must record a 'read-hit from each of its eight indices.
- You must perform writes of different values to the same key on consecutive
  clock cycles.
- You must perform a write then a read to the same key on consecutive clock
  cycles.


RTL Bug
-------

The CAM is a somewhat large chunk of RTL, and you're not expected to
fully understand it to debug. There's a single bug you are required to
fix: it is in the module ``one_hot0_encoder`` in
``hdl/cam_controller.sv:9``. To get started debugging, consider
writing a few test vectors and seeing in Verdi if the inputs to the
module correspond to the outputs you'd expect.


Error Reporting
---------------

Your testbench must detect the following errors:

- Assert a read error when the value read from the CAM is incorrect.

To report an error, pass the appropriate error type to ``itf.tb_report_dut_error`` task defined in
``mp1/cam/include/cam_itf.sv``. An example is given below.

.. code:: verilog

  @(clk);
  assert (itf.val_o == val) else  begin
      itf.tb_report_dut_error(READ_ERROR);
      $error("%0t TB: Read %0d, expected %0d", $time, itf.val_o, val);
  end

Driving Signals
---------------

Once again, only drive signals at time 0 or using non-blocking assignments synchronized using the
default ``tb_clk``. Only sample signals as described in `Sampling Signals`_ above.


Designing a Cacheline Adaptor
=============================

In this assignment, you will design a "cacheline adaptor" module.  You will
use this module again in MP3. We have provided a testbench to validate your design against, as well as instructions located in the cacheline_adapter folder of this repository (`here <https://github.com/illinois-cs-coursework/fa23_ece411_.release/tree/mp1/mp1/cacheline_adaptor>`_).

Grading
=======

Each subproblem is worth one quarter of the total score.
The points available for each verification subproblem are distributed uniformally over each
coverage category.  Within each verification subproblem, False-Positive and False-Negative
errors act as -1\% penalty, and subproblem scores are floored at 0. If
you do not fix the RTL bug (i.e., get the DUT passing), you will receive 50%
of the total credit you earned for doing only coverage.

The design problem is pass/fail.

VCS
========

In the base directory of each of the verification assignments, there is a Makefile.
 To test your design, execute the following from the command line:

  .. code::

    $ make run

You can ignore the incompatible linux kernel warning. Almalinux used by EWS is binary compatible with RHEL, just not officially supported by Synopsys.
Additionally, for the cacheline adaptor, VCS may print a segmentation fault error after compiling your design. This is safe to ignore.

You should pay attention to the contents of the sim folder. The simv executable is the simulator binary. The simv.daidir folder contains the simulator's internal database. The "compile.log" file contains the compilation report of your design.
You should fix lint warnings if any as they can lead to subtle bugs.

In order to launch Verdi and view waveforms, run the ./run_verdi.sh script. Synthesis is not necessary for this MP, and trying to synthesize using Design Compiler may cause errors.

Student Self-Grading
==========

For this MP, we have also included a more detailed grading harness to test your code. This will allow you to grade
your code before submitting to the autograder. To run the grading harness, execute the following from the command
line in the base directory of each verification assignment:

  .. code::

    $ make grade

The results of the grading run will appear in "sim/student_log.txt".
The multiplier run takes a while. Note that initially, if you have no
stimulus being driven in your testbench, the log will say
``[provided_dut] DUT passed verification``, even though there may be
bugs in RTL. This makes sense: until you drive in stimulus, there's no
errors reported, and hence the DUT passes. To get full credit, you
must **both** cover all coverages **and** have the DUT RTL passing.

For the cacheline adaptor, there is no extra grading script. make run will produce student_log.txt. An empty student_log for the cacheline adapter indicates a passing design.

Submission
==========

The 'main' branch of your repository is graded nightly. Ensure that any additional files you use
are ```include``'ed in each testbench. Nightly autograder runs submit results into the '_grade'
branch in your git repository.


Appendix A: DIV5 DFA
====================

Binary strings are defined recursively as either

- The empty string, denoted as 𝜀, or
- ``s0`` --- a binary string, ``s`` followed by the symbol '0', or
- ``s1`` --- a binary string, ``s`` followed by the symbol '1'.

We define the length of a binary string ``w``, notated as ``|w|`` as

- ``|w| = 0`` for ``w = 𝜀``
- ``|w| = 1 + |s|`` for ``w = s0`` or ``w = s1``.

To prove this DFA is correct, we will actually prove a stronger property: for any non-empty string,
``w``, the DFA will halt in state ``k`` where ``k = w mod 5`` where ``w`` is interpreted as a binary
number.

*Proof.* Let ``w`` be an arbitrary binary string. Assume, for every string ``x`` such that
``1 ≤ |x| < |w|`` that the DFA described above halts in state ``k`` where ``k = x mod 5``. There are
four cases to consider.

- Suppose ``w = 0``.  Then the DFA halts in state ``0 = 0 mod 5``.
- Suppose ``w = 1``.  Then the DFA halts in state ``1 = 1 mod 5``.
- Suppose ``w = x0`` for some binary string ``x``. Since ``|x| < |w|``, by the inductive assumption,
  the DFA is in state ``k = x mod 5``. Thus, after processing ``w = x0`` from left-to-right, the DFA
  is in state

  ::

    𝛿(k, 0) = (2k + 0) mod 5
            = (2(x mod 5)) mod 5
            = 2x mod 5
            = w mod 5.

  Thus the DFA halts in state ``w mod 5``.
- Suppose ``w = x1`` for some binary string ``x``. Since ``|x| < |w|``, by the inductive assumption,
  the DFA is in state ``k = x mod 5``. Thus, after processing ``w = x1`` from left-to-right, the DFA
  is in state

  ::

    𝛿(k, 0) = (2k + 1) mod 5
            = (2(x mod 5) + 1) mod 5
            = (2x + 1) mod 5
            = w mod 5.

  Thus the DFA halts in state ``w mod 5``.

Therefore the DFA halts in state ``w mod 5`` for any non-empty binary string ``w``.

*Q.E.D.*

The above proof combined with the facts that the DFA only accepts in state 0, and that the start
state is not accepting prove that the DFA accepts a binary string if and only if the binary number
represented by that string is divisible by five.
