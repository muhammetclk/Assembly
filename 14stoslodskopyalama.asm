
.model small 
.data  
    dizi1 db "bilgisayar" 
    dizi2 db 10dup(00) dizi2 icin 10 bytlik yer ayirdik
.code
    
    
    mov ax,@data       
    mov ds,ax   
    mov es,ax   ;data segmment ile exstra segment ayni adresten basliyor(segment bindirme) 
    
    lea si,dizi1  ; ds:si ile dizi1 e ulasiriz      
    lea di,dizi2   ;es;di ile point etmeliyiz
    
    
    
    
    mov cx,0010
copy:   lodsb   al<--ds:si      ;tek satir olmadigi icin rep alamyiz.
        stosb   es:di<--al
        loop copy
                                             
    
    mov ah,4ch
    int 21h
    end
    