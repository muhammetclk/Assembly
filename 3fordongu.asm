;bir dizi tanimlayalim
;dizinin elemanlari toplamini bulalim.
;loop kullanarak yapalim.loop yani for dongude sayac olarak cx kullanmaliyiz.

.model small ;kullanacagimiz segment sablonu
.data
    dizi db 1,2,3,4 
    toplam db ?
.code
    mov ax,@data
    mov ds,ax ;ds point etsin data segment baslangicini 
    lea si,dizi ;load efektif adres si ya dizinin etkin adresini yukle DS:SI ds ve si nin icerigine bakarak diziye erisirim
   
    mov al,00
    mov cx,0004;dongu sayaci                                                              

topla:  add al,[si]  ;[si]-->dizi[0]                                                           
        inc si ;sonraki adrese(elemana) gecirir.[si] yapsaydik icini arttirirdi.
        
        loop topla  ;loop komutunu kullanicaksak donguyu azaltmaya gerek yok.fakat yukarda sayaci tavandan baslatmaliyiz.
                    ; loop komutu tavandan azaltiyor. 
                     
        mov toplam,al ;sonucu toplama al
    
        mov ah,4ch
        int 21h
        end 
    
  
  
  
  
 
  
   ;toplam dw olsaydi programi nasil degistirirdik odev?  