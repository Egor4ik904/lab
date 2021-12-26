%include "io.inc"
;x-длина первого числового отрезка
;y-длина второго числового отрезка
;z-длина третьего числового отрезка
;section.data
a: dd 0x00000001
b: dd 0x00000002
c: dd 0x00000003
section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    ;write your code here
    xor eax, eax
    mov ax, [a] ; загружаем в регистр ax переменную a
    mov bx, [b] ; загружаем в регистр bx переменную b
    cmp ax, bx ; сравниваем a с b
    jg Obhod1 ; если a>b то переход на Obhod1
    ; иначе в ax где будем максимум грузим BX
    mov ax, bx

    Obhod1:
    mov bx, [c] ; загружаем в регистр bx переменную c
    cmp ax, bx ; сравниваем с c
    jg Obhod2 ; если > то переход на Obhod2
    ; иначе в ax где будем максимум грузим BX
    mov ax, bx

    Obhod2:
    ; теперь в ax максимум из 3 переменных в памяти: a, b, c
    ret