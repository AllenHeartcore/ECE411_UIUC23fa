# A Pipelined Implementation of the RV32I Processor
By the collaboration of [Ziyuan Chen](https://allenheartcore.github.io), [Hao Ren](https://moomoohorse.com), [Zhirong Chen](https://rong-hash.github.io) <br>
UIUC ECE411 FA23 | October 2023 ~ December 2023



## Running the Processor

Refer to the [release page](https://github.com/AllenHeartcore/ECE411_UIUC23fa/releases/tag/mp4_done) for details.

```
$ ./apply_cache_params.sh
$ make run_top_tb PROG=testcode/competition/coremark_rv32i.elf
$ make spike ELF=testcode/competition/coremark_rv32i.elf
$ diff sim/spike.log sim/golden_spike.log
$ cd synth
$ make synth
```



## Documentation

| | Design | Report |
| - | :-: | :-: |
| **CP0** - Design Checkpoint | [Design](doc/cp0_design.pdf) ||
| **CP1** - RV32I ISA, Basic Pipelining | [Design](doc/cp1_design.pdf) | [Report](doc/cp1_report.pptx) |
| **CP2** - Hazard Control, L1 Cache, <br> Forwarding, Static Branch Prediction | [Design](doc/cp1_roadmap.pptx) | [Report](doc/cp2_report.pptx) |
| **CP3** - Advanced Design Options | [Design](doc/cp3_roadmap.pptx) | [Report](doc/cp3_report.pdf) |
| **CP4** - Design Competition | | [Demo](doc/cp4_report.pptx) <br> [Report](doc/ece411fa23_mp4_report_team_crc.pdf) |



## Work Distribution

<table>
    <tr>
        <td rowspan="2"> <b>Checkpoint</b> </td>
        <td rowspan="2"> <b>Functionality</b> </td>
        <td rowspan="2"> <b>Branch</b> </td>
        <td colspan="3" align="center"> <b>Group Members</b> </td>
    </tr>
    <tr>
        <td align="center"> <b>Ziyuan Chen</b> </td>
        <td align="center"> <b>Hao Ren</b> </td>
        <td align="center"> <b>Zhirong Chen</b> </td>
    </tr>
    <tr>
        <td rowspan="3"> <b>CP1</b> <br> <code>cp1</code> </td>
        <td> Datapath </td>
        <td> <code>cp1_datapath</code> </td>
        <td align="center"> Implement </td>
        <td align="center"> </td>
        <td align="center"> Verify </td>
    </tr>
    <tr>
        <td> Control Word </td>
        <td> <code>cp1_control</code> </td>
        <td align="center"> </td>
        <td align="center"> Verify </td>
        <td align="center"> Implement </td>
    </tr>
    <tr>
        <td> Hazard Detection </td>
        <td> <code>cp2_hazard_ctrl_refactor</code> </td>
        <td align="center"> Verify </td>
        <td align="center"> Implement </td>
        <td align="center"> </td>
    </tr>
    <tr>
        <td rowspan="3"> <b>CP2</b> <br> <code>cp2_fwd_arbiter</code> </td>
        <td> Hazard Control </td>
        <td> <code>cp2_hazard_detection</code> </td>
        <td align="center"> </td>
        <td align="center"> Implement </td>
        <td align="center"> Verify </td>
    </tr>
    <tr>
        <td> Forwarding </td>
        <td> <code>cp2_fwd_arbiter</code> </td>
        <td align="center"> Implement </td>
        <td align="center"> </td>
        <td align="center"> Verify </td>
    </tr>
    <tr>
        <td> Arbiter </td>
        <td> <code>cp2_fwd_arbiter</code> </td>
        <td align="center"> Implement </td>
        <td align="center"> </td>
        <td align="center"> Verify </td>
    </tr>
    <tr>
        <td rowspan="3"> <b>CP3</b> <br> <code>cp3_integrated</code> <br> <br> <b>CP4</b> <br> <code>main_project</code> </td>
        <td> Multilevel Cache <br> Customizable Cache </td>
        <td> <code>cp3_multilv_cache</code> <br> <code>cp4_cache_fix</code> </td>
        <td align="center"> Implement <br> Verify </td>
        <td align="center"> </td>
        <td align="center"> </td>
    </tr>
    <tr>
        <td> Next-Line Prefetcher </td>
        <td> <code>cp3_prefetcher</code> </td>
        <td align="center"> </td>
        <td align="center"> Implement <br> Verify </td>
        <td align="center"> </td>
    </tr>
    <tr>
        <td> Global Branch Predictor <br> Local Branch Predictor <br> 4-Way Associated BTB </td>
        <td> <code>cp3_branch_predict</code> <br> <code>cp4_branch_predict</code> </td>
        <td align="center"> </td>
        <td align="center"> </td>
        <td align="center"> Implement <br> Verify </td>
    </tr>
</table>



## Academic Integrity

Please review the University of Illinois Student Code,
particularly all subsections of [Article 1, Part 4 - Academic Integrity Policy and Procedure](https://studentcode.illinois.edu/article1/part4/1-401).



## Legal Notice

This work is protected under the [GNU General Public License v3.0](https://www.gnu.org/licenses/gpl-3.0.en.html). <br>
**Copyright (c) 2023 Ziyuan Chen, Hao Ren, Zhirong Chen, Jian Huang**

    Permission to use, copy, modify, and distribute this software and its
    documentation for any purpose, without fee, and without written agreement
    is hereby granted, provided that the following two paragraphs appear
    in all copies of this software.

    IN NO EVENT SHALL THE AUTHOR OR THE UNIVERSITY OF ILLINOIS BE LIABLE TO
    ANY PARTY FOR DIRECT, INDIRECT, SPECIAL, INCIDENTAL, OR CONSEQUENTIAL
    DAMAGES ARISING OUT OF THE USE OF THIS SOFTWARE AND ITS DOCUMENTATION,
    EVEN IF THE AUTHOR AND/OR THE UNIVERSITY OF ILLINOIS HAS BEEN ADVISED
    OF THE POSSIBILITY OF SUCH DAMAGE.

    THE AUTHOR AND THE UNIVERSITY OF ILLINOIS SPECIFICALLY DISCLAIM ANY
    WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
    MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. THE SOFTWARE
    PROVIDED HEREUNDER IS ON AN "AS IS" BASIS, AND NEITHER THE AUTHOR NOR
    THE UNIVERSITY OF ILLINOIS HAS ANY OBLIGATION TO PROVIDE MAINTENANCE,
    SUPPORT, UPDATES, ENHANCEMENTS, OR MODIFICATIONS.

> The software programs described in the documents are confidential and proprietary
> products of Synopsys Corp. or its licensors. The terms and conditions governing
> the sale and licensing of Synopsys products are set forth in written agreements
> between Synopsys Corp. and its customers. No representation or other affirmation
> of fact contained in this publication shall be deemed to be a warranty or give rise
> to any liability of Synopsys Corp. whatsoever. Images of software programs in use
> are assumed to be copyright and may not be reproduced.

> The documents are for informational and instructional purposes only. The ECE 411 teaching
> staff reserves the right to make changes in specifications and other information contained
> in this publication without prior notice, and the reader should, in all cases, consult
> the teaching staff to determine whether any changes have been made.
