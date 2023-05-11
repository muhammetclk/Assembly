
.model small 
.data  
    dizi1 db "bilgisayar" 
    dizi2 db 10dup(00) dizi2 icin 10 bytlik yer ayirdik
.code
    
    
    mov ax,@data       
    mov ds,ax   
    mov es,ax   ;data segmment ile exstra segment ayni adresten basliyor(segment bindirme) 
                ;bu olmazsa ayni yerde pes pese goremeyiz.  
                  
    lea si,dizi1  ; ds:si ile dizi1 e ulasiriz      
    lea di,dizi2   ;es;di ile point etmeliyiz
    
    
    
    
    mov cx,0010
    rep movsb   ;rep etiketi onune yazilani cx 0 yapana kadar tekrar eder loop ile ayni sey   
             ;si di arttirmamiza gerek yok movsb bunu otomatik yapiyor.
  
    
                                             
    
    mov ah,4ch
    int 21h
    end
    