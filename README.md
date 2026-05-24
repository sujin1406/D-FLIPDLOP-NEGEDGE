# D-FLIPDLOP-NEGEDGE

**AIM:**

To implement  D flipflop using verilog and validating their functionality using their functional tables

**SOFTWARE REQUIRED:**

Quartus prime

**THEORY**

**D Flip-Flop**

D flip-flop operates with only positive clock transitions or negative clock transitions. Whereas, D latch operates with enable signal. That means, the output of D flip-flop is insensitive to the changes in the input, D except for active transition of the clock signal. The circuit diagram of D flip-flop is shown in the following figure.

![image](https://github.com/naavaneetha/D-FLIPDLOP-NEGEDGE/assets/154305477/48c81fe8-bc3f-40e7-95e2-519fc155ad51)

This circuit has single input D and two outputs Qtt & Qtt’. The operation of D flip-flop is similar to D Latch. But, this flip-flop affects the outputs only when positive transition of the clock signal is applied instead of active enable. The following table shows the state table of D flip-flop.

![image](https://github.com/naavaneetha/D-FLIPDLOP-NEGEDGE/assets/154305477/e5f3fda7-68ec-4a3a-a0a4-cf6f9cc4ab55)

Therefore, D flip-flop always Hold the information, which is available on data input, D of earlier positive transition of clock signal. From the above state table, we can directly write the next state equation as Qt+1t+1 = D

![image](https://github.com/naavaneetha/D-FLIPDLOP-NEGEDGE/assets/154305477/8592c0d8-2917-4142-91b9-d6c30dd891d2)

Next state of D flip-flop is always equal to data input, D for every positive transition of the clock signal. Hence, D flip-flops can be used in registers, shift registers and some of the counters.

**Procedure**

1. Open Quartus Prime software.

2. Create a new project using **New Project Wizard**.

3. Enter the project name, project location, and select the FPGA device.

4. Create a new Verilog HDL file using
   **File → New → Verilog HDL File**.

5. Write the Verilog program for the D Flip-Flop.

6. Save the file with the appropriate module name
   (Example: `DFF.v`).

7. Set the Verilog file as the **Top-Level Entity**.

8. Compile the design using
   **Processing → Start Compilation**.

9. Check whether the compilation is successful without errors.

10. Create a testbench file or waveform input file for simulation.

11. Apply different input values to **D** along with clock pulses.

12. Run the simulation and observe the outputs **Q** and **Qbar**.

13. Verify the output waveform using the D Flip-Flop truth table.

14. Observe the RTL schematic and timing diagram generated after simulation.

15. Conclude the experiment after verifying the correct operation of the D Flip-Flop.


**PROGRAM**

Developed by: Sujin M L

RegisterNumber: 212225040435

```
module D8(D, clk, Q, Qbar);

input D, clk;
output reg Q;
output Qbar;

assign Qbar = ~Q;

initial
begin
    Q = 0;
end

always @(posedge clk)
begin
    Q <= D;
end

endmodule
```


**RTL LOGIC FOR FLIPFLOPS**

<img width="1919" height="1076" alt="Screenshot 2026-05-24 153932" src="https://github.com/user-attachments/assets/49aef355-0f6f-4f44-990a-2ec7b89df852" />


**TIMING DIGRAMS FOR FLIP FLOPS**
<img width="1919" height="1079" alt="Screenshot 2026-05-24 154034" src="https://github.com/user-attachments/assets/368aaa92-57b9-4412-aad9-75389d831c68" />

**RESULTS**

Thus, the D Flip-Flop was successfully implemented using Verilog HDL and its functionality was verified using simulation results.
