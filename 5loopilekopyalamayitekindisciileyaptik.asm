;bir dizi tanimlayalim
;bu diziyi baska bir diziye kopyalayalim

.model small ;kullanacagimiz segment sablonu
.data
    dizi1 db 1,2,3,4 
    dizi2 db 4dup(00) ;dizi2 icin 4 byte lik yer ayirdik ve 00 ile doldurduk.
.code
    mov ax,@data
    mov ds,ax ;ds point etsin data segment baslangicini 
    lea si,dizi1 ;load efektif adres si ya dizinin etkin adresini yukle DS:SI ds ve si nin icerigine bakarak diziye erisirim
    
    
    
    mov cx,0004;dongu sayaci  
    ;mov [bx],[si] bu kod hatali cunku bir bellek alanindan baska bir bellek alanina aktarim yapilamiyor.                                                             

tasi:   mov al,[si]    ;o yuzden once genel amacliyla tampon yapiyoruz.
        mov [si+4],al  ;dizi2 dizi1 den +4 offset daha uzaklikta oldugu oraya atama yapiyoruz. 
        inc si   ;dizi1 in sonraki elemani
        
        loop tasi  
      
      
      
      
        mov ah,4ch
        int 21h
        end 
    
  
    ;bu isi tek indisci kullanarak nasil yapariz.yani bx olmadan ?yaptik.
  