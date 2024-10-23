# Programs

Here are some programs for the SAP-1 using the original instruction set from Ben Eater. For programs using additional instructions, see [this page](/programs-ii.html).

## Multiply

Multiplies x by y and outputs the product. Does not handle overflow. Must reset 13 and 14 between executions.

Source: Ben Eater's [video](https://youtu.be/Zg1NdPKoosU?t=2375)

```
LDA 14
SUB 12
JC  6
LDA 13
OUT
HLT
STA 14
LDA 13
ADD 15
STA 13
JMP 0
-
1
product
x
y
```


## Division

Divides x by y and outputs the quotient. Must reset 13 and 14 between executions. Infinite loop if dividing by 0.

```
LDA 14
SUB 15
JC  6
LDA 13
OUT
HLT
STA 14
LDA 13
ADD 12
STA 13
JMP 0
-
1
0
x
y
```


## Add / Subtract loop

A simple program to test conditional jumps. Increments by `x` until carry, then decrements by `x` until 0. Repeat.

```
LDI 0
ADD 15
JC  5
OUT
JMP 1
SUB 15
JZ  1
OUT
JMP 5
-
-
-
-
-
-
x
```


## Fibonacci

Fibonacci sequence algorithm. Loops after it overflows.

```
LDI 1
STA 14
LDI 0
STA 15
OUT
LDA 14
ADD 15
JC  0
STA 14
OUT
LDA 15
ADD 14
JC  0
JMP 3
x
y
```


# 4 20 69

Simple program that outputs 4 then 20 then 69. Something to keep the kids entertained.

```
LDI 4
OUT
ADD 14
OUT
ADD 15
OUT
JMP 0
-
-
-
-
-
-
-
16
49
```
