;---------------------------------------------------------------;
;	Copyright (c) 2019 text_render.asm
;	This software is released under the MIT License.
;	http://opensource.org/licenses/mit-license.php
;---------------------------------------------------------------; 

;---------------------------------------------------------------;
;	�e�L�X�g�`��֘A
;---------------------------------------------------------------;

;---------------------------------------------------------------;
;	�L�����������Z����B
;	Areg: ���Z��
;		BCD�Ȃ̂� 1�����ꍇ�� 01h ���w�肷��B
;---------------------------------------------------------------;
inc_chara_num:
	ld		hl, num_buff

	ld		a,(hl)
	add		a,01h
	daa
	ld		(hl),a

	ret

;---------------------------------------------------------------;
;	�L�����������Z����B
;	Areg: ���Z��
;		BCD�Ȃ̂� 1�����ꍇ�� 01h ���w�肷��B
;---------------------------------------------------------------;
dec_chara_num:
	ld		hl, num_buff

	ld		a,(hl)
	sub		01h
	daa
	ld		(hl),a

	ret

;---------------------------------------------------------------;
;	�L�������`�揈��
;---------------------------------------------------------------;
render_chara_num:
	ld		a,(num_buff)

	ld		bc, TEXT_VRAM_ADRS + 40*1 + 5
	ld		d,a
	RRCA4
	and		0fh
	add		a, 030h
	ld		h,a
	out		(c),a

	inc		bc

	ld		a,d
	and		0fh
	add		a, 030h
	out		(c),a

	ld		b, ( (TEXT_VRAM_ADRS + 40*1 + 5)>>8 ) + FLIP_ADRS
	out		(c),a

	dec		bc
	out		(c),h

	ret

;---------------------------------------------------------------; 
;---------------------------------------------------------------; 
disp_frame_dropout:
	ld		hl, dropout_cl_str
	ld		bc, TEXT_VRAM_ADRS + 40*5 + 1
	ld		a, (frame_dropout)
	or		a
	jr		z, dfd_1
;
	dec		a
	ld		(frame_dropout),a
	ld		hl, dropout_str
dfd_1:
	jp		render_text_2page

dropout_cl_str:
	db		"       ", 0

dropout_str:
	db		"Dropout", 0

;---------------------------------------------------------------;
;	FPS ���[�h��\��
;---------------------------------------------------------------;
render_fps_mode:
	ld		hl, fps_str_table
	ld		a, (fps_mode)
	rrca
	add		a,l
	ld		l,a
	ld		a,(hl)

	ld		e, '0'

	ld		bc, TEXT_VRAM_ADRS + 40*3 + 5
	out		(c),a
	inc		bc
	out		(c),e

	ld		b, ( (TEXT_VRAM_ADRS + 40*3 + 5)>>8 ) + FLIP_ADRS
	out		(c),e

	dec		bc
	out		(c),a

	ret

align 4
fps_str_table:
	db		"632"

;---------------------------------------------------------------;
;	TEXT VRAM ������ (Page0,Page1 ����)
; BCreg: VRAM�A�h���X
; HLreg: ������f�[�^ (�I�[ 00h)
;---------------------------------------------------------------;
render_text_2page:
	push	hl
	push	bc
	call	render_text
	pop		bc
	ld		a,b
	or		FLIP_ADRS
	ld		b,a
	pop		hl

;---------------------------------------------------------------;
;	TEXT VRAM ������
; BCreg: VRAM�A�h���X
; HLreg: ������f�[�^ (�I�[ 00h)
;---------------------------------------------------------------;
render_text:
rete_1:
	ld		a,(hl)
	or		a
	ret		z

	out		(c),a
	inc		bc
	inc		hl

	jp		rete_1


;----
	END
