%include "io.inc"

section .text
global CMAIN
CMAIN:
    ;write your code here
    xor eax, eax
    LEA EBX, [a]
    MOV ECX, 8
next:
    PUSH EBX
    PUSH ECX
    MOV DL, [EBX]
    MOV EDI, EBX
next1:
    MOV AL, [EBX]
    CMP AL, DL
    JNL skip
    MOV DL, AL
    MOV EDI, EBX
skip:
    INC EBX
    LOOP next1
    POP ECX
    POP EBX
    MOV AL, [EBX]
    MOV [EDI], AL
    MOV [EBX], DL
    INC EBX
    LOOP next
    ret
    section .data
    a: DB 4, 7, 1, 3, 2, 0, 6, 5
