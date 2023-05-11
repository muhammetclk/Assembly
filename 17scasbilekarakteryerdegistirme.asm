 ;bilgisyar daki i harfini herhangi bir karakterle degistirmek icin
.model small 
.data  
    dizi1 db "bilgisayar" 
    
.code
    
    
    mov ax,@data       
    mov ds,ax   
    mov es,ax   ;data segmment ile exstra segment ayni adresten basliyor(segment bindirme) 
            
    lea di,dizi1   ;es;di ile point etmeliyiz
    
    
    
    mov al,"i"
    mov cx,0010
yaz:    repne    scasb ;es:di =? i ile    repne ile ilk i yi bulup hemen cimasin sonuna kadar gitsin diye ekledik
        jne cik ;hic i yoksa cik 
        mov [di-1],"#"  ;otomatik olarak bir artigi icin onu geri alip yer degistirme yapicaz.
        inc di 
        loop yaz
                                                
cik:    mov ah,4ch
        int 21h
        
        end
    