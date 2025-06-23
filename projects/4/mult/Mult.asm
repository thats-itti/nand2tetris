// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// The algorithm is based on repetitive addition.
//// Replace this comment with your code.

@R1
D = M
@n
M = D

@0
D = 0
@R2
M = D

@R0
D = M
@zero
D;JEQ
@R1
D = M
@zero
D;JEQ


@R0
D = M -1
@oneR1
D;JEQ

@R1
D = M -1
@oneR2
D;JEQ

@loop
0;JMP


(oneR1)
@R1
D = M
@R2
M = D
@exit
0;JMP


(zero)
@0
D = A
@R2
M = 0
@exit
0;JMP


(oneR2)
@R0
D = M
@R2
M = D
@exit
0;JMP





(loop)
@R0
D = M
@R2
M = M + D
@n
M = M -1
D = M
@loop
D;JNE
(exit)

