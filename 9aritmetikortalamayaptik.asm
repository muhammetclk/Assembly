;bir dizi tanimlayalim
;aritmetik ortalamasini bulalim

.model small ;kullanacagimiz segment sablonu
.data
    dizi1 db 1,2,3,6  
    sonuc db ?
.code
    mov ax,@data
    mov ds,ax 
    lea si,dizi1  ;dizinin adresini ds:di ciftinden okucaz.
            
    ;ax/...byte-->ah =kalan, al=bolum  bolunen ax de varsaydik.
    ;dx:ax/...word--> dx=kalan, ax=bolum bolunen sayi word ise yani 16 bit ise

    mov ax,00
    mov cx,0004 
        
topla:  add al,[si]  ;al=al+[si]
        inc si  
        loop topla 
        mov dl,04 
        div dl ;ax/dl yapar ah=kalan al=bolum , div de veri tanimli adresleme yapamiyoruz
                ;bolen sayi byte uzunlugunda oldugu icin div ax i goruyor.
       
         mov sonuc,al
       
        mov ah,4ch
        int 21h
        end 
    