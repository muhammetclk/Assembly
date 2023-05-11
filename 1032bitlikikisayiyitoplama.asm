;32 bitlik 2 sayiyi toplayalim
;23451123H+56789900H+56789900H

.model small ;kullanacagimiz segment sablonu
.data  ;islemci icindeki registerlardan bu soruyu cozebliriz.oyuzden data segmente gerek yok.
  ;ana bellegi kullandaydik 32 bit icin ramde 4 yer gerekli oldugu icin
   ;her hucre 8 bitten 8x4 32 bit
.code
    mov ax,@data
    mov ds,ax      ;bu iki koda data segmenti kullanmicamiz icin gerek yok
    
    mov ax,00       
    mov ax,1123H
    mov bx,2345H       ;23451123H sayisi bx:ax ciftinde
    
    mov cx,9900H
    mov dx,5678H    
    
    
      ;once lsb ciftlerini toplariz (16 bitlik kisimleri)
    
    
    add ax,cx  ;elde olabilir. msb ye eklenir(msb dede fazlalik olabilir.)
    adc bx,dx ;(bx=bx+dx+C) adc kullandik. tasma kisimlarini dikkate aldik.
    
    
    
    mov ah,4ch
    int 21h
    end
    
    
    