%include "io.inc"
; a/b-c
; 31 19 9
section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    ;write your code here
    fld dword [a]
    fld dword [b]
    fdiv 
    fld dword [c]
    fsub
    ret
    
    
    
    
;section.data
a: dd 0x41C57000
b: dd 0x41858000
c: dd 0x41008000