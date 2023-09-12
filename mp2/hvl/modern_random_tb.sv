//-----------------------------------------------------------------------------
// Title         : modern_random_tb
// Project       : ECE 411 MP2
//-----------------------------------------------------------------------------
// File          : modern_random_tb.sv
// Author        : ECE 411 Course Staff
//-----------------------------------------------------------------------------
// Description :
// This is a modern alternative to the random testbench in random_tb.sv.
// It is recommended over random_tb since constraints here are easier to write,
// and you'll have access to coverage reports to see what you're testing.
// We recommend using random generation to test all non-load/store instructions.
// Grep this file for `Your code here` for more tips.

// IMPORTANT: If you don't change the random seed, every time you do a `make run`
// you will run the /same/ random test. SystemVerilog calls this "random stability",
// and it's to ensure you can reproduce errors as you try to fix the DUT. Make sure
// to change the random seed or run more instructions if you want more extensive
// coverage.

// Doing load/store will require you to implement a memory model, which can
// be challenging since you will have to meet the "naturally aligned" requirement
// while randomly generating load/store targets, since your processor likely
// doesn't support misaligned access.
//------------------------------------------------------------------------------
module modern_random_tb
import rv32i_types::*;
(
    tb_itf.tb itf,
    tb_itf.mem mem_itf
);

  // You'll need this type to randomly generate variants of certain instructions.
  typedef enum bit [6:0] {
    base    = 7'b0000000,
    variant = 7'b0100000
  } funct7_t;

  // This class will generate random instructions for your core to run.
  // To ensure they're actually valid RISC-V instructions, you will write
  // constraints for the randomization solver.
  class RandInst;
    // You will increment this number as you generate more random instruction
    // types.
    localparam NUM_TYPES = 5;

    // Various ways RISC-V instruction words can be interpreted.
    typedef union packed {
      bit [31:0] word;

      struct packed {
        bit [11:0] i_imm;
        bit [4:0] rs1;
        bit [2:0] funct3;
        bit [4:0] rd;
        rv32i_opcode opcode;
      } i_type;

      struct packed {
        bit [6:0] funct7;
        bit [4:0] rs2;
        bit [4:0] rs1;
        bit [2:0] funct3;
        bit [4:0] rd;
        rv32i_opcode opcode;
      } r_type;

      struct packed {
        bit [11:5] imm_s_top;
        bit [4:0]  rs2;
        bit [4:0]  rs1;
        bit [2:0]  funct3;
        bit [4:0]  imm_s_bot;
        rv32i_opcode opcode;
      } s_type;

      /* Your code here:
      struct packed {
       // Fill this out to get branches running!
      } b_type;
      */

      struct packed {
        bit [31:12] imm;
        bit [4:0]  rd;
        rv32i_opcode opcode;
      } j_type;

    } instr_t;

    rand instr_t instr;
    rand bit [NUM_TYPES-1:0] instr_type;

    // Pick one of the instruction types.
    constraint instr_type_c {
      $countones(instr_type) == 1; // Ensures one-hot.
    }

    // Constraints for actually generating instructions, given the type.
    constraint instr_c {
      // Reg-imm instructions
      instr_type[0] -> {
        instr.i_type.opcode == op_imm;

        // Why do we need these constraints? Hint: see Chapter 19 of the
        // RISC-V spec, and think about why we can't shift a lot.
        instr.r_type.funct3 == sr -> {
          instr.r_type.funct7 inside {base, variant};
        }
        instr.r_type.funct3 == sll -> {
          instr.r_type.funct7 == base;
        }
      }

      // Store instructions
      instr_type[1] -> {
        instr.s_type.opcode == op_store;
        instr.s_type.funct3 inside {sw, sb, sh};
      }

      // JAL
      instr_type[2] -> {
        instr.j_type.opcode == op_jal;
        instr.j_type.imm[21] == '0; // Why are we doing this?
      }

      // AUIPC
      instr_type[3] -> {
        instr.j_type.opcode == op_auipc;
      }

      // LUI
      instr_type[4] -> {
        instr.j_type.opcode == op_lui;
      }

      // Your code here, add more instruction types.
      // Reg-reg instructions
      /*
      instr_type[5] -> {
        instr.r_type.opcode == op_reg;
        // ... other constraints.
      }
      */

      // Branch instructions
      /*
      instr_type[6] -> {
        instr.b_type.opcode == // ...
      }
      */

      // Add more instruction types. You should have NUM_TYPES == 9
      // for full coverage, excluding op_csr which you don't implement.
    }

    // Get coverage for the random test generation we're doing. Note that
    // you should extend this to have `illegal_bins` to be able to get
    // to 100% coverage, since our cross coverage is the entire cross
    // product. It also doesn't disable for instructions that don't
    // have a funct3 field at all -- you should fix this.
    covergroup instr_cg with function sample(instr_t instr);
      opcodes : coverpoint instr.i_type.opcode;
      funct3_cross : cross instr.i_type.opcode, instr.i_type.funct3;
      // Your code here, add better/more coverage.
    endgroup : instr_cg

    // Constructor, make sure we construct the covergroup.
    function new();
      instr_cg = new();
    endfunction : new

    // Whenever randomize() is called, sample the covergroup. This assumes
    // that every time you generate a random instruction, you send it into
    // the CPU.
    function void post_randomize();
      instr_cg.sample(this.instr);
    endfunction : post_randomize

    // A nice part of writing constraints is that we get constraint checking
    // for free -- this function will check if a bit vector is a valid RISC-V
    // instruction (assuming you have written all the relevant constraints).
    function bit verify_valid_instr();
      bit valid = 0;
      for (int i = 0; i < NUM_TYPES; ++i) begin
        this.instr_type = 1 << i;
        if (this.randomize(null)) begin
          valid = 1;
          break;
        end
      end
      return valid;
    endfunction : verify_valid_instr
  endclass : RandInst

  RandInst gen = new();

  // Do a bunch of LUIs to get useful register state.
  task init_register_state();
    for (int i = 0; i < 32; ++i) begin
      @(mem_itf.mcb iff mem_itf.mcb.read);
      gen.randomize() with {
        instr.j_type.opcode == op_lui;
        instr.j_type.rd == i;
      };

      // Your code here: package these memory interactions into a task.
      mem_itf.mcb.rdata <= gen.instr.word;
      mem_itf.mcb.resp <= 1'b1;
      @(mem_itf.mcb) mem_itf.mcb.resp <= 1'b0;
    end
  endtask : init_register_state

  // Feed a random instruction every time the processor does a read from
  // memory. Note that if you want random load/store, you will have to
  // ensure that loads to the IR return a valid instruction.
  task run_random_instrs();
    fork
      // Your code here for load/store memory model.
      begin : reads
        repeat (3000) begin
          // In the case of a instruction read, attempt to return the
          // existing value, else return a new, valid instruction.
          // Note that for loads, you'll have to change this logic.
          @(mem_itf.mcb iff mem_itf.mcb.read);

          // For now, don't generate loads and stores since we don't have a
          // memory model.
          // Your code here: get rid of the inline constraint if you're
          // implementing loads/stores.
          gen.randomize() with {
            !(instr.j_type.opcode inside {op_load, op_store});
          };

          mem_itf.mcb.rdata <= gen.instr.word;
          mem_itf.mcb.resp <= 1'b1;
          @(mem_itf.mcb) mem_itf.mcb.resp <= 1'b0;
        end
      end : reads
      begin : writes
        /* Your code here for dealing with stores. */
      end : writes
    join
  endtask : run_random_instrs

  // A single initial block ensures random stability.
  initial begin
    // Wait for reset.
    @(posedge itf.clk iff itf.rst == 1'b0);

    // Get some useful state into the processor by loading in a bunch of state.
    init_register_state();

    // Run!
    run_random_instrs();
  end

endmodule : modern_random_tb
