%include "io.inc"
;a/b-c
;31 19 9

;8 бит



section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    ;write your code here
    mov al, 0x1F
    mov ah, 0x13
    div al
    mov bl, 0x9
    sub al, bl
    ret
   