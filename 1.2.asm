%include "io.inc"
;-20/-11-2
; 8 бит
; доп.код
section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    ;write your code here
    mov al, 0xEC
    mov ah, 0xF5
    xor ah, ah
    
    idiv al
    mov bl, 0x2
    sub al, bl
    ret
    