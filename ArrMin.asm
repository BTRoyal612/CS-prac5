// Finds the smallest element in the array of length R2 whose first element is at RAM[R1] and stores the result in R0.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
    @R2
    D=M
    @END
    D;JLE
    @N
    M=0
    @R1
    A=M
    D=M
    @R0
    M=D

(LOOP)
    @N
    MD=M+1
    @R2
    D=D-M
    @END
    D;JEQ
    @R1
    D=M
    @N
    A=D+M
    D=M
    @R0
    D=D-M
    @MIN
    D;JLT
(END)
    @END
    0;JMP

(MIN)
    @R1
    D=M
    @N
    A=D+M
    D=M
    @R0
    M=D
    @LOOP
    0;JMP