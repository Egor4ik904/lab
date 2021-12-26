%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    ;write your code here
    xor eax, eax
    mov dl,0
    lea bp,[array] ;Загружаем адрес массива
    xor bl,bl ;Обнуляем счётчик элементов
    mov cx,4;Устанавливаем значение счётчика цикла
    next:
    mov al, [array] ;Загружаем очередной элемент
    cmp al,dl ;Сравниваем элемент с пороговым значением
    jg skip ;Пропускаем элемент, если значение не подходит
    inc bl ;Увеличиваем счётчик элементов
    skip:
    inc bp ;Перемещаем указатель на следующий элемент
    loop next ;Переходим к следующей итерации
    ret
    
    
    array:
    dd 0
    dd 0
    dd 1
    dd 2