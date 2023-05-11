;bir dizi tanimlayalim
;bu diziyi baska bir diziye  tersten kopyalayalim
;dizide dw yaptik 2 adres oldu
.model small ;kullanacagimiz segment sablonu
.data
    dizi1 dw 1,2,3,4 
    dizi2 dw 4dup(00) ;dizi2 icin 8 byte lik yer ayirdik ve 00 ile doldurduk.
.code
    mov ax,@data
    mov ds,ax 
    lea si,dizi1 
    lea bx,dizi2
    
    
    mov cx,0004;dongu sayaci  
    
tasi:   mov al,[si]   ;dizi1 den al ye 
        mov ah,[si+1]
        mov [bx],al
        mov [bx+1],ah 
        
        add si,2      
        add bx,2  
        loop tasi  
      
      
      
      
        mov ah,4ch
        int 21h
        end 
    