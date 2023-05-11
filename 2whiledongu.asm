;bir dizi tanimlayalim
;dizinin elemanlari toplamini bulalim.

.model small ;kullanacagimiz segment sablonu
.data
    dizi db 1,2,3,4 
    toplam db ?
.code
    mov ax,@data
    mov ds,ax ;ds point etsin data segment baslangicini 
    lea si,dizi ;load efektif adres si ya dizinin etkin adresini yukle DS:SI ds ve si nin icerigine bakarak diziye erisirim
   
    mov al,00
    mov dl,04;dongu sayaci                                                              

topla:  add al,[si]  ;[si]-->dizi[0]                                                           
        inc si ;sonraki adrese(elemana) gecirir.[si] yapsaydik icini arttirirdi.
        dec dl ;sayaci azalt
        jnz topla   ;0 degilse toplaya git.
    
        mov toplam,al ;sonucu toplama al
    
        mov ah,4ch
        int 21h
        end 
    
  
  
  
  
 ;eger donguyu 0 dan baslatip eleman sayisi kadar gitseydik dec dl ile jnz topla arasina
 ;cmp dl,04 yazardik  bu arka tarafta cikarma yapar.4 den cikarir daha sonra 0 sa donguden cikarir 
  
   ;toplam dw olsaydi programi nasil degistirirdik odev?    