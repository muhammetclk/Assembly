;bl kaydedicisindeki 1 leri sayalim
;

.model small ;kullanacagimiz segment sablonu
.data  
.code 
    mov ax,@data
    mov ds,ax
    
    mov bl,00110011B      
    mov cx,0008
    mov dl,00 
    
say:    rcl bl,1 ;msb biti elde bayraginda cf
        jc art   ;elde varsa art gidelim (jc=jump carry) daha sonra kalinan yerin bir altina doneriz.akis bozulmasin 
don:     loop say 
         jmp cik
    
 art:
    inc dl ;1 leri dl de saymak icin   
    jmp don 
     
       
cik:    mov ah,4ch
        int 21h
        end
    