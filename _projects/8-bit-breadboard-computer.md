---
name: 8-Bit Breadboard Computer
status: Complete
thumbnail_url: "/assets/images/8bit-side.jpg"
---

Yes, I built an 8-bit computer on breadboards. It closely follows Ben Eater's [original design](https://eater.net/8bit).

![img1](/assets/images/8bit-side.jpg)
![img2](/assets/images/8bit-top-down.jpg)

Go [here](/8-bit-computer-programs.html) to see a collection of programs for the computer.

## How it Works


Instruction Set

```
0000 NOP - No OPeration
0001 LDA - LoaD A register with contents of memory address
0010 ADD - ADD contents of given memory address to A
0011 SUB - SUBtract 
0100 STA - STore the value in the A register in a given memory address
0101 LDI - LoaD Immediate
0110 JMP - JuMP
0111 JC  - Jump on Carry
1000 JZ  - Jump on Zero
1001
1010
1011
1100
1101
1110 OUT - OUTput the value in the A register
1111 HLT - HaLT
```


Possible other instructions:

DSP - DiSPlay the contents of a given memory address
INC - INCrement A by the given 4 bit value (aka Add Immediate)
DEC - DECrement A by the given 4 bit value (aka Subtract Immediate)
JNC - Jump on Not Carry
JNZ - Jump on Not Zero




### Control Signals

- HLT - Halts the program
- MI - Memory address register in
- RI - RAM in
- RO - RAM out
- IO - Instruction Regsiter out
- II - Instruction Register in
- AI - A register in
- AO - A register out
- EO - Sum out (ALU out)
- SU - Subtract
- BI - B register in
- OI - Output in
- CE - Counter enable
- J  - Jump
- FI - Flags register in
