# Programs


## Multiply

Multiplies x by y and outputs the product. Does not handle overflow.

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
Must reset 13 and 14 between executions.

Source: Ben Eater's [video](https://youtu.be/Zg1NdPKoosU?t=2375)


## Division

Divides x by y and outputs the quotient. Infinite loop if dividing by 0.

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

A simple program to test conditional jumps. Increments by 1 until carry, then decrements by 1 until 0. Repeat.

```
LDA 15
ADD 14
OUT
JC  5
JMP 1
SUB 14
OUT
JZ  1
JMP 5
-
-
-
-
-
1
0
```


## Fibonacci

Looping version:

```
LDI 1
STA 14
LDI 0
STA 15
OUT
LDA 14
ADD 15
STA 14
OUT
LDA 15
ADD 14
JC  0
JMP 3
-
x
y
```

Non-looping version:

```
LDI 1
STA 14
LDI 0
STA 15
OUT
LDA 14
ADD 15
STA 14
OUT
LDA 15
ADD 14
JC  13
JMP 3
HLT
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
