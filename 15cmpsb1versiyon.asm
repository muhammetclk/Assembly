
.model small 
.data  
    dizi1 db "bilgisayar" 
    dizi2 db "bilgisayar"
.code
    
    
    mov ax,@data       
    mov ds,ax   
    mov es,ax   ;data segmment ile exstra segment ayni adresten basliyor(segment bindirme) 
    
    lea si,dizi1  ; ds:si ile dizi1 e ulasiriz      
    lea di,dizi2   ;es;di ile point etmeliyiz
    mov bx,1111H
    
    
    
    mov cx,0010
repe    cmpsb ;ds:si==es:di  diziler esitse bx=1 degilse bx=0 olsun
              ;esitsizligi buldugu an durdur
              
        jne esdegil 
        jmp cik     
 
esdegil: mov bx,0000H                                                
 cik:   mov ah,4ch
    int 21h
    
    end
    