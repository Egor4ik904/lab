%include "io.inc"
;a/b-c
;-20 -11 2
section .text
global CMAIN
CMAIN:
    ;write your code here
    xor eax, eax
    fld dword [a]
    fld dword [b]
    fdiv 
    fld dword [c]
    fsub
    ret
    
    
    
section.data
a: dd 0xC1B20000
b: dd 0xC1058000
c: dd 0x40000000