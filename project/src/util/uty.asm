;---------------------------------------------------------------;
;	Copyright (c) 2019 uty.asm
;	This software is released under the MIT License.
;	http://opensource.org/licenses/mit-license.php
;---------------------------------------------------------------; 
;----

disp_reg_line:
	ds	2

disp_reg_xofs:
	ds	2

check_bp:
	push af
	push bc

	ld a,041h
	ld bc,03000h
	out (c),a
	
	pop bc
	pop af
	
	ret

get_disp_pos:
	push hl
	ld bc, (disp_reg_xofs)
	ld hl, (disp_reg_line)
	add hl,bc
	ld b,h
	ld c,l
	pop hl
	ret

disp_next_xofs:
	push hl
	push bc
	ld hl, (disp_reg_xofs )
	ld c,a
	ld b,0
	add hl,bc
	ld ( disp_reg_xofs ),hl

	pop bc
	pop hl
	ret

disp_next_line:
	push hl
	push bc
	ld hl, (disp_reg_line )
	ld bc, 0028h
	add hl,bc
	ld ( disp_reg_line ),hl

	ld hl,0
	ld ( disp_reg_xofs ),hl

	pop bc
	pop hl
	ret

disp_hl:
	push af
	push bc

	call get_disp_pos
	ld a,'H'
	out (c),a
	inc bc
	ld a,'L'
	out (c),a
	inc bc
	ld a,':'
	out (c),a
	inc bc

	ld a,h
	call disp_areg
	ld a,l
	call disp_areg

	ld a,8
	call disp_next_xofs

	pop bc
	pop af

	ret

disp_de:
	push af
	push bc

	call get_disp_pos
	ld a,'D'
	out (c),a
	inc bc
	ld a,'E'
	out (c),a
	inc bc
	ld a,' '
	out (c),a
	inc bc

	ld a,d
	call disp_areg
	ld a,e
	call disp_areg

	ld a,8
	call disp_next_xofs

	pop bc
	pop af

	ret

disp_bc:
	push af
	push bc
	push hl

	ld h,b
	ld l,c

	call get_disp_pos
	ld a,'B'
	out (c),a
	inc bc
	ld a,'C'
	out (c),a
	inc bc
	ld a,':'
	out (c),a
	inc bc

	ld a,h
	call disp_areg
	ld a,l
	call disp_areg

	ld a,8
	call disp_next_xofs

	pop hl
	pop bc
	pop af

	ret

disp_de2:
	push af
	push bc

	call get_disp_pos

	ld a,d
	call disp_areg
	ld a,e
	call disp_areg

	ld a,8
	call disp_next_xofs

	pop bc
	pop af

	ret

disp_dump:
; HLreg: ダンプアドレス
; DEreg: ダンプサイズ

	push	af
	push	bc
	call	get_disp_pos
	ld	a,h
	call	disp_areg
	ld	a,l
	call	disp_areg
	ld	a,':'
	out	(c),a
	inc	bc

	ld a,5
	call disp_next_xofs

ddu_1:
	ld	a,(hl)
	inc	hl
	call	disp_areg
	ld	a,' '
	out(c),a
	inc	bc

	ld a,3
	call disp_next_xofs

	dec	de
	ld	a,d
	or	e
	jp	nz, ddu_1

	pop	bc
	pop	af
	ret


disp_a:
	push af
	push bc

	push af
	call get_disp_pos
	ld a,'A'
	out (c),a
	inc bc
	ld a,' '
	out (c),a
	inc bc
	pop af

	call disp_areg

	ld a,5
	call disp_next_xofs

	pop bc
	pop af

	ret

; Aregの内容を16進数 2桁でテキスト画面に表示する。
;	Areg: 表示内容
;	BCreg: 表示位置 (テキストVRAM)
disp_areg:
	call da_1

da_1:
	rrca
	rrca
	rrca
	rrca

	push af

	and 0fh
	add a,030h
	cp 03ah
	jr c, dd_1

	add a, 07h
dd_1:
	out (c),a

	pop af

	inc bc

	ret

	END
