.model small 
.data
    toplam dw ?    ;dw yaparsak toplamda al kalirsa hata olur.16 bite 8 bit hatasi
.code
    mov ax,@data ;data segmentin baslangic adresini ax attik
    mov ds,ax;  ds-->data segment baslangici ds ye attik    
             ;mov ds,@data olmaz!!!segment kaydedicilerine direk adres yada veri atilmaz
    
    mov al,06H
    mov dl,08H
    add al,dl ;al=al+dl yapar toplama yapiyor.  
    mov ah,00
    mov toplam,ax ;(2.kisim) burda al yi ax yapicaz fakat ah yi 00 yapmaliyiz yoksa toplam farkli olur
           
    ;alttaki kodlari her zaman sonda yazmaliyiz.akisin tekrar isletim sistemine verilmesini saglar       
    mov ah,4ch
    int 21h     ;21 numarali kesmenin 4ch fonksiyonunu cagirdik.fonksiyon ah ye yuklenir.
    end
    
    
    
     ;veri blogu tasimasini sorar
     ;sifreli olarak veri blogu tasimasini sorar.
    
    
    
    
    
    
    
    