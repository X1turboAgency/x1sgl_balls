;---------------------------------------------------------------;
;	Copyright (c) 2019 ball.asm
;	This software is released under the MIT License.
;	http://opensource.org/licenses/mit-license.php
;---------------------------------------------------------------; 

;---------------------------------------------------------------;
;	Ball 初期化
;	IYreg: キャラワーク
;---------------------------------------------------------------; 
init_ball_b:
	ld		(iy+CHR_PATTERN), PAT_BALL_B00
	ld		(iy+CHR_KIND), KIND_BALL_B

	ld		(iy+CHR_POSXH),160 >> 1
	ld		(iy+CHR_POSYH),100

	ld		(iy+CHR_WORK0),00h
	ld		(iy+CHR_WORK1),00h
	ld		(iy+CHR_WORK2),00h

	ret

init_ball_br:
	ld		(iy+CHR_PATTERN), PAT_BALL2_BR00
	ld		(iy+CHR_KIND), KIND_BALL_BR

	ld		(iy+CHR_POSXH),160 >> 1
	ld		(iy+CHR_POSYH),100

	ld		(iy+CHR_WORK0),00h
	ld		(iy+CHR_WORK1),00h

	ret

init_ball_brg:
	ld		(iy+CHR_PATTERN), PAT_BALL3_BRG00
	ld		(iy+CHR_KIND), KIND_BALL_BRG

	ld		(iy+CHR_POSXH),160 >> 1
	ld		(iy+CHR_POSYH),100

	ld		(iy+CHR_WORK0),00h
	ld		(iy+CHR_WORK1),00h

	ret

;---------------------------------------------------------------;
;---------------------------------------------------------------;
align 16
ball_speed_x:
	dw		0100h>>1
	dw		-0100h>>1

	dw		0200h>>1
	dw		-0200h>>1

	dw		0300h>>1
	dw		-0300h>>1

align 8
ball_speed_y:
	db		01h
	db		-01h

	db		02h
	db		-02h

	db		03h
	db		-03h

;---------------------------------------------------------------;
;	Ball B, Ball BR, Ball BRG
;	IYreg は保存すること。
;---------------------------------------------------------------;
ball_brg:
	inc		(iy+CHR_WORK2)
	ld		a,(iy+CHR_WORK2)
	rrca
	rrca
	and		02h
	add		a,PAT_BALL3_BRG00
	ld		(iy+CHR_PATTERN),a

	jr		ball_common

ball_b:
	inc		(iy+CHR_WORK2)
	ld		a,(iy+CHR_WORK2)
	rrca
	rrca
	and		02h
	add		a,PAT_BALL_B00
	ld		(iy+CHR_PATTERN),a

	jr		ball_common

ball_br:
	inc		(iy+CHR_WORK2)
	ld		a,(iy+CHR_WORK2)
	rrca
	rrca
	and		02h
	add		a,PAT_BALL2_BR00
	ld		(iy+CHR_PATTERN),a

ball_common:
	ld		hl, ball_speed_x
	ld		a,(fps_mode)
	add		a,(iy+CHR_WORK0)
	add		a,a
	add		a,l
	ld		l,a

	ld		e,(hl)
	inc		l
	ld		d,(hl)

	ld		l,(iy+CHR_POSXL)
	ld		h,(iy+CHR_POSXH)
	add		hl,de

	ld		a,h

	sub		08h>>1
	cp		(320-16)>>1
	jr		c, bab_1
;
	ld		a,(iy+CHR_WORK0)
	xor		01h
	ld		(iy+CHR_WORK0),a
	jr		bab_2

bab_1:
	ld		(iy+CHR_POSXL),l
	ld		(iy+CHR_POSXH),h
bab_2:
	ld		a,(fps_mode)
	add		a,(iy+CHR_WORK1)
	ld		hl, ball_speed_y
	add		a,l
	ld		l,a

	ld		a,(iy+CHR_POSYH)
	add		a,(hl)
	ld		b,a

	sub		08h
	cp		(200-16-3)
	jr		c, bab_3
;
	ld		a,(iy+CHR_WORK1)
	xor		01h
	ld		(iy+CHR_WORK1),a
	jr		bab_4

bab_3:
	ld		(iy+CHR_POSYH),b
bab_4:

	ret


;-------------------------
END
