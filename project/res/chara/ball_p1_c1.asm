; データテーブル
ball_p1_c1:
  db  0fch  ; Pivot(x) -4
  db  0f8h  ; Pivot(y) -8
  db  8  ; データ数
  dw  ball_p1_c1_0  ; 0
  dw  ball_p1_c1_1  ; 1
  dw  ball_p1_c1_2  ; 2
  dw  ball_p1_c1_3  ; 3
  dw  ball_p1_c1_4  ; 4
  dw  ball_p1_c1_5  ; 5
  dw  ball_p1_c1_6  ; 6
  dw  ball_p1_c1_7  ; 7

ball_p1_c1_0:
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
  db 0e0h, 01fh
  db 0c0h, 034h
  db 080h, 060h
  db 080h, 043h
  db 000h, 0e1h
  db 000h, 0cbh
  db 000h, 0cfh
  db 000h, 0cfh
  db 000h, 0cbh
  db 000h, 0e1h
  db 080h, 043h
  db 080h, 060h
  db 0c0h, 034h
  db 0e0h, 01fh
  db 0f8h, 007h
; 1(x)
  db 01fh, 0e0h
  db 007h, 0f8h
  db 003h, 02ch
  db 001h, 006h
  db 001h, 0c2h
  db 000h, 087h
  db 000h, 0d3h
  db 000h, 0f3h
  db 000h, 0f3h
  db 000h, 0d3h
  db 000h, 087h
  db 001h, 0c2h
  db 001h, 006h
  db 003h, 02ch
  db 007h, 0f8h
  db 01fh, 0e0h

ball_p1_c1_1:
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
  db 0e0h, 01ah
  db 0c0h, 030h
  db 0c0h, 021h
  db 080h, 070h
  db 080h, 065h
  db 080h, 067h
  db 080h, 067h
  db 080h, 065h
  db 080h, 070h
  db 0c0h, 021h
  db 0c0h, 030h
  db 0e0h, 01ah
  db 0f0h, 00fh
  db 0fch, 003h
; 1(x)
  db 00fh, 0f0h
  db 003h, 0fch
  db 001h, 016h
  db 000h, 003h
  db 000h, 0e1h
  db 000h, 0c3h
  db 000h, 0e9h
  db 000h, 0f9h
  db 000h, 0f9h
  db 000h, 0e9h
  db 000h, 0c3h
  db 000h, 0e1h
  db 000h, 003h
  db 001h, 016h
  db 003h, 0fch
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

ball_p1_c1_2:
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
  db 0f0h, 00dh
  db 0e0h, 018h
  db 0e0h, 010h
  db 0c0h, 038h
  db 0c0h, 032h
  db 0c0h, 033h
  db 0c0h, 033h
  db 0c0h, 032h
  db 0c0h, 038h
  db 0e0h, 010h
  db 0e0h, 018h
  db 0f0h, 00dh
  db 0f8h, 007h
  db 0feh, 001h
; 1(x)
  db 007h, 0f8h
  db 001h, 0feh
  db 000h, 00bh
  db 000h, 001h
  db 000h, 0f0h
  db 000h, 061h
  db 000h, 0f4h
  db 000h, 0fch
  db 000h, 0fch
  db 000h, 0f4h
  db 000h, 061h
  db 000h, 0f0h
  db 000h, 001h
  db 000h, 00bh
  db 001h, 0feh
  db 007h, 0f8h
; 2(x)
  db 0ffh, 000h
  db 0ffh, 000h
  db 0ffh, 000h
  db 07fh, 080h
  db 07fh, 080h
  db 03fh, 0c0h
  db 03fh, 0c0h
  db 03fh, 0c0h
  db 03fh, 0c0h
  db 03fh, 0c0h
  db 03fh, 0c0h
  db 07fh, 080h
  db 07fh, 080h
  db 0ffh, 000h
  db 0ffh, 000h
  db 0ffh, 000h

ball_p1_c1_3:
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
  db 0f8h, 006h
  db 0f0h, 00ch
  db 0f0h, 008h
  db 0e0h, 01ch
  db 0e0h, 019h
  db 0e0h, 019h
  db 0e0h, 019h
  db 0e0h, 019h
  db 0e0h, 01ch
  db 0f0h, 008h
  db 0f0h, 00ch
  db 0f8h, 006h
  db 0fch, 003h
  db 0ffh, 000h
; 1(x)
  db 003h, 0fch
  db 000h, 0ffh
  db 000h, 085h
  db 000h, 000h
  db 000h, 078h
  db 000h, 030h
  db 000h, 07ah
  db 000h, 0feh
  db 000h, 0feh
  db 000h, 07ah
  db 000h, 030h
  db 000h, 078h
  db 000h, 000h
  db 000h, 085h
  db 000h, 0ffh
  db 003h, 0fch
; 2(x)
  db 0ffh, 000h
  db 0ffh, 000h
  db 07fh, 080h
  db 03fh, 0c0h
  db 03fh, 040h
  db 01fh, 0e0h
  db 01fh, 060h
  db 01fh, 060h
  db 01fh, 060h
  db 01fh, 060h
  db 01fh, 0e0h
  db 03fh, 040h
  db 03fh, 0c0h
  db 07fh, 080h
  db 0ffh, 000h
  db 0ffh, 000h

ball_p1_c1_4:
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
  db 0f8h, 006h
  db 0f8h, 004h
  db 0f0h, 00eh
  db 0f0h, 00ch
  db 0f0h, 00ch
  db 0f0h, 00ch
  db 0f0h, 00ch
  db 0f0h, 00eh
  db 0f8h, 004h
  db 0f8h, 006h
  db 0fch, 003h
  db 0feh, 001h
  db 0ffh, 000h
; 1(x)
  db 081h, 07eh
  db 000h, 0ffh
  db 000h, 042h
  db 000h, 000h
  db 000h, 03ch
  db 000h, 018h
  db 000h, 0bdh
  db 000h, 0ffh
  db 000h, 0ffh
  db 000h, 0bdh
  db 000h, 018h
  db 000h, 03ch
  db 000h, 000h
  db 000h, 042h
  db 000h, 0ffh
  db 081h, 07eh
; 2(x)
  db 0ffh, 000h
  db 07fh, 080h
  db 03fh, 0c0h
  db 01fh, 060h
  db 01fh, 020h
  db 00fh, 070h
  db 00fh, 030h
  db 00fh, 030h
  db 00fh, 030h
  db 00fh, 030h
  db 00fh, 070h
  db 01fh, 020h
  db 01fh, 060h
  db 03fh, 0c0h
  db 07fh, 080h
  db 0ffh, 000h

ball_p1_c1_5:
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
  db 0fch, 002h
  db 0f8h, 007h
  db 0f8h, 006h
  db 0f8h, 006h
  db 0f8h, 006h
  db 0f8h, 006h
  db 0f8h, 007h
  db 0fch, 002h
  db 0fch, 003h
  db 0feh, 001h
  db 0ffh, 000h
  db 0ffh, 000h
; 1(x)
  db 0c0h, 03fh
  db 000h, 0ffh
  db 000h, 0a1h
  db 000h, 000h
  db 000h, 01eh
  db 000h, 00ch
  db 000h, 05eh
  db 000h, 07fh
  db 000h, 07fh
  db 000h, 05eh
  db 000h, 00ch
  db 000h, 01eh
  db 000h, 000h
  db 000h, 0a1h
  db 000h, 0ffh
  db 0c0h, 03fh
; 2(x)
  db 0ffh, 000h
  db 03fh, 0c0h
  db 01fh, 060h
  db 00fh, 030h
  db 00fh, 010h
  db 007h, 038h
  db 007h, 098h
  db 007h, 098h
  db 007h, 098h
  db 007h, 098h
  db 007h, 038h
  db 00fh, 010h
  db 00fh, 030h
  db 01fh, 060h
  db 03fh, 0c0h
  db 0ffh, 000h

ball_p1_c1_6:
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
  db 0fch, 003h
  db 0fch, 003h
  db 0fch, 003h
  db 0fch, 003h
  db 0feh, 001h
  db 0feh, 001h
  db 0ffh, 000h
  db 0ffh, 000h
  db 0ffh, 000h
; 1(x)
  db 0e0h, 01fh
  db 080h, 07fh
  db 000h, 0d0h
  db 000h, 080h
  db 000h, 00fh
  db 000h, 086h
  db 000h, 02fh
  db 000h, 03fh
  db 000h, 03fh
  db 000h, 02fh
  db 000h, 086h
  db 000h, 00fh
  db 000h, 080h
  db 000h, 0d0h
  db 080h, 07fh
  db 0e0h, 01fh
; 2(x)
  db 07fh, 080h
  db 01fh, 0e0h
  db 00fh, 0b0h
  db 007h, 018h
  db 007h, 008h
  db 003h, 01ch
  db 003h, 04ch
  db 003h, 0cch
  db 003h, 0cch
  db 003h, 04ch
  db 003h, 01ch
  db 007h, 008h
  db 007h, 018h
  db 00fh, 0b0h
  db 01fh, 0e0h
  db 07fh, 080h

ball_p1_c1_7:
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
  db 0c0h, 03fh
  db 080h, 068h
  db 000h, 0c0h
  db 000h, 087h
  db 000h, 0c3h
  db 000h, 097h
  db 000h, 09fh
  db 000h, 09fh
  db 000h, 097h
  db 000h, 0c3h
  db 000h, 087h
  db 000h, 0c0h
  db 080h, 068h
  db 0c0h, 03fh
  db 0f0h, 00fh
; 2(x)
  db 03fh, 0c0h
  db 00fh, 0f0h
  db 007h, 058h
  db 003h, 00ch
  db 003h, 084h
  db 001h, 00eh
  db 001h, 0a6h
  db 001h, 0e6h
  db 001h, 0e6h
  db 001h, 0a6h
  db 001h, 00eh
  db 003h, 084h
  db 003h, 00ch
  db 007h, 058h
  db 00fh, 0f0h
  db 03fh, 0c0h


END
