;---------------------------------------------------------------;
;	Copyright (c) 2019 chara_render.asm
;	This software is released under the MIT License.
;	http://opensource.org/licenses/mit-license.php
;---------------------------------------------------------------; 

;---------------------------------------------------------------;
;	�����L�����o�b�t�@ (128x2)
;	�e���т�
;		+0 �^�C���X�^���v�o�b�t�@(����)
;		+1 �^�C���X�^���v�o�b�t�@(���)
;		+2 Y�T�C�Y (�s�N�Z���P��)
;		+3 X�T�C�Y (�L�����P��)
;---------------------------------------------------------------;
align 256

; �L�����������[�N (Page0�p)
clear_char_work0:
	ds	128

; �L�����������[�N (Page1�p)
clear_char_work1:
	ds	128

;---------------------------------------------------------------;
;	�L�����N�^�`�揈���e�[�u�� (32���)
;	�A�h���X��L,H�ŕ����B
;---------------------------------------------------------------;
align 256
render_chara_jump_tbl:
	; drawtype:00 Plane: B sizey: 16
	db	render_b16_y0	& 0ffh	; 0
	db	render_b16_y1	& 0ffh	; 1
	db	render_b16_y2	& 0ffh	; 2
	db	render_b16_y3	& 0ffh	; 3
	db	render_b16_y4	& 0ffh	; 4
	db	render_b16_y5	& 0ffh	; 5
	db	render_b16_y6	& 0ffh	; 6
	db	render_b16_y7	& 0ffh	; 7

	; drawtype:08 Plane: BR sizey: 16
	db	render_br16_y0	& 0ffh	; 0
	db	render_br16_y1	& 0ffh	; 1
	db	render_br16_y2	& 0ffh	; 2
	db	render_br16_y3	& 0ffh	; 3
	db	render_br16_y4	& 0ffh	; 4
	db	render_br16_y5	& 0ffh	; 5
	db	render_br16_y6	& 0ffh	; 6
	db	render_br16_y7	& 0ffh	; 7

	; drawtype:10 Plane: RGB sizey: 16
	db	render_rgb16_y0	& 0ffh	; 0
	db	render_rgb16_y1	& 0ffh	; 1
	db	render_rgb16_y2	& 0ffh	; 2
	db	render_rgb16_y3	& 0ffh	; 3
	db	render_rgb16_y4	& 0ffh	; 4
	db	render_rgb16_y5	& 0ffh	; 5
	db	render_rgb16_y6	& 0ffh	; 6
	db	render_rgb16_y7	& 0ffh	; 7


;---------------------------------------------------------------;
; �����_�����O�e�[�u�� 32���
; �����͏�ʂ̂݁B
align 256
	; drawtype:00 Plane: B sizey: 16
	db	render_b16_y0	>> 8	; 0
	db	render_b16_y1	>> 8	; 1
	db	render_b16_y2	>> 8	; 2
	db	render_b16_y3	>> 8	; 3
	db	render_b16_y4	>> 8	; 4
	db	render_b16_y5	>> 8	; 5
	db	render_b16_y6	>> 8	; 6
	db	render_b16_y7	>> 8	; 7

	; drawtype:08h Plane: BR sizey: 16
	db	render_br16_y0	>> 8	; 0
	db	render_br16_y1	>> 8	; 1
	db	render_br16_y2	>> 8	; 2
	db	render_br16_y3	>> 8	; 3
	db	render_br16_y4	>> 8	; 4
	db	render_br16_y5	>> 8	; 5
	db	render_br16_y6	>> 8	; 6
	db	render_br16_y7	>> 8	; 7

	; drawtype:10h Plane: RGB sizey: 16
	db	render_rgb16_y0	>> 8	; 0
	db	render_rgb16_y1	>> 8	; 1
	db	render_rgb16_y2	>> 8	; 2
	db	render_rgb16_y3	>> 8	; 3
	db	render_rgb16_y4	>> 8	; 4
	db	render_rgb16_y5	>> 8	; 5
	db	render_rgb16_y6	>> 8	; 6
	db	render_rgb16_y7	>> 8	; 7


;---------------------------------------------------------------;
;	�L�����N�^���������e�[�u�� (32���)
;	�A�h���X��L,H�ŕ�����B
;---------------------------------------------------------------;
align 256
clear_chara_jump_tbl:
	;; DrawType: 00h
	db	clear_size16_y0	& 0ffh	; 0
	db	clear_size16_y1	& 0ffh	; 1
	db	clear_size16_y2	& 0ffh	; 2
	db	clear_size16_y3	& 0ffh	; 3
	db	clear_size16_y4	& 0ffh	; 4
	db	clear_size16_y5	& 0ffh	; 5
	db	clear_size16_y6	& 0ffh	; 6
	db	clear_size16_y7	& 0ffh	; 7

	;; DrawType: 08h
	db	clear_size16_y0	& 0ffh	; 0
	db	clear_size16_y1	& 0ffh	; 1
	db	clear_size16_y2	& 0ffh	; 2
	db	clear_size16_y3	& 0ffh	; 3
	db	clear_size16_y4	& 0ffh	; 4
	db	clear_size16_y5	& 0ffh	; 5
	db	clear_size16_y6	& 0ffh	; 6
	db	clear_size16_y7	& 0ffh	; 7

	;; DrawType: 10h
	db	clear_size16_y0	& 0ffh	; 0
	db	clear_size16_y1	& 0ffh	; 1
	db	clear_size16_y2	& 0ffh	; 2
	db	clear_size16_y3	& 0ffh	; 3
	db	clear_size16_y4	& 0ffh	; 4
	db	clear_size16_y5	& 0ffh	; 5
	db	clear_size16_y6	& 0ffh	; 6
	db	clear_size16_y7	& 0ffh	; 7


;---------------------------------------------------------------;
; �����e�[�u�� 32���
; �����͏�ʂ̂݁B
align 256
clear_chara_jump_tbl_h:
	;; DrawType: 00h
	db	clear_size16_y0	>> 8 ; 0
	db	clear_size16_y1	>> 8 ; 1
	db	clear_size16_y2	>> 8 ; 2
	db	clear_size16_y3	>> 8 ; 3
	db	clear_size16_y4	>> 8 ; 4
	db	clear_size16_y5	>> 8 ; 5
	db	clear_size16_y6	>> 8 ; 6
	db	clear_size16_y7	>> 8 ; 7

	;; DrawType: 08h
	db	clear_size16_y0	>> 8 ; 0
	db	clear_size16_y1	>> 8 ; 1
	db	clear_size16_y2	>> 8 ; 2
	db	clear_size16_y3	>> 8 ; 3
	db	clear_size16_y4	>> 8 ; 4
	db	clear_size16_y5	>> 8 ; 5
	db	clear_size16_y6	>> 8 ; 6
	db	clear_size16_y7	>> 8 ; 7

	;; DrawType: 10h
	db	clear_size16_y0	>> 8 ; 0
	db	clear_size16_y1	>> 8 ; 1
	db	clear_size16_y2	>> 8 ; 2
	db	clear_size16_y3	>> 8 ; 3
	db	clear_size16_y4	>> 8 ; 4
	db	clear_size16_y5	>> 8 ; 5
	db	clear_size16_y6	>> 8 ; 6
	db	clear_size16_y7	>> 8 ; 7


;---------------------------------------------------------------;
; �L�����N�^�`�� (�C�ӃT�C�Y,�N���b�s���O�t��)
; ����:
;	DEreg: posx
;	Areg: posy
;	HLreg: image data
;		+0 �N���b�vY��� (200-sizey-1)
;		+1 �`��^�C�v (0: RGB/SizeY:12 010h: B /SizeY:12 )
;		+2 �N���b�v�E��� (40-sizex+1)
;		+3 �N���b�v����� (64-sizex+1)
;		+4 �T�C�YX (byte�P��)
;		+5 �T�C�YY (�s�N�Z���P��)
;---------------------------------------------------------------;
render_chara_image_w:



; VRAM�A�h���X�����߂�B
	; Ypos �N���b�v���
	cp	(hl)
	ret	nc

	inc	hl

	ex	de,hl

	push hl			; Xpos��Push.

	; Y���W����VRAM�A�h���X(Blue)�����߂�B
	; �����ɕ`��y�[�W (00 or 04h) �� OR����B
	ld	l,a
	ld	h,VRAM_ADRS_TBL_H
	ld	b,(hl)
	inc h
	ld	c,(hl)

	; Y���W�ɍ��킹���`�揈�������ȏ������ŃZ�b�g����B
	and	07h
;;	add	a,a
	ld	l,a

	ld	a,(de)	; �`��^�C�v�� or�B
	inc	de
	or	l
	; �L�����폜�p�ɕ`��^�C�v�����ȏ������ʒu�ɏ������ށB
	ld	( draw_type_buff+1 ),a

	; �`�揈��������߂Ď��ȏ���������B
	ld		l,a
	ld		h, render_chara_jump_tbl >> 8

	ld		a,(hl)
	inc		h
	ld		h,(hl)
	ld		l,a

	ld	(image_jump+1),hl

	; �t���b�v�y�[�W��VRAM�A�h���X�ɔ��f����B
	ld	a,(flip_render_w)
	or	b
	ld	b,a

	pop hl

	; PosX/8
	sra h
	rr	l

	srl l
	srl l

	ld	a,l

	add hl,bc

	; HLreg �� VRAM Adrs.(X���������������Ă���)

	ex	de,hl

	cp	(hl)	; �E�N���b�v����
	inc	hl
	jp	c, rciw_2

	cp	40
	jp	c, rciw_3

	cp	(hl)	; ���N���b�v����
	inc	hl
	ret	c

; ���N���b�v����

	; ���[�̃N���b�v�Ȃ̂� BCreg�ɂ�x=0��VRAM�A�h���X�������Ă���B

	xor	03fh	; ���ɃN���b�v�A�E�g������ (64-xpos)
	inc	a
	ld	d,a

	ld	a,(hl)	; X�T�C�Y - �N���b�v�A�E�g��
	inc	hl
	sub	d

	; Areg: ��ʓ��ɂ͂ݏo����(=�`�敝)�𗠃��W�X�^�ցB
	ex af,af'

	ld	e,(hl)	; �s�b�`Y���f�[�^�ɑ����ăX�L�b�v����B
	inc	hl

	ld	a,d
	ld	d,0
rciw_4:
	add	hl,de
	dec	a
	jp nz, rciw_4

	ex	af,af'

	jp	rciw_1

rciw_3:
; �E�N���b�v����
	ld	b,d
	ld	c,e

	ld	d,a
	ld	a,40
	sub	d

	inc	hl
	inc	hl
	inc	hl

	jp	rciw_1

rciw_2:
; ��ʓ��Ȃ̂ŃN���b�v�������s�v�Ȏ�
	ld	b,d
	ld	c,e

	inc	hl		; ���N���b�v�l�̓X�L�b�v

	ld a,(hl)	; ���T�C�Y(8�h�b�g�P��)
	inc hl

	inc hl		; �c�T�C�Y�̓X�L�b�v

	; Areg: ���T�C�Y�̃��[�v

rciw_1:
	; �폜�L�����o�b�t�@�ւ̏�������
	ex	de,hl
del_char_write_w:
	ld	hl,0000

	ld	(hl),c
	inc	l
	ld	(hl),b
	inc	l

draw_type_buff:
	ld	(hl), 00h	; ���ȏ������ŕ`��^�C�v����������
	inc	l

	ld	(hl),a		; X�T�C�Y(�L�����P��)
	inc	l

	; ���ȏ������ŏ����݃A�h���X���X�V����B
	ld	( del_char_write_w+1 ),hl
	ex	de,hl

rciw_5:
	ex af,af'

	push bc

	; ���ȏ��������ŕ`�揈���փW�����v����B
image_jump:
	call 0000h

	pop bc
	inc bc		; X������ +8

	ex af,af'
	dec a
	jp nz, rciw_5

	ret



;---------------------------------------------------------------; 
;	�e�L�����N�^�̕`��
;---------------------------------------------------------------; 
draw_chara_manager:

	di

	; �����o�b�t�@���g���đO�񏑂������������B
	call	update_clear_buff_w

	ld		iy, chara_work
	ld		b, CHARA_NUM
cmd_1:
	ld		l,(iy+CHR_PATTERN)

	; �L�����p�^�[����0���ǂ�������
	inc		l
	dec		l
	jp		z,cmd_2
;
	; �L�����f�[�^��DEreg�Ɏ擾����B

	push	bc

	inc		l

	ld		h, chara_pivot_table >> 8

	; Ypos+PivotY���v�Z����A'reg�ɕێ��B
	ld		a, (iy+CHR_POSYH)
	add		a, (hl)
	ex		af,af'

	dec		l

	; X���W�͏��9bit��������,����7bit���������ƂȂ��Ă���B
	; 1bit�V�t�g���Đ����������߂�B

	; Xpos(���8bit)��PivotX�𑫂��B(�䂦��PivotX��2�̔{���P��)
	ld		a, (iy+CHR_POSXH)
	add		a, (hl)
	ld		c,a

;;	dec		l			; Index��߂��B

	ld		a, (iy+CHR_POSXL)
	rlca	; 7bit�ڂ�Cy�ɓ����B
	rl		c
	ld		b,00h	; 7
	rl		b		; 8

	; BCreg: Xpos

	; X�����̃I�t�Z�b�g(0-7)�ƃL�����p�^�[���ɑΉ������f�[�^�A�h���X���擾����B
	ld		a, 07h
	and		c
	add		a, chara_data_table >> 8
	ld		h,a

	ld		e,(hl)
	inc		l
	ld		d,(hl)

	; DEreg: �L�����N�^�f�[�^
	ex		de,hl

	ld		e,c
	ld		d,b

	; Ypos+PivotY�𕜋A�B
	ex		af,af'

	call	render_chara_image_w

	call	check_vsync_state

cmd_3:
	pop		bc

cmd_2:
	ld		de, CHR_SIZE
	add		iy,de

	djnz	cmd_1

	; ����̍폜�o�b�t�@�������߂�B
	call	calc_del_char_num

	ei

	ret


;----
	END
