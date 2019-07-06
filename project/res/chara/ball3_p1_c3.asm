; データテーブル
ball3_p1_c3:
  db  0fch  ; Pivot(x) -4
  db  0f8h  ; Pivot(y) -8
  db  8  ; データ数
  dw  ball3_p1_c3_0  ; 0
  dw  ball3_p1_c3_1  ; 1
  dw  ball3_p1_c3_2  ; 2
  dw  ball3_p1_c3_3  ; 3
  dw  ball3_p1_c3_4  ; 4
  dw  ball3_p1_c3_5  ; 5
  dw  ball3_p1_c3_6  ; 6
  dw  ball3_p1_c3_7  ; 7

ball3_p1_c3_0:
; Xoffset: 0
; Mask: [B R G]
; OutSizeX: 16 OutSizeY: 16
; DataOrder: Vertical

  db 183  ; clipy(byte) 200-sizey-1
  db 010h  ; DrawType (Plane: BRG SizeY: 16)
  db 39  ; clipx(right) 40-sizex+1
  db 63  ; clipx(left) 64-sizex+1
  db 2  ; sizex(byte)
  db 64  ; sizey(pitch)

; 0(x)
  db 0f8h, 007h, 007h, 007h
  db 0e0h, 01fh, 01fh, 01fh
  db 0c0h, 03fh, 03fh, 03fh
  db 080h, 060h, 07fh, 060h
  db 080h, 070h, 07fh, 070h
  db 000h, 0f8h, 0ffh, 0f8h
  db 000h, 0f0h, 0f3h, 0fch
  db 000h, 0e0h, 0e1h, 0feh
  db 000h, 0ffh, 0e0h, 0ffh
  db 000h, 0ffh, 0e1h, 0feh
  db 000h, 0ffh, 0e3h, 0fch
  db 080h, 07fh, 067h, 07ch
  db 080h, 07fh, 06fh, 07eh
  db 0c0h, 03fh, 03fh, 03fh
  db 0e0h, 01fh, 01fh, 01fh
  db 0f8h, 007h, 007h, 007h
; 1(x)
  db 01fh, 0e0h, 0e0h, 0e0h
  db 007h, 0f8h, 0f8h, 0f8h
  db 003h, 0fch, 0fch, 0fch
  db 001h, 0feh, 0f6h, 07eh
  db 001h, 0feh, 0e6h, 03eh
  db 000h, 0ffh, 0c7h, 03fh
  db 000h, 0ffh, 087h, 07fh
  db 000h, 0ffh, 007h, 0ffh
  db 000h, 007h, 087h, 07fh
  db 000h, 00fh, 0cfh, 03fh
  db 000h, 01fh, 0ffh, 01fh
  db 001h, 00eh, 0feh, 00eh
  db 001h, 006h, 0feh, 006h
  db 003h, 0fch, 0fch, 0fch
  db 007h, 0f8h, 0f8h, 0f8h
  db 01fh, 0e0h, 0e0h, 0e0h

ball3_p1_c3_1:
; Xoffset: 1
; Mask: [B R G]
; OutSizeX: 24 OutSizeY: 16
; DataOrder: Vertical

  db 183  ; clipy(byte) 200-sizey-1
  db 010h  ; DrawType (Plane: BRG SizeY: 16)
  db 38  ; clipx(right) 40-sizex+1
  db 62  ; clipx(left) 64-sizex+1
  db 3  ; sizex(byte)
  db 64  ; sizey(pitch)

; 0(x)
  db 0fch, 003h, 003h, 003h
  db 0f0h, 00fh, 00fh, 00fh
  db 0e0h, 01fh, 01fh, 01fh
  db 0c0h, 030h, 03fh, 030h
  db 0c0h, 038h, 03fh, 038h
  db 080h, 07ch, 07fh, 07ch
  db 080h, 078h, 079h, 07eh
  db 080h, 070h, 070h, 07fh
  db 080h, 07fh, 070h, 07fh
  db 080h, 07fh, 070h, 07fh
  db 080h, 07fh, 071h, 07eh
  db 0c0h, 03fh, 033h, 03eh
  db 0c0h, 03fh, 037h, 03fh
  db 0e0h, 01fh, 01fh, 01fh
  db 0f0h, 00fh, 00fh, 00fh
  db 0fch, 003h, 003h, 003h
; 1(x)
  db 00fh, 0f0h, 0f0h, 0f0h
  db 003h, 0fch, 0fch, 0fch
  db 001h, 0feh, 0feh, 0feh
  db 000h, 07fh, 0fbh, 03fh
  db 000h, 07fh, 0f3h, 01fh
  db 000h, 07fh, 0e3h, 01fh
  db 000h, 07fh, 0c3h, 03fh
  db 000h, 07fh, 083h, 07fh
  db 000h, 083h, 043h, 0bfh
  db 000h, 087h, 0e7h, 01fh
  db 000h, 08fh, 0ffh, 00fh
  db 000h, 087h, 0ffh, 007h
  db 000h, 083h, 0ffh, 003h
  db 001h, 0feh, 0feh, 0feh
  db 003h, 0fch, 0fch, 0fch
  db 00fh, 0f0h, 0f0h, 0f0h
; 2(x)
  db 0ffh, 000h, 000h, 000h
  db 0ffh, 000h, 000h, 000h
  db 0ffh, 000h, 000h, 000h
  db 0ffh, 000h, 000h, 000h
  db 0ffh, 000h, 000h, 000h
  db 07fh, 080h, 080h, 080h
  db 07fh, 080h, 080h, 080h
  db 07fh, 080h, 080h, 080h
  db 07fh, 080h, 080h, 080h
  db 07fh, 080h, 080h, 080h
  db 07fh, 080h, 080h, 080h
  db 0ffh, 000h, 000h, 000h
  db 0ffh, 000h, 000h, 000h
  db 0ffh, 000h, 000h, 000h
  db 0ffh, 000h, 000h, 000h
  db 0ffh, 000h, 000h, 000h

ball3_p1_c3_2:
; Xoffset: 2
; Mask: [B R G]
; OutSizeX: 24 OutSizeY: 16
; DataOrder: Vertical

  db 183  ; clipy(byte) 200-sizey-1
  db 010h  ; DrawType (Plane: BRG SizeY: 16)
  db 38  ; clipx(right) 40-sizex+1
  db 62  ; clipx(left) 64-sizex+1
  db 3  ; sizex(byte)
  db 64  ; sizey(pitch)

; 0(x)
  db 0feh, 001h, 001h, 001h
  db 0f8h, 007h, 007h, 007h
  db 0f0h, 00fh, 00fh, 00fh
  db 0e0h, 018h, 01fh, 018h
  db 0e0h, 01ch, 01fh, 01ch
  db 0c0h, 03eh, 03fh, 03eh
  db 0c0h, 03ch, 03ch, 03fh
  db 0c0h, 038h, 038h, 03fh
  db 0c0h, 03fh, 038h, 03fh
  db 0c0h, 03fh, 038h, 03fh
  db 0c0h, 03fh, 038h, 03fh
  db 0e0h, 01fh, 019h, 01fh
  db 0e0h, 01fh, 01bh, 01fh
  db 0f0h, 00fh, 00fh, 00fh
  db 0f8h, 007h, 007h, 007h
  db 0feh, 001h, 001h, 001h
; 1(x)
  db 007h, 0f8h, 0f8h, 0f8h
  db 001h, 0feh, 0feh, 0feh
  db 000h, 0ffh, 0ffh, 0ffh
  db 000h, 03fh, 0fdh, 01fh
  db 000h, 03fh, 0f9h, 00fh
  db 000h, 03fh, 0f1h, 00fh
  db 000h, 03fh, 0e1h, 01fh
  db 000h, 03fh, 041h, 0bfh
  db 000h, 0c1h, 021h, 0dfh
  db 000h, 0c3h, 073h, 08fh
  db 000h, 0c7h, 0ffh, 007h
  db 000h, 0c3h, 0ffh, 003h
  db 000h, 0c1h, 0ffh, 081h
  db 000h, 0ffh, 0ffh, 0ffh
  db 001h, 0feh, 0feh, 0feh
  db 007h, 0f8h, 0f8h, 0f8h
; 2(x)
  db 0ffh, 000h, 000h, 000h
  db 0ffh, 000h, 000h, 000h
  db 0ffh, 000h, 000h, 000h
  db 07fh, 080h, 080h, 080h
  db 07fh, 080h, 080h, 080h
  db 03fh, 0c0h, 0c0h, 0c0h
  db 03fh, 0c0h, 0c0h, 0c0h
  db 03fh, 0c0h, 0c0h, 0c0h
  db 03fh, 0c0h, 0c0h, 0c0h
  db 03fh, 0c0h, 0c0h, 0c0h
  db 03fh, 0c0h, 0c0h, 0c0h
  db 07fh, 080h, 080h, 080h
  db 07fh, 080h, 080h, 080h
  db 0ffh, 000h, 000h, 000h
  db 0ffh, 000h, 000h, 000h
  db 0ffh, 000h, 000h, 000h

ball3_p1_c3_3:
; Xoffset: 3
; Mask: [B R G]
; OutSizeX: 24 OutSizeY: 16
; DataOrder: Vertical

  db 183  ; clipy(byte) 200-sizey-1
  db 010h  ; DrawType (Plane: BRG SizeY: 16)
  db 38  ; clipx(right) 40-sizex+1
  db 62  ; clipx(left) 64-sizex+1
  db 3  ; sizex(byte)
  db 64  ; sizey(pitch)

; 0(x)
  db 0ffh, 000h, 000h, 000h
  db 0fch, 003h, 003h, 003h
  db 0f8h, 007h, 007h, 007h
  db 0f0h, 00ch, 00fh, 00ch
  db 0f0h, 00eh, 00fh, 00eh
  db 0e0h, 01fh, 01fh, 01fh
  db 0e0h, 01eh, 01eh, 01fh
  db 0e0h, 01ch, 01ch, 01fh
  db 0e0h, 01fh, 01ch, 01fh
  db 0e0h, 01fh, 01ch, 01fh
  db 0e0h, 01fh, 01ch, 01fh
  db 0f0h, 00fh, 00ch, 00fh
  db 0f0h, 00fh, 00dh, 00fh
  db 0f8h, 007h, 007h, 007h
  db 0fch, 003h, 003h, 003h
  db 0ffh, 000h, 000h, 000h
; 1(x)
  db 003h, 0fch, 0fch, 0fch
  db 000h, 0ffh, 0ffh, 0ffh
  db 000h, 0ffh, 0ffh, 0ffh
  db 000h, 01fh, 0feh, 00fh
  db 000h, 01fh, 0fch, 007h
  db 000h, 01fh, 0f8h, 007h
  db 000h, 01fh, 070h, 08fh
  db 000h, 01fh, 020h, 0dfh
  db 000h, 0e0h, 010h, 0efh
  db 000h, 0e1h, 039h, 0c7h
  db 000h, 0e3h, 07fh, 083h
  db 000h, 0e1h, 0ffh, 081h
  db 000h, 0e0h, 0ffh, 0c0h
  db 000h, 0ffh, 0ffh, 0ffh
  db 000h, 0ffh, 0ffh, 0ffh
  db 003h, 0fch, 0fch, 0fch
; 2(x)
  db 0ffh, 000h, 000h, 000h
  db 0ffh, 000h, 000h, 000h
  db 07fh, 080h, 080h, 080h
  db 03fh, 0c0h, 0c0h, 0c0h
  db 03fh, 0c0h, 0c0h, 0c0h
  db 01fh, 0e0h, 0e0h, 0e0h
  db 01fh, 0e0h, 0e0h, 0e0h
  db 01fh, 0e0h, 0e0h, 0e0h
  db 01fh, 0e0h, 0e0h, 0e0h
  db 01fh, 0e0h, 0e0h, 0e0h
  db 01fh, 0e0h, 0e0h, 0e0h
  db 03fh, 0c0h, 0c0h, 0c0h
  db 03fh, 0c0h, 0c0h, 0c0h
  db 07fh, 080h, 080h, 080h
  db 0ffh, 000h, 000h, 000h
  db 0ffh, 000h, 000h, 000h

ball3_p1_c3_4:
; Xoffset: 4
; Mask: [B R G]
; OutSizeX: 24 OutSizeY: 16
; DataOrder: Vertical

  db 183  ; clipy(byte) 200-sizey-1
  db 010h  ; DrawType (Plane: BRG SizeY: 16)
  db 38  ; clipx(right) 40-sizex+1
  db 62  ; clipx(left) 64-sizex+1
  db 3  ; sizex(byte)
  db 64  ; sizey(pitch)

; 0(x)
  db 0ffh, 000h, 000h, 000h
  db 0feh, 001h, 001h, 001h
  db 0fch, 003h, 003h, 003h
  db 0f8h, 006h, 007h, 006h
  db 0f8h, 007h, 007h, 007h
  db 0f0h, 00fh, 00fh, 00fh
  db 0f0h, 00fh, 00fh, 00fh
  db 0f0h, 00eh, 00eh, 00fh
  db 0f0h, 00fh, 00eh, 00fh
  db 0f0h, 00fh, 00eh, 00fh
  db 0f0h, 00fh, 00eh, 00fh
  db 0f8h, 007h, 006h, 007h
  db 0f8h, 007h, 006h, 007h
  db 0fch, 003h, 003h, 003h
  db 0feh, 001h, 001h, 001h
  db 0ffh, 000h, 000h, 000h
; 1(x)
  db 081h, 07eh, 07eh, 07eh
  db 000h, 0ffh, 0ffh, 0ffh
  db 000h, 0ffh, 0ffh, 0ffh
  db 000h, 00fh, 0ffh, 007h
  db 000h, 00fh, 0feh, 003h
  db 000h, 08fh, 0fch, 083h
  db 000h, 00fh, 038h, 0c7h
  db 000h, 00fh, 010h, 0efh
  db 000h, 0f0h, 008h, 0f7h
  db 000h, 0f0h, 01ch, 0e3h
  db 000h, 0f1h, 03fh, 0c1h
  db 000h, 0f0h, 07fh, 0c0h
  db 000h, 0f0h, 0ffh, 0e0h
  db 000h, 0ffh, 0ffh, 0ffh
  db 000h, 0ffh, 0ffh, 0ffh
  db 081h, 07eh, 07eh, 07eh
; 2(x)
  db 0ffh, 000h, 000h, 000h
  db 07fh, 080h, 080h, 080h
  db 03fh, 0c0h, 0c0h, 0c0h
  db 01fh, 0e0h, 060h, 0e0h
  db 01fh, 0e0h, 060h, 0e0h
  db 00fh, 0f0h, 070h, 0f0h
  db 00fh, 0f0h, 070h, 0f0h
  db 00fh, 0f0h, 070h, 0f0h
  db 00fh, 070h, 070h, 0f0h
  db 00fh, 0f0h, 0f0h, 0f0h
  db 00fh, 0f0h, 0f0h, 0f0h
  db 01fh, 0e0h, 0e0h, 0e0h
  db 01fh, 060h, 0e0h, 060h
  db 03fh, 0c0h, 0c0h, 0c0h
  db 07fh, 080h, 080h, 080h
  db 0ffh, 000h, 000h, 000h

ball3_p1_c3_5:
; Xoffset: 5
; Mask: [B R G]
; OutSizeX: 24 OutSizeY: 16
; DataOrder: Vertical

  db 183  ; clipy(byte) 200-sizey-1
  db 010h  ; DrawType (Plane: BRG SizeY: 16)
  db 38  ; clipx(right) 40-sizex+1
  db 62  ; clipx(left) 64-sizex+1
  db 3  ; sizex(byte)
  db 64  ; sizey(pitch)

; 0(x)
  db 0ffh, 000h, 000h, 000h
  db 0ffh, 000h, 000h, 000h
  db 0feh, 001h, 001h, 001h
  db 0fch, 003h, 003h, 003h
  db 0fch, 003h, 003h, 003h
  db 0f8h, 007h, 007h, 007h
  db 0f8h, 007h, 007h, 007h
  db 0f8h, 007h, 007h, 007h
  db 0f8h, 007h, 007h, 007h
  db 0f8h, 007h, 007h, 007h
  db 0f8h, 007h, 007h, 007h
  db 0fch, 003h, 003h, 003h
  db 0fch, 003h, 003h, 003h
  db 0feh, 001h, 001h, 001h
  db 0ffh, 000h, 000h, 000h
  db 0ffh, 000h, 000h, 000h
; 1(x)
  db 0c0h, 03fh, 03fh, 03fh
  db 000h, 0ffh, 0ffh, 0ffh
  db 000h, 0ffh, 0ffh, 0ffh
  db 000h, 007h, 0ffh, 003h
  db 000h, 087h, 0ffh, 081h
  db 000h, 0c7h, 0feh, 0c1h
  db 000h, 087h, 09ch, 0e3h
  db 000h, 007h, 008h, 0f7h
  db 000h, 0f8h, 004h, 0fbh
  db 000h, 0f8h, 00eh, 0f1h
  db 000h, 0f8h, 01fh, 0e0h
  db 000h, 0f8h, 03fh, 0e0h
  db 000h, 0f8h, 07fh, 0f0h
  db 000h, 0ffh, 0ffh, 0ffh
  db 000h, 0ffh, 0ffh, 0ffh
  db 0c0h, 03fh, 03fh, 03fh
; 2(x)
  db 0ffh, 000h, 000h, 000h
  db 03fh, 0c0h, 0c0h, 0c0h
  db 01fh, 0e0h, 0e0h, 0e0h
  db 00fh, 0f0h, 0b0h, 0f0h
  db 00fh, 0f0h, 030h, 0f0h
  db 007h, 0f8h, 038h, 0f8h
  db 007h, 0f8h, 038h, 0f8h
  db 007h, 0f8h, 038h, 0f8h
  db 007h, 038h, 038h, 0f8h
  db 007h, 078h, 078h, 0f8h
  db 007h, 0f8h, 0f8h, 0f8h
  db 00fh, 070h, 0f0h, 070h
  db 00fh, 030h, 0f0h, 030h
  db 01fh, 0e0h, 0e0h, 0e0h
  db 03fh, 0c0h, 0c0h, 0c0h
  db 0ffh, 000h, 000h, 000h

ball3_p1_c3_6:
; Xoffset: 6
; Mask: [B R G]
; OutSizeX: 24 OutSizeY: 16
; DataOrder: Vertical

  db 183  ; clipy(byte) 200-sizey-1
  db 010h  ; DrawType (Plane: BRG SizeY: 16)
  db 38  ; clipx(right) 40-sizex+1
  db 62  ; clipx(left) 64-sizex+1
  db 3  ; sizex(byte)
  db 64  ; sizey(pitch)

; 0(x)
  db 0ffh, 000h, 000h, 000h
  db 0ffh, 000h, 000h, 000h
  db 0ffh, 000h, 000h, 000h
  db 0feh, 001h, 001h, 001h
  db 0feh, 001h, 001h, 001h
  db 0fch, 003h, 003h, 003h
  db 0fch, 003h, 003h, 003h
  db 0fch, 003h, 003h, 003h
  db 0fch, 003h, 003h, 003h
  db 0fch, 003h, 003h, 003h
  db 0fch, 003h, 003h, 003h
  db 0feh, 001h, 001h, 001h
  db 0feh, 001h, 001h, 001h
  db 0ffh, 000h, 000h, 000h
  db 0ffh, 000h, 000h, 000h
  db 0ffh, 000h, 000h, 000h
; 1(x)
  db 0e0h, 01fh, 01fh, 01fh
  db 080h, 07fh, 07fh, 07fh
  db 000h, 0ffh, 0ffh, 0ffh
  db 000h, 083h, 0ffh, 081h
  db 000h, 0c3h, 0ffh, 0c0h
  db 000h, 0e3h, 0ffh, 0e0h
  db 000h, 0c3h, 0ceh, 0f1h
  db 000h, 083h, 084h, 0fbh
  db 000h, 0fch, 082h, 0fdh
  db 000h, 0fch, 087h, 0f8h
  db 000h, 0fch, 08fh, 0f0h
  db 000h, 0fch, 09fh, 0f0h
  db 000h, 0fch, 0bfh, 0f8h
  db 000h, 0ffh, 0ffh, 0ffh
  db 080h, 07fh, 07fh, 07fh
  db 0e0h, 01fh, 01fh, 01fh
; 2(x)
  db 07fh, 080h, 080h, 080h
  db 01fh, 0e0h, 0e0h, 0e0h
  db 00fh, 0f0h, 0f0h, 0f0h
  db 007h, 0f8h, 0d8h, 0f8h
  db 007h, 0f8h, 098h, 0f8h
  db 003h, 0fch, 01ch, 0fch
  db 003h, 0fch, 01ch, 0fch
  db 003h, 0fch, 01ch, 0fch
  db 003h, 01ch, 01ch, 0fch
  db 003h, 03ch, 03ch, 0fch
  db 003h, 07ch, 0fch, 07ch
  db 007h, 038h, 0f8h, 038h
  db 007h, 018h, 0f8h, 018h
  db 00fh, 0f0h, 0f0h, 0f0h
  db 01fh, 0e0h, 0e0h, 0e0h
  db 07fh, 080h, 080h, 080h

ball3_p1_c3_7:
; Xoffset: 7
; Mask: [B R G]
; OutSizeX: 24 OutSizeY: 16
; DataOrder: Vertical

  db 183  ; clipy(byte) 200-sizey-1
  db 010h  ; DrawType (Plane: BRG SizeY: 16)
  db 38  ; clipx(right) 40-sizex+1
  db 62  ; clipx(left) 64-sizex+1
  db 3  ; sizex(byte)
  db 64  ; sizey(pitch)

; 0(x)
  db 0ffh, 000h, 000h, 000h
  db 0ffh, 000h, 000h, 000h
  db 0ffh, 000h, 000h, 000h
  db 0ffh, 000h, 000h, 000h
  db 0ffh, 000h, 000h, 000h
  db 0feh, 001h, 001h, 001h
  db 0feh, 001h, 001h, 001h
  db 0feh, 001h, 001h, 001h
  db 0feh, 001h, 001h, 001h
  db 0feh, 001h, 001h, 001h
  db 0feh, 001h, 001h, 001h
  db 0ffh, 000h, 000h, 000h
  db 0ffh, 000h, 000h, 000h
  db 0ffh, 000h, 000h, 000h
  db 0ffh, 000h, 000h, 000h
  db 0ffh, 000h, 000h, 000h
; 1(x)
  db 0f0h, 00fh, 00fh, 00fh
  db 0c0h, 03fh, 03fh, 03fh
  db 080h, 07fh, 07fh, 07fh
  db 000h, 0c1h, 0ffh, 0c0h
  db 000h, 0e1h, 0ffh, 0e0h
  db 000h, 0f1h, 0ffh, 0f0h
  db 000h, 0e1h, 0e7h, 0f8h
  db 000h, 0c1h, 0c2h, 0fdh
  db 000h, 0feh, 0c1h, 0feh
  db 000h, 0feh, 0c3h, 0fch
  db 000h, 0feh, 0c7h, 0f8h
  db 000h, 0feh, 0cfh, 0f8h
  db 000h, 0feh, 0dfh, 0fch
  db 080h, 07fh, 07fh, 07fh
  db 0c0h, 03fh, 03fh, 03fh
  db 0f0h, 00fh, 00fh, 00fh
; 2(x)
  db 03fh, 0c0h, 0c0h, 0c0h
  db 00fh, 0f0h, 0f0h, 0f0h
  db 007h, 0f8h, 0f8h, 0f8h
  db 003h, 0fch, 0ech, 0fch
  db 003h, 0fch, 0cch, 07ch
  db 001h, 0feh, 08eh, 07eh
  db 001h, 0feh, 00eh, 0feh
  db 001h, 0feh, 00eh, 0feh
  db 001h, 00eh, 00eh, 0feh
  db 001h, 01eh, 09eh, 07eh
  db 001h, 03eh, 0feh, 03eh
  db 003h, 01ch, 0fch, 01ch
  db 003h, 00ch, 0fch, 00ch
  db 007h, 0f8h, 0f8h, 0f8h
  db 00fh, 0f0h, 0f0h, 0f0h
  db 03fh, 0c0h, 0c0h, 0c0h


END
