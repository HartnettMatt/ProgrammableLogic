        .text
        .global _start
_start:
        LDR R4, =N
        ADD R5, R4, #4      // R5 points to the decimal digits storage location
        LDR R4, [R4]        // R4 holds N
        MOV R0, R4          // parameter for DIVIDE goes in R0
        MOV R1, #1000       // divisor parameter for DIVIDE goes in R1
        BL DIVIDE
        STRB R1, [R5, #3]   // Thousands digit is in R1
        
        MOV R1, #100        // divisor parameter for DIVIDE goes in R1
        BL DIVIDE
        STRB R1, [R5, #2]   // Hundreds digit is in R1
        
        MOV R1, #10         // divisor parameter for DIVIDE goes in R1
        BL DIVIDE
        STRB R1, [R5, #1]   // Tens digit is in R1
        STRB R0, [R5]       // Ones digit is in R0
END:    B END
/* Subroutine to perform the integer division R0 / 10.
* Returns: quotient in R1, and remainder in R0
*/
DIVIDE: MOV R2, #0
CONT:   CMP R0, R1
        BLT DIV_END
        SUB R0, R1
        ADD R2, #1
        B CONT
DIV_END: MOV R1, R2         // return quotient in R1 (remainder is in R0)
        BX LR
N:      .word 9876            // the decimal number to be converted
Digits: .space 4            // storage space for the decimal digits
        .end