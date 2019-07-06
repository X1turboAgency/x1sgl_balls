;---------------------------------------------------------------;
;	Copyright (c) 2019 input.asm
;	This software is released under the MIT License.
;	http://opensource.org/licenses/mit-license.php
;---------------------------------------------------------------; 

; bit0: 上
; bit1: 下
; bit2: 左
; bit3: 右
; bit5: ボタンA (トリガ1)
; bit6: ボタンB (トリガ2)

init_keyboard:
	ld		a,0e4h
	call	subcpu_send

	ld		a, 010h
	call	subcpu_send

	ld		hl, int_keyboard
	ld		( INT_VECTOR_KEYBOARD ),hl

	ld		hl, 0ff00h
	ld		(subcpu_key_w),hl

	ret

subcpu_send:
	push	af
	ld		bc, 1a01h
su_se_1:
	in		a,(c)
	bit		6,a
	jr		nz, su_se_1
;
	pop		af

	ld		bc, 1900h
	out		(c),a
	ret

subcpu_recv:
	ld		bc, 1a01h
su_re_1:
	in		a,(c)
	bit		5,a
	jr		nz,su_re_1
;
	ld		bc, 1900h
	in		a,(c)
	ret

int_keyboard:
	di
	push	af
	push	bc
	push	de

	call	subcpu_recv		; function部
	ld		d,a
	call	subcpu_recv		; asciiコード部
	ld		e,a

	ld		(subcpu_key_w),de

	pop		de
	pop		bc
	pop		af
	ei
	reti

read_keyboard:
	di
	ld		a,(subcpu_key_w+00h)	; asciiコード部
	ei

	ret

;//---------------------------------------------------------------; 
;//		ジョイスティックの初期化
;//---------------------------------------------------------------; 
init_input:
	xor	a
	ld	(joy_w),a
	ld	(trg_w),a

	ld	(joy_w_2p),a
	ld	(trg_w_2p),a

	ret

align 4
keyboard_bit_tbl:
	db	01h,02h,04h,08h

;//---------------------------------------------------------------; 
;//		ジョイスティックの読み込み
;//	現在のジョイスティックのデータと、トリガー情報を算出
;//	したものをワークにセットする。
;//
;//	joy_w:	現在のジョイスティック
;//	Areg,trg_w:	トリガー
;//---------------------------------------------------------------; 
update_input:
	ld		a,(joy_w)
	ld		e,a

	call	read_keyboard

	ld		b, 20h
	cp		' '
	jr		z, upin_1
;
	ld		b, 00h
	sub		'1'
	jr		c, upin_1
;
	cp		04h
	jr		nc, upin_1
;
	add		a, keyboard_bit_tbl & 0ffh
	ld		l,a
	ld		h, keyboard_bit_tbl >> 8
	ld		b,(hl)
upin_1:
	ld		a,b
	ld		(joy_w),a

	xor		e
	and		b
	ld		(trg_w),a

	ret

; bit0: 上
; bit1: 下
; bit2: 左
; bit3: 右
; bit4: 未使用
; bit5: トリガ1
; bit6: トリガ2
; bit7: 未使用

; 1P側
trg_w:
	ds		1

joy_w:
	ds		1

; 2P側(デバッグ用)
trg_w_2p:
	ds		1

joy_w_2p:
	ds		1

subcpu_key_w:
	ds		2

	END
