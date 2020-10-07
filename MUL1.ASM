.model small
.data
num1 db 21
num2 db 16
res dw ?

.code
mov ax,@data
mov ds,ax

mov al,num1
mul al,num2
mov res,al

mov ah,4ch
int 21h
end
