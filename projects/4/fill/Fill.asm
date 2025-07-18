// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

//// Replace this comment with your code.

(start)

@16384
D = A

@i
M = D

@24576
D = M
@keyin 
M = D

@keyin
D = M
@nocolor
D;JEQ


(loopcolor)

@-1
D = A
@i
A = M
M = D
@1
D = A
@i
M = M + D

@24575
D = A
@i 
D = D - M
@start
D;JEQ

@loopcolor
0;JMP










(nocolor)


@0
D = A
@i
A = M
M = D
@1
D = A
@i
M = M + D

@24575
D = A
@i 
D = D - M
@start
D;JEQ

@nocolor
0;JMP






























