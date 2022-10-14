

; Felipe Andrade

; codigo que ler um vetor de 10 numeros inteiros
; armazenado na memoria e calcula a soma e a media dos valores.

org 100h

jmp start

vetor db 1, 2, 5 ,3, 5, 6, 4, 8, 9, 7  ; Declaracao dos valores do Vetor
num db 2

start:

lea si, vetor       ; offset do vetor 

mov cx, 10          ; Tamanho do Vetor

sum:                ; Funcao somatorio do vetor
    mov al, [si]
    add al, dl      ; Somatorio de Vetor
    mov dl, al      ; DL recebe o resultado do somatorio do vetor
   
    inc si
   
    loop sum        ; Loop que chama a funcao "sum" ate que todos os elementos do vetor seja percorrido
    
mov bl, dl          ; Move o Conteudo de DL para BL
idiv num            ; num = bl/num
mov bl, al          ; move o resultado da media para BL

ret
