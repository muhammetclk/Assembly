;bir dizi tanimlayalim
;bu diziyi baska bir diziye  tersten kopyalayalim

.model small ;kullanacagimiz segment sablonu
.data
    dizi1 db 1,2,3,4 
    dizi2 db 4dup(00) ;dizi2 icin 4 byte lik yer ayirdik ve 00 ile doldurduk.
.code
    mov ax,@data
    mov ds,ax 
    lea si,dizi1 
    lea bx,dizi2
    
    
    mov cx,0004;dongu sayaci  
    
tasi:   mov al,[si+3]   ;dizi2 in sonundan alindi 
        mov [bx],al
        dec si      ;inc yerine dec yapicaz
        inc bx  
        loop tasi  
      
      
      
      
        mov ah,4ch
        int 21h
        end 
    
  
    
 
  