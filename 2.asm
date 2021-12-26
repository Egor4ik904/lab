%include "io.inc"

section .text
global CMAIN
CMAIN:
    ;write your code here
    
    LEA ESI,[a]
;извлекаем значение с индексом 0
    MOV AL,[ESI]
    MOV DL, 0x00
    AND AL,DL
    PRINT_UDEC 1,AL
    NEWLINE

;извлекаем значение с индексом 1
    MOV AL,[ESI + 1]
    MOV DL, 0x01
    AND AL,DL
    SHL AL,3
    MOV BL,AL
    MOV AL,[ESI]
    MOV DL, 0x01
    AND AL,DL
    SHR AL,5
    OR  BL,AL
    PRINT_UDEC 1,BL
    NEWLINE

;извлекаем значение с индексом 2
    MOV AL,[ESI + 1]
    MOV DL, 0x02
    AND AL,DL
    SHR AL,2
    PRINT_UDEC 1,AL
    NEWLINE
    
;извлекаем значение с индексом 3
    MOV AL,[ESI + 2]
    MOV DL, 0x03
    AND AL,DL
    SHL AL,1
    MOV BL,AL
    MOV AL,[ESI + 1]
    MOV DL, 0x03
    AND AL,DL
    SHR AL,7
    OR  BL,AL
    PRINT_UDEC 1,BL
    NEWLINE
    
;извлекаем значение с индексом 4
    MOV AL,[ESI + 3]
    MOV DL, 0x04
    AND AL,DL
    SHL AL,4
    MOV BL,AL
    MOV AL,[ESI + 2]
    MOV DL, 0x04
    AND AL,DL
    SHR AL,4
    OR  BL,AL
    PRINT_UDEC 1,BL
    NEWLINE
    
;извлекаем значение с индексом 5
    MOV AL,[ESI + 3]
    MOV DL, 0x05
    AND AL,DL
    SHR AL,1
    PRINT_UDEC 1,AL
    NEWLINE

;извлекаем значение с индексом 6
    MOV AL,[ESI + 4]
    MOV DL, 0x06
    AND AL,DL
    MOV BL,AL
    MOV AL,[ESI + 3]
    MOV DL, 0x06
    AND AL,DL
    SHR AL,4
    OR  BL,AL
    PRINT_UDEC 1,BL
    NEWLINE
    
;извлекаем значение с индексом 7
    MOV AL,[ESI + 4]
    MOV DL, 0x07
    AND AL,DL
    SHR AL,3
    PRINT_UDEC 1,AL
    NEWLINE
    
    ret
    
section .data
;packed array [0, 1, 2, 3, 4, 5, 6, 7]
a: DB 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07
