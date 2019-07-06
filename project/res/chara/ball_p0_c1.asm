; データテーブル
ball_p0_c1:
  db  0fch  ; Pivot(x) -4
  db  0f8h  ; Pivot(y) -8
  db  8  ; データ数
  dw  ball_p0_c1_0  ; 0
  dw  ball_p0_c1_1  ; 1
  dw  ball_p0_c1_2  ; 2
  dw  ball_p0_c1_3  ; 3
  dw  ball_p0_c1_4  ; 4
  dw  ball_p0_c1_5  ; 5
  dw  ball_p0_c1_6  ; 6
  dw  ball_p0_c1_7  ; 7

ball_p0_c1_0:
; Xoffset: 0
; Mask: [B]
; OutSizeX: 16 OutSizeY: 16
; DataOrder: Vertical

  db 183  ; clipy(byte) 200-sizey-1
  db 000h  ; DrawType (Plane: B SizeY: 16)
  db 39  ; clipx(right) 40-sizex+1
  db 63  ; clipx(left) 64-sizex+1
  db 2  ; sizex(byte)
  db 32  ; sizey(pitch)

; 0(x)
  db 0f8h, 007h
  db 0e0h, 01eh
  db 0c0h, 03ch
  db 080h, 070h
  db 080h, 062h
  db 000h, 0e7h
  db 000h, 0cfh
  db 000h, 087h
  db 000h, 087h
  db 000h, 0cfh
  db 000h, 0e7h
  db 080h, 062h
  db 080h, 070h
  db 0c0h, 03ch
  db 0e0h, 01eh
  db 0f8h, 007h
; 1(x)
  db 01fh, 0e0h
  db 007h, 078h
  db 003h, 03ch
  db 001h, 00eh
  db 001h, 046h
  db 000h, 0e7h
  db 000h, 0f3h
  db 000h, 0e1h
  db 000h, 0e1h
  db 000h, 0f3h
  db 000h, 0e7h
  db 001h, 046h
  db 001h, 00eh
  db 003h, 03ch
  db 007h, 078h
  db 01fh, 0e0h

ball_p0_c1_1:
; Xoffset: 1
; Mask: [B]
; OutSizeX: 24 OutSizeY: 16
; DataOrder: Vertical

  db 183  ; clipy(byte) 200-sizey-1
  db 000h  ; DrawType (Plane: B SizeY: 16)
  db 38  ; clipx(right) 40-sizex+1
  db 62  ; clipx(left) 64-sizex+1
  db 3  ; sizex(byte)
  db 32  ; sizey(pitch)

; 0(x)
  db 0fch, 003h
  db 0f0h, 00fh
  db 0e0h, 01eh
  db 0c0h, 038h
  db 0c0h, 031h
  db 080h, 073h
  db 080h, 067h
  db 080h, 043h
  db 080h, 043h
  db 080h, 067h
  db 080h, 073h
  db 0c0h, 031h
  db 0c0h, 038h
  db 0e0h, 01eh
  db 0f0h, 00fh
  db 0fch, 003h
; 1(x)
  db 00fh, 0f0h
  db 003h, 03ch
  db 001h, 01eh
  db 000h, 007h
  db 000h, 023h
  db 000h, 0f3h
  db 000h, 0f9h
  db 000h, 0f0h
  db 000h, 0f0h
  db 000h, 0f9h
  db 000h, 0f3h
  db 000h, 023h
  db 000h, 007h
  db 001h, 01eh
  db 003h, 03ch
  db 00fh, 0f0h
; 2(x)
  db 0ffh, 000h
  db 0ffh, 000h
  db 0ffh, 000h
  db 0ffh, 000h
  db 0ffh, 000h
  db 07fh, 080h
  db 07fh, 080h
  db 07fh, 080h
  db 07fh, 080h
  db 07fh, 080h
  db 07fh, 080h
  db 0ffh, 000h
  db 0ffh, 000h
  db 0ffh, 000h
  db 0ffh, 000h
  db 0ffh, 000h

ball_p0_c1_2:
; Xoffset: 2
; Mask: [B]
; OutSizeX: 24 OutSizeY: 16
; DataOrder: Vertical

  db 183  ; clipy(byte) 200-sizey-1
  db 000h  ; DrawType (Plane: B SizeY: 16)
  db 38  ; clipx(right) 40-sizex+1
  db 62  ; clipx(left) 64-sizex+1
  db 3  ; sizex(byte)
  db 32  ; sizey(pitch)

; 0(x)
  db 0feh, 001h
  db 0f8h, 007h
  db 0f0h, 00fh
  db 0e0h, 01ch
  db 0e0h, 018h
  db 0c0h, 039h
  db 0c0h, 033h
  db 0c0h, 021h
  db 0c0h, 021h
  db 0c0h, 033h
  db 0c0h, 039h
  db 0e0h, 018h
  db 0e0h, 01ch
  db 0f0h, 00fh
  db 0f8h, 007h
  db 0feh, 001h
; 1(x)
  db 007h, 0f8h
  db 001h, 09eh
  db 000h, 00fh
  db 000h, 003h
  db 000h, 091h
  db 000h, 0f9h
  db 000h, 0fch
  db 000h, 0f8h
  db 000h, 0f8h
  db 000h, 0fch
  db 000h, 0f9h
  db 000h, 091h
  db 000h, 003h
  db 000h, 00fh
  db 001h, 09eh
  db 007h, 0f8h
; 2(x)
  db 0ffh, 000h
  db 0ffh, 000h
  db 0ffh, 000h
  db 07fh, 080h
  db 07fh, 080h
  db 03fh, 0c0h
  db 03fh, 0c0h
  db 03fh, 040h
  db 03fh, 040h
  db 03fh, 0c0h
  db 03fh, 0c0h
  db 07fh, 080h
  db 07fh, 080h
  db 0ffh, 000h
  db 0ffh, 000h
  db 0ffh, 000h

ball_p0_c1_3:
; Xoffset: 3
; Mask: [B]
; OutSizeX: 24 OutSizeY: 16
; DataOrder: Vertical

  db 183  ; clipy(byte) 200-sizey-1
  db 000h  ; DrawType (Plane: B SizeY: 16)
  db 38  ; clipx(right) 40-sizex+1
  db 62  ; clipx(left) 64-sizex+1
  db 3  ; sizex(byte)
  db 32  ; sizey(pitch)

; 0(x)
  db 0ffh, 000h
  db 0fch, 003h
  db 0f8h, 007h
  db 0f0h, 00eh
  db 0f0h, 00ch
  db 0e0h, 01ch
  db 0e0h, 019h
  db 0e0h, 010h
  db 0e0h, 010h
  db 0e0h, 019h
  db 0e0h, 01ch
  db 0f0h, 00ch
  db 0f0h, 00eh
  db 0f8h, 007h
  db 0fch, 003h
  db 0ffh, 000h
; 1(x)
  db 003h, 0fch
  db 000h, 0cfh
  db 000h, 087h
  db 000h, 001h
  db 000h, 048h
  db 000h, 0fch
  db 000h, 0feh
  db 000h, 0fch
  db 000h, 0fch
  db 000h, 0feh
  db 000h, 0fch
  db 000h, 048h
  db 000h, 001h
  db 000h, 087h
  db 000h, 0cfh
  db 003h, 0fch
; 2(x)
  db 0ffh, 000h
  db 0ffh, 000h
  db 07fh, 080h
  db 03fh, 0c0h
  db 03fh, 0c0h
  db 01fh, 0e0h
  db 01fh, 060h
  db 01fh, 020h
  db 01fh, 020h
  db 01fh, 060h
  db 01fh, 0e0h
  db 03fh, 0c0h
  db 03fh, 0c0h
  db 07fh, 080h
  db 0ffh, 000h
  db 0ffh, 000h

ball_p0_c1_4:
; Xoffset: 4
; Mask: [B]
; OutSizeX: 24 OutSizeY: 16
; DataOrder: Vertical

  db 183  ; clipy(byte) 200-sizey-1
  db 000h  ; DrawType (Plane: B SizeY: 16)
  db 38  ; clipx(right) 40-sizex+1
  db 62  ; clipx(left) 64-sizex+1
  db 3  ; sizex(byte)
  db 32  ; sizey(pitch)

; 0(x)
  db 0ffh, 000h
  db 0feh, 001h
  db 0fch, 003h
  db 0f8h, 007h
  db 0f8h, 006h
  db 0f0h, 00eh
  db 0f0h, 00ch
  db 0f0h, 008h
  db 0f0h, 008h
  db 0f0h, 00ch
  db 0f0h, 00eh
  db 0f8h, 006h
  db 0f8h, 007h
  db 0fch, 003h
  db 0feh, 001h
  db 0ffh, 000h
; 1(x)
  db 081h, 07eh
  db 000h, 0e7h
  db 000h, 0c3h
  db 000h, 000h
  db 000h, 024h
  db 000h, 07eh
  db 000h, 0ffh
  db 000h, 07eh
  db 000h, 07eh
  db 000h, 0ffh
  db 000h, 07eh
  db 000h, 024h
  db 000h, 000h
  db 000h, 0c3h
  db 000h, 0e7h
  db 081h, 07eh
; 2(x)
  db 0ffh, 000h
  db 07fh, 080h
  db 03fh, 0c0h
  db 01fh, 0e0h
  db 01fh, 060h
  db 00fh, 070h
  db 00fh, 030h
  db 00fh, 010h
  db 00fh, 010h
  db 00fh, 030h
  db 00fh, 070h
  db 01fh, 060h
  db 01fh, 0e0h
  db 03fh, 0c0h
  db 07fh, 080h
  db 0ffh, 000h

ball_p0_c1_5:
; Xoffset: 5
; Mask: [B]
; OutSizeX: 24 OutSizeY: 16
; DataOrder: Vertical

  db 183  ; clipy(byte) 200-sizey-1
  db 000h  ; DrawType (Plane: B SizeY: 16)
  db 38  ; clipx(right) 40-sizex+1
  db 62  ; clipx(left) 64-sizex+1
  db 3  ; sizex(byte)
  db 32  ; sizey(pitch)

; 0(x)
  db 0ffh, 000h
  db 0ffh, 000h
  db 0feh, 001h
  db 0fch, 003h
  db 0fch, 003h
  db 0f8h, 007h
  db 0f8h, 006h
  db 0f8h, 004h
  db 0f8h, 004h
  db 0f8h, 006h
  db 0f8h, 007h
  db 0fch, 003h
  db 0fch, 003h
  db 0feh, 001h
  db 0ffh, 000h
  db 0ffh, 000h
; 1(x)
  db 0c0h, 03fh
  db 000h, 0f3h
  db 000h, 0e1h
  db 000h, 080h
  db 000h, 012h
  db 000h, 03fh
  db 000h, 07fh
  db 000h, 03fh
  db 000h, 03fh
  db 000h, 07fh
  db 000h, 03fh
  db 000h, 012h
  db 000h, 080h
  db 000h, 0e1h
  db 000h, 0f3h
  db 0c0h, 03fh
; 2(x)
  db 0ffh, 000h
  db 03fh, 0c0h
  db 01fh, 0e0h
  db 00fh, 070h
  db 00fh, 030h
  db 007h, 038h
  db 007h, 098h
  db 007h, 008h
  db 007h, 008h
  db 007h, 098h
  db 007h, 038h
  db 00fh, 030h
  db 00fh, 070h
  db 01fh, 0e0h
  db 03fh, 0c0h
  db 0ffh, 000h

ball_p0_c1_6:
; Xoffset: 6
; Mask: [B]
; OutSizeX: 24 OutSizeY: 16
; DataOrder: Vertical

  db 183  ; clipy(byte) 200-sizey-1
  db 000h  ; DrawType (Plane: B SizeY: 16)
  db 38  ; clipx(right) 40-sizex+1
  db 62  ; clipx(left) 64-sizex+1
  db 3  ; sizex(byte)
  db 32  ; sizey(pitch)

; 0(x)
  db 0ffh, 000h
  db 0ffh, 000h
  db 0ffh, 000h
  db 0feh, 001h
  db 0feh, 001h
  db 0fch, 003h
  db 0fch, 003h
  db 0fch, 002h
  db 0fch, 002h
  db 0fch, 003h
  db 0fch, 003h
  db 0feh, 001h
  db 0feh, 001h
  db 0ffh, 000h
  db 0ffh, 000h
  db 0ffh, 000h
; 1(x)
  db 0e0h, 01fh
  db 080h, 079h
  db 000h, 0f0h
  db 000h, 0c0h
  db 000h, 089h
  db 000h, 09fh
  db 000h, 03fh
  db 000h, 01fh
  db 000h, 01fh
  db 000h, 03fh
  db 000h, 09fh
  db 000h, 089h
  db 000h, 0c0h
  db 000h, 0f0h
  db 080h, 079h
  db 0e0h, 01fh
; 2(x)
  db 07fh, 080h
  db 01fh, 0e0h
  db 00fh, 0f0h
  db 007h, 038h
  db 007h, 018h
  db 003h, 09ch
  db 003h, 0cch
  db 003h, 084h
  db 003h, 084h
  db 003h, 0cch
  db 003h, 09ch
  db 007h, 018h
  db 007h, 038h
  db 00fh, 0f0h
  db 01fh, 0e0h
  db 07fh, 080h

ball_p0_c1_7:
; Xoffset: 7
; Mask: [B]
; OutSizeX: 24 OutSizeY: 16
; DataOrder: Vertical

  db 183  ; clipy(byte) 200-sizey-1
  db 000h  ; DrawType (Plane: B SizeY: 16)
  db 38  ; clipx(right) 40-sizex+1
  db 62  ; clipx(left) 64-sizex+1
  db 3  ; sizex(byte)
  db 32  ; sizey(pitch)

; 0(x)
  db 0ffh, 000h
  db 0ffh, 000h
  db 0ffh, 000h
  db 0ffh, 000h
  db 0ffh, 000h
  db 0feh, 001h
  db 0feh, 001h
  db 0feh, 001h
  db 0feh, 001h
  db 0feh, 001h
  db 0feh, 001h
  db 0ffh, 000h
  db 0ffh, 000h
  db 0ffh, 000h
  db 0ffh, 000h
  db 0ffh, 000h
; 1(x)
  db 0f0h, 00fh
  db 0c0h, 03ch
  db 080h, 078h
  db 000h, 0e0h
  db 000h, 0c4h
  db 000h, 0cfh
  db 000h, 09fh
  db 000h, 00fh
  db 000h, 00fh
  db 000h, 09fh
  db 000h, 0cfh
  db 000h, 0c4h
  db 000h, 0e0h
  db 080h, 078h
  db 0c0h, 03ch
  db 0f0h, 00fh
; 2(x)
  db 03fh, 0c0h
  db 00fh, 0f0h
  db 007h, 078h
  db 003h, 01ch
  db 003h, 08ch
  db 001h, 0ceh
  db 001h, 0e6h
  db 001h, 0c2h
  db 001h, 0c2h
  db 001h, 0e6h
  db 001h, 0ceh
  db 003h, 08ch
  db 003h, 01ch
  db 007h, 078h
  db 00fh, 0f0h
  db 03fh, 0c0h


END
