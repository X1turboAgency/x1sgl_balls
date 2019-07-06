; データテーブル
ball2_p0_c2:
  db  0fch  ; Pivot(x) -4
  db  0f8h  ; Pivot(y) -8
  db  8  ; データ数
  dw  ball2_p0_c2_0  ; 0
  dw  ball2_p0_c2_1  ; 1
  dw  ball2_p0_c2_2  ; 2
  dw  ball2_p0_c2_3  ; 3
  dw  ball2_p0_c2_4  ; 4
  dw  ball2_p0_c2_5  ; 5
  dw  ball2_p0_c2_6  ; 6
  dw  ball2_p0_c2_7  ; 7

ball2_p0_c2_0:
; Xoffset: 0
; Mask: [B R]
; OutSizeX: 16 OutSizeY: 16
; DataOrder: Vertical

  db 183  ; clipy(byte) 200-sizey-1
  db 008h  ; DrawType (Plane: BR SizeY: 16)
  db 39  ; clipx(right) 40-sizex+1
  db 63  ; clipx(left) 64-sizex+1
  db 2  ; sizex(byte)
  db 48  ; sizey(pitch)

; 0(x)
  db 0f8h, 007h, 000h
  db 0e0h, 01fh, 000h
  db 0c0h, 03fh, 003h
  db 080h, 07fh, 00fh
  db 080h, 07fh, 01fh
  db 000h, 0ffh, 01fh
  db 000h, 0ffh, 03fh
  db 000h, 0ffh, 03fh
  db 000h, 0c0h, 03fh
  db 000h, 0c0h, 03fh
  db 000h, 0e0h, 01fh
  db 080h, 060h, 01fh
  db 080h, 070h, 00fh
  db 0c0h, 03ch, 003h
  db 0e0h, 01fh, 000h
  db 0f8h, 007h, 000h
; 1(x)
  db 01fh, 0e0h, 000h
  db 007h, 0f8h, 000h
  db 003h, 03ch, 0c0h
  db 001h, 00eh, 0f0h
  db 001h, 006h, 0f8h
  db 000h, 007h, 0f8h
  db 000h, 003h, 0fch
  db 000h, 003h, 0fch
  db 000h, 0ffh, 0fch
  db 000h, 0ffh, 0fch
  db 000h, 0ffh, 0f8h
  db 001h, 0feh, 0f8h
  db 001h, 0feh, 0f0h
  db 003h, 0fch, 0c0h
  db 007h, 0f8h, 000h
  db 01fh, 0e0h, 000h

ball2_p0_c2_1:
; Xoffset: 1
; Mask: [B R]
; OutSizeX: 24 OutSizeY: 16
; DataOrder: Vertical

  db 183  ; clipy(byte) 200-sizey-1
  db 008h  ; DrawType (Plane: BR SizeY: 16)
  db 38  ; clipx(right) 40-sizex+1
  db 62  ; clipx(left) 64-sizex+1
  db 3  ; sizex(byte)
  db 48  ; sizey(pitch)

; 0(x)
  db 0fch, 003h, 000h
  db 0f0h, 00fh, 000h
  db 0e0h, 01fh, 001h
  db 0c0h, 03fh, 007h
  db 0c0h, 03fh, 00fh
  db 080h, 07fh, 00fh
  db 080h, 07fh, 01fh
  db 080h, 07fh, 01fh
  db 080h, 060h, 01fh
  db 080h, 060h, 01fh
  db 080h, 070h, 00fh
  db 0c0h, 030h, 00fh
  db 0c0h, 038h, 007h
  db 0e0h, 01eh, 001h
  db 0f0h, 00fh, 000h
  db 0fch, 003h, 000h
; 1(x)
  db 00fh, 0f0h, 000h
  db 003h, 0fch, 000h
  db 001h, 09eh, 0e0h
  db 000h, 087h, 0f8h
  db 000h, 083h, 0fch
  db 000h, 083h, 0fch
  db 000h, 081h, 0feh
  db 000h, 081h, 0feh
  db 000h, 07fh, 0feh
  db 000h, 07fh, 0feh
  db 000h, 07fh, 0fch
  db 000h, 07fh, 0fch
  db 000h, 07fh, 0f8h
  db 001h, 07eh, 0e0h
  db 003h, 0fch, 000h
  db 00fh, 0f0h, 000h
; 2(x)
  db 0ffh, 000h, 000h
  db 0ffh, 000h, 000h
  db 0ffh, 000h, 000h
  db 0ffh, 000h, 000h
  db 0ffh, 000h, 000h
  db 07fh, 080h, 000h
  db 07fh, 080h, 000h
  db 07fh, 080h, 000h
  db 07fh, 080h, 000h
  db 07fh, 080h, 000h
  db 07fh, 080h, 000h
  db 0ffh, 000h, 000h
  db 0ffh, 000h, 000h
  db 0ffh, 000h, 000h
  db 0ffh, 000h, 000h
  db 0ffh, 000h, 000h

ball2_p0_c2_2:
; Xoffset: 2
; Mask: [B R]
; OutSizeX: 24 OutSizeY: 16
; DataOrder: Vertical

  db 183  ; clipy(byte) 200-sizey-1
  db 008h  ; DrawType (Plane: BR SizeY: 16)
  db 38  ; clipx(right) 40-sizex+1
  db 62  ; clipx(left) 64-sizex+1
  db 3  ; sizex(byte)
  db 48  ; sizey(pitch)

; 0(x)
  db 0feh, 001h, 000h
  db 0f8h, 007h, 000h
  db 0f0h, 00fh, 000h
  db 0e0h, 01fh, 003h
  db 0e0h, 01fh, 007h
  db 0c0h, 03fh, 007h
  db 0c0h, 03fh, 00fh
  db 0c0h, 03fh, 00fh
  db 0c0h, 030h, 00fh
  db 0c0h, 030h, 00fh
  db 0c0h, 038h, 007h
  db 0e0h, 018h, 007h
  db 0e0h, 01ch, 003h
  db 0f0h, 00fh, 000h
  db 0f8h, 007h, 000h
  db 0feh, 001h, 000h
; 1(x)
  db 007h, 0f8h, 000h
  db 001h, 0feh, 000h
  db 000h, 0cfh, 0f0h
  db 000h, 0c3h, 0fch
  db 000h, 0c1h, 0feh
  db 000h, 0c1h, 0feh
  db 000h, 0c0h, 0ffh
  db 000h, 0c0h, 0ffh
  db 000h, 03fh, 0ffh
  db 000h, 03fh, 0ffh
  db 000h, 03fh, 0feh
  db 000h, 03fh, 0feh
  db 000h, 03fh, 0fch
  db 000h, 03fh, 0f0h
  db 001h, 0feh, 000h
  db 007h, 0f8h, 000h
; 2(x)
  db 0ffh, 000h, 000h
  db 0ffh, 000h, 000h
  db 0ffh, 000h, 000h
  db 07fh, 080h, 000h
  db 07fh, 080h, 000h
  db 03fh, 0c0h, 000h
  db 03fh, 0c0h, 000h
  db 03fh, 0c0h, 000h
  db 03fh, 0c0h, 000h
  db 03fh, 0c0h, 000h
  db 03fh, 0c0h, 000h
  db 07fh, 080h, 000h
  db 07fh, 080h, 000h
  db 0ffh, 000h, 000h
  db 0ffh, 000h, 000h
  db 0ffh, 000h, 000h

ball2_p0_c2_3:
; Xoffset: 3
; Mask: [B R]
; OutSizeX: 24 OutSizeY: 16
; DataOrder: Vertical

  db 183  ; clipy(byte) 200-sizey-1
  db 008h  ; DrawType (Plane: BR SizeY: 16)
  db 38  ; clipx(right) 40-sizex+1
  db 62  ; clipx(left) 64-sizex+1
  db 3  ; sizex(byte)
  db 48  ; sizey(pitch)

; 0(x)
  db 0ffh, 000h, 000h
  db 0fch, 003h, 000h
  db 0f8h, 007h, 000h
  db 0f0h, 00fh, 001h
  db 0f0h, 00fh, 003h
  db 0e0h, 01fh, 003h
  db 0e0h, 01fh, 007h
  db 0e0h, 01fh, 007h
  db 0e0h, 018h, 007h
  db 0e0h, 018h, 007h
  db 0e0h, 01ch, 003h
  db 0f0h, 00ch, 003h
  db 0f0h, 00eh, 001h
  db 0f8h, 007h, 000h
  db 0fch, 003h, 000h
  db 0ffh, 000h, 000h
; 1(x)
  db 003h, 0fch, 000h
  db 000h, 0ffh, 000h
  db 000h, 0e7h, 078h
  db 000h, 0e1h, 0feh
  db 000h, 0e0h, 0ffh
  db 000h, 0e0h, 0ffh
  db 000h, 0e0h, 0ffh
  db 000h, 0e0h, 0ffh
  db 000h, 01fh, 0ffh
  db 000h, 01fh, 0ffh
  db 000h, 01fh, 0ffh
  db 000h, 01fh, 0ffh
  db 000h, 01fh, 0feh
  db 000h, 09fh, 078h
  db 000h, 0ffh, 000h
  db 003h, 0fch, 000h
; 2(x)
  db 0ffh, 000h, 000h
  db 0ffh, 000h, 000h
  db 07fh, 080h, 000h
  db 03fh, 0c0h, 000h
  db 03fh, 0c0h, 000h
  db 01fh, 0e0h, 000h
  db 01fh, 060h, 080h
  db 01fh, 060h, 080h
  db 01fh, 0e0h, 080h
  db 01fh, 0e0h, 080h
  db 01fh, 0e0h, 000h
  db 03fh, 0c0h, 000h
  db 03fh, 0c0h, 000h
  db 07fh, 080h, 000h
  db 0ffh, 000h, 000h
  db 0ffh, 000h, 000h

ball2_p0_c2_4:
; Xoffset: 4
; Mask: [B R]
; OutSizeX: 24 OutSizeY: 16
; DataOrder: Vertical

  db 183  ; clipy(byte) 200-sizey-1
  db 008h  ; DrawType (Plane: BR SizeY: 16)
  db 38  ; clipx(right) 40-sizex+1
  db 62  ; clipx(left) 64-sizex+1
  db 3  ; sizex(byte)
  db 48  ; sizey(pitch)

; 0(x)
  db 0ffh, 000h, 000h
  db 0feh, 001h, 000h
  db 0fch, 003h, 000h
  db 0f8h, 007h, 000h
  db 0f8h, 007h, 001h
  db 0f0h, 00fh, 001h
  db 0f0h, 00fh, 003h
  db 0f0h, 00fh, 003h
  db 0f0h, 00ch, 003h
  db 0f0h, 00ch, 003h
  db 0f0h, 00eh, 001h
  db 0f8h, 006h, 001h
  db 0f8h, 007h, 000h
  db 0fch, 003h, 000h
  db 0feh, 001h, 000h
  db 0ffh, 000h, 000h
; 1(x)
  db 081h, 07eh, 000h
  db 000h, 0ffh, 000h
  db 000h, 0f3h, 03ch
  db 000h, 0f0h, 0ffh
  db 000h, 0f0h, 0ffh
  db 000h, 0f0h, 0ffh
  db 000h, 0f0h, 0ffh
  db 000h, 0f0h, 0ffh
  db 000h, 00fh, 0ffh
  db 000h, 00fh, 0ffh
  db 000h, 00fh, 0ffh
  db 000h, 00fh, 0ffh
  db 000h, 00fh, 0ffh
  db 000h, 0cfh, 03ch
  db 000h, 0ffh, 000h
  db 081h, 07eh, 000h
; 2(x)
  db 0ffh, 000h, 000h
  db 07fh, 080h, 000h
  db 03fh, 0c0h, 000h
  db 01fh, 0e0h, 000h
  db 01fh, 060h, 080h
  db 00fh, 070h, 080h
  db 00fh, 030h, 0c0h
  db 00fh, 030h, 0c0h
  db 00fh, 0f0h, 0c0h
  db 00fh, 0f0h, 0c0h
  db 00fh, 0f0h, 080h
  db 01fh, 0e0h, 080h
  db 01fh, 0e0h, 000h
  db 03fh, 0c0h, 000h
  db 07fh, 080h, 000h
  db 0ffh, 000h, 000h

ball2_p0_c2_5:
; Xoffset: 5
; Mask: [B R]
; OutSizeX: 24 OutSizeY: 16
; DataOrder: Vertical

  db 183  ; clipy(byte) 200-sizey-1
  db 008h  ; DrawType (Plane: BR SizeY: 16)
  db 38  ; clipx(right) 40-sizex+1
  db 62  ; clipx(left) 64-sizex+1
  db 3  ; sizex(byte)
  db 48  ; sizey(pitch)

; 0(x)
  db 0ffh, 000h, 000h
  db 0ffh, 000h, 000h
  db 0feh, 001h, 000h
  db 0fch, 003h, 000h
  db 0fch, 003h, 000h
  db 0f8h, 007h, 000h
  db 0f8h, 007h, 001h
  db 0f8h, 007h, 001h
  db 0f8h, 006h, 001h
  db 0f8h, 006h, 001h
  db 0f8h, 007h, 000h
  db 0fch, 003h, 000h
  db 0fch, 003h, 000h
  db 0feh, 001h, 000h
  db 0ffh, 000h, 000h
  db 0ffh, 000h, 000h
; 1(x)
  db 0c0h, 03fh, 000h
  db 000h, 0ffh, 000h
  db 000h, 0f9h, 01eh
  db 000h, 0f8h, 07fh
  db 000h, 0f8h, 0ffh
  db 000h, 0f8h, 0ffh
  db 000h, 0f8h, 0ffh
  db 000h, 0f8h, 0ffh
  db 000h, 007h, 0ffh
  db 000h, 007h, 0ffh
  db 000h, 007h, 0ffh
  db 000h, 007h, 0ffh
  db 000h, 087h, 07fh
  db 000h, 0e7h, 01eh
  db 000h, 0ffh, 000h
  db 0c0h, 03fh, 000h
; 2(x)
  db 0ffh, 000h, 000h
  db 03fh, 0c0h, 000h
  db 01fh, 0e0h, 000h
  db 00fh, 070h, 080h
  db 00fh, 030h, 0c0h
  db 007h, 038h, 0c0h
  db 007h, 018h, 0e0h
  db 007h, 018h, 0e0h
  db 007h, 0f8h, 0e0h
  db 007h, 0f8h, 0e0h
  db 007h, 0f8h, 0c0h
  db 00fh, 0f0h, 0c0h
  db 00fh, 0f0h, 080h
  db 01fh, 0e0h, 000h
  db 03fh, 0c0h, 000h
  db 0ffh, 000h, 000h

ball2_p0_c2_6:
; Xoffset: 6
; Mask: [B R]
; OutSizeX: 24 OutSizeY: 16
; DataOrder: Vertical

  db 183  ; clipy(byte) 200-sizey-1
  db 008h  ; DrawType (Plane: BR SizeY: 16)
  db 38  ; clipx(right) 40-sizex+1
  db 62  ; clipx(left) 64-sizex+1
  db 3  ; sizex(byte)
  db 48  ; sizey(pitch)

; 0(x)
  db 0ffh, 000h, 000h
  db 0ffh, 000h, 000h
  db 0ffh, 000h, 000h
  db 0feh, 001h, 000h
  db 0feh, 001h, 000h
  db 0fch, 003h, 000h
  db 0fch, 003h, 000h
  db 0fch, 003h, 000h
  db 0fch, 003h, 000h
  db 0fch, 003h, 000h
  db 0fch, 003h, 000h
  db 0feh, 001h, 000h
  db 0feh, 001h, 000h
  db 0ffh, 000h, 000h
  db 0ffh, 000h, 000h
  db 0ffh, 000h, 000h
; 1(x)
  db 0e0h, 01fh, 000h
  db 080h, 07fh, 000h
  db 000h, 0fch, 00fh
  db 000h, 0fch, 03fh
  db 000h, 0fch, 07fh
  db 000h, 0fch, 07fh
  db 000h, 0fch, 0ffh
  db 000h, 0fch, 0ffh
  db 000h, 003h, 0ffh
  db 000h, 003h, 0ffh
  db 000h, 083h, 07fh
  db 000h, 083h, 07fh
  db 000h, 0c3h, 03fh
  db 000h, 0f3h, 00fh
  db 080h, 07fh, 000h
  db 0e0h, 01fh, 000h
; 2(x)
  db 07fh, 080h, 000h
  db 01fh, 0e0h, 000h
  db 00fh, 0f0h, 000h
  db 007h, 038h, 0c0h
  db 007h, 018h, 0e0h
  db 003h, 01ch, 0e0h
  db 003h, 00ch, 0f0h
  db 003h, 00ch, 0f0h
  db 003h, 0fch, 0f0h
  db 003h, 0fch, 0f0h
  db 003h, 0fch, 0e0h
  db 007h, 0f8h, 0e0h
  db 007h, 0f8h, 0c0h
  db 00fh, 0f0h, 000h
  db 01fh, 0e0h, 000h
  db 07fh, 080h, 000h

ball2_p0_c2_7:
; Xoffset: 7
; Mask: [B R]
; OutSizeX: 24 OutSizeY: 16
; DataOrder: Vertical

  db 183  ; clipy(byte) 200-sizey-1
  db 008h  ; DrawType (Plane: BR SizeY: 16)
  db 38  ; clipx(right) 40-sizex+1
  db 62  ; clipx(left) 64-sizex+1
  db 3  ; sizex(byte)
  db 48  ; sizey(pitch)

; 0(x)
  db 0ffh, 000h, 000h
  db 0ffh, 000h, 000h
  db 0ffh, 000h, 000h
  db 0ffh, 000h, 000h
  db 0ffh, 000h, 000h
  db 0feh, 001h, 000h
  db 0feh, 001h, 000h
  db 0feh, 001h, 000h
  db 0feh, 001h, 000h
  db 0feh, 001h, 000h
  db 0feh, 001h, 000h
  db 0ffh, 000h, 000h
  db 0ffh, 000h, 000h
  db 0ffh, 000h, 000h
  db 0ffh, 000h, 000h
  db 0ffh, 000h, 000h
; 1(x)
  db 0f0h, 00fh, 000h
  db 0c0h, 03fh, 000h
  db 080h, 07eh, 007h
  db 000h, 0feh, 01fh
  db 000h, 0feh, 03fh
  db 000h, 0feh, 03fh
  db 000h, 0feh, 07fh
  db 000h, 0feh, 07fh
  db 000h, 081h, 07fh
  db 000h, 081h, 07fh
  db 000h, 0c1h, 03fh
  db 000h, 0c1h, 03fh
  db 000h, 0e1h, 01fh
  db 080h, 079h, 007h
  db 0c0h, 03fh, 000h
  db 0f0h, 00fh, 000h
; 2(x)
  db 03fh, 0c0h, 000h
  db 00fh, 0f0h, 000h
  db 007h, 078h, 080h
  db 003h, 01ch, 0e0h
  db 003h, 00ch, 0f0h
  db 001h, 00eh, 0f0h
  db 001h, 006h, 0f8h
  db 001h, 006h, 0f8h
  db 001h, 0feh, 0f8h
  db 001h, 0feh, 0f8h
  db 001h, 0feh, 0f0h
  db 003h, 0fch, 0f0h
  db 003h, 0fch, 0e0h
  db 007h, 0f8h, 080h
  db 00fh, 0f0h, 000h
  db 03fh, 0c0h, 000h


END
