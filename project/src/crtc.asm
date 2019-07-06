;---------------------------------------------------------------;
;	Copyright (c) 2019 crtc.asm
;	This software is released under the MIT License.
;	http://opensource.org/licenses/mit-license.php
;---------------------------------------------------------------;

;//---------------------------------------------------------------; 
;//	CRTC�ݒ�
;//		in: HLreg:	CRTC�f�[�^
;//---------------------------------------------------------------; 
set_crtc80:
	ld	hl, crtc80_H
	jr		set_crtc

set_crtc40:
	ld	hl, crtc40_L
set_crtc:
	ld	de,000eh
	ld	bc,01800h
sc_1:
	out	(c),d
	inc	bc

	ld	a,(hl)
	inc	hl

	out	(c),a
	dec	bc

	inc	d
	dec	e
	jr	nz,sc_1
;
	ld	a,(hl)			; 40/80���̐؂�ւ�
	inc hl
	ld	bc,01a03h
	out	(c),a

IF 0
	; ��ʊǗ��|�[�g: ��𑜓x/25���C��
	ld a,(hl)
	ld	bc,01fd0h
	out	(c),a
ENDIF

	ret

;//---------------------------------------------------------------; 
;//		CRTC�ݒ�f�[�^ 40��/80��
;//---------------------------------------------------------------; 
crtc40_L:
	db	37h,28h,2dh,34h,1fh,02h,19h,1ch,00h,07h,00h,00h,00h,00h,0dh
	; 01fd0 - �݊����[�h
	db	CRTC_1FD0_L

crtc40_H:
	db	35h,28h,2dh,84h,1bh,00h,19h,1ah,00h,0fh,00h,00h,00h,00h,0dh
	; 01fd0 - PCG�����A�N�Z�X���[�h On
	db	CRTC_1FD0

crtc80_L:
	db	6bh,50h,59h,38h,1fh,02h,19h,1ch,00h,07h,00h,00h,00h,00h,0ch
	db	00h

crtc80_H:
	db	6bh,50h,59h,88h,1bh,00h,19h,1ah,00h,0fh,00h,00h,00h,00h,0ch
	db	03h

;//---------------------------------------------------------------; 
;//	�ؑ֏�����
;//---------------------------------------------------------------; 
init_screen:
	; �폜�L�����o�b�t�@��������
	; ������ Page1�p
	ld	hl, clear_char_work1
	ld	( del_char_write_w+1 ),hl

	ret

;//---------------------------------------------------------------; 
;//---------------------------------------------------------------; 
init_flip:
	xor		a
	ld		( flip_w ),a
	ld		( flip_delchr_w ),a
	ld		( vsync_state), a
	ld		( vsync_w ),a

	ld		a, 04h
	ld		( flip_render_w ),a

	ret


;//---------------------------------------------------------------; 
;//	Screen0,Screen1��؂�ւ���B
;//---------------------------------------------------------------; 
flip_screen:
	ld	bc, 01800h
	ld	a, 0ch		; CRTC 12Reg.
	out	(c),a

	; flip_w(�\���y�[�W)�� xor 04h �Ŕ��]����B
	; flip_render_w �́A���̔��]�Ȃ̂ŁA�P�ɃR�s�[���邾���ŃI�P�[�B

	ld	a,(flip_w)	; 0
	ld	(flip_render_w),a	; 0
	xor	FLIP_ADRS
	ld	(flip_w),a	; 4

	inc	c
	out	(c),a

setup_clear_char_work:
	; flip_w = 0 ���A�����L�������[�N clear_char_work1
	; flip_w = 4 ���A�����L�������[�N clear_char_work0
	ld	hl, clear_char_work1
	ld	de, clear_char_work0
	or	a
	jp	z, fsc_1

	ex	de,hl
fsc_1:
	ld	( del_char_write_w+1 ),hl
	ld	( del_char_read_w+1 ),hl

	ret


align 8
del_char_num_w:
	db	000h	; Page0�̍폜�L�����o�b�t�@��

;
; �������̂��ߍ폜�L�����o�b�t�@����z�u��4byte align�ɂ��Ă���B
; �X�L�}�����������Ȃ��̂ł����� flip_w�֌W�̃��[�N�𖄂߂Ă����B

flip_w:
	; FlipWork
	; �\���y�[�W���i�[����B
	; 000h�̎� �`��y�[�W1,�\���y�[�W0
	; 004h�̎� �`��y�[�W0,�\���y�[�W1
	db	000h

flip_render_w:
	; �`��y�[�W���i�[����Bflip_w �Ƃ͔��΂̏�ԁB
	; 000h�̎� �`��y�[�W0
	; 004h�̎� �`��y�[�W1
	db	004h

flip_delchr_w:
	; �폜�L�����o�b�t�@�y�[�W���i�[����B
	; 000h �̎� �폜�L�����o�b�t�@������ 0,�폜�L�����o�b�t�@�Ǐo�� 1
	; 001h �̎� �폜�L�����o�b�t�@������ 1,�폜�L�����o�b�t�@�Ǐo�� 0
	db	000h

del_char_num_w_page1:
	db	000h	; Page1�̍폜�L�����o�b�t�@��

	; �t���[�����Ƃ̃J�E���^
frame_cnt:
	ds	1

align 2
vsync_w:
	db	000h

vsync_state:
	db	000h

; FPS
; 00: 60fps 02: 30fps 04: 20fps
fps_mode:
	db	000h

frame_dropout:
	db	000h


;//---------------------------------------------------------------;
;//---------------------------------------------------------------;
wait_vsync_fps:
	ld		a,(fps_mode)
	sra		a
	jr		z, wait_vsync60_state	; 60fps Vsync�҂�
;
	dec		a
	jr		nz, wait_vsync20_state	; 20fps Vsync�҂�
;
	jp		wait_vsync30_state		; 30fps Vsync�҂�

;//---------------------------------------------------------------;
;//---------------------------------------------------------------;
; VSync(60fps)�҂�
wait_vsync60_state:
	ld		a, (vsync_state )
	cp		02h
	jr		c, wvs60_3
;
	ld		a, 60
	ld		(frame_dropout),a
wvs60_3:

	; State0: Vsync�J�n�҂�
	ld		bc, 1a01h
wvs60_1:
	in		a,(c)
	jp		p,wvs60_1
;
	; State1: Vsync�J�n
wvs60_2:
	in		a,(c)
	jp		m,wvs60_2

	and		080h
	ld		(vsync_w),a

	xor		a
	ld		(vsync_state),a

	ret

; VSync(30fps)�҂�
wait_vsync30_state:
	ld		a, (vsync_state )
	cp		04h
	jr		c, wvs_5
;
	ld		a, 30
	ld		(frame_dropout),a
wvs_5:

	ld		bc, 1a01h

	ld		a, (vsync_state)
	or		a
	jp		z, wvs_1
;
	dec		a
	jp		z, wvs_2
;
	dec		a
	jp		z, wvs_3
;
	jp		wvs_4

	; State0: Vsync�J�n�҂�
wvs_1:
	in	a,(c)
	jp	p,wvs_1
;
	; State1: Vsync�I���҂�
wvs_2:
	in	a,(c)
	jp	m, wvs_2
;
	; State2: Vsync�J�n�҂�
wvs_3:
	in	a,(c)
	jp	p, wvs_3

wvs_4:
	in	a,(c)
	jp	m, wvs_4

	; �J�n������State0�ɖ߂��B

	and		080h
	ld		(vsync_w),a

	xor		a
	ld		(vsync_state),a

	ret


; VSync(20fps)�҂�
wait_vsync20_state:
	ld		a, (vsync_state )
	cp		06h
	jr		c, wvs20_7
;
	ld		a, 20
	ld		(frame_dropout),a
wvs20_7:

	ld	bc, 1a01h

	ld	a, (vsync_state)
	or	a
	jp	z, wvs20_1

	dec	a
	jp	z, wvs20_2

	dec	a
	jp	z, wvs20_3

	dec	a
	jp	z, wvs20_4

	dec	a
	jp	z, wvs20_5

	jp	wvs20_6

	; State0: Vsync�J�n�҂� (1�t���[����)
wvs20_1:
	in	a,(c)
	jp	p,wvs20_1
;
	; State1: Vsync�I���҂�
wvs20_2:
	in	a,(c)
	jp	m, wvs20_2
;
	; State2: Vsync�J�n�҂� (2�t���[����)
wvs20_3:
	in	a,(c)
	jp	p, wvs20_3

	; State3: Vsync�I���҂�
wvs20_4:
	in	a,(c)
	jp	m, wvs20_4

	; State4: Vsync�J�n�҂� (3�t���[����)
wvs20_5:
	in	a,(c)
	jp	p, wvs20_5

	; State5: Vsync�I���҂�
wvs20_6:
	in	a,(c)
	jp	m, wvs20_6

	; �J�n������State0�ɖ߂��B
	and		080h
	ld		(vsync_w),a

	xor		a
	ld		(vsync_state),a

	ret

; Vsync���`�F�b�N����State��ύX����B
; VBlank�̃G�b�W���� State��+1����B
check_vsync_state:
	ld	hl, vsync_w
	ld	bc, 1a01h
	in	a,(c)
	and	080h
	cp	(hl)
	ret	z		; �O���VSync��ԂƔ�r�B
;
	ld	(hl),a
	inc	l

	; �قȂ��Ă���� vsync_state��+1����B
	; 0�t���[����(Vsync�O) �� 0
	; 0�t���[����(Vsync��) �� 1
	; 1�t���[����(Vsync�O) �� 2
	; 1�t���[����(Vsync��) �� 3
	; 2�t���[����(Vsync�O) �� 4
	; 2�t���[����(Vsync��) �� 5

	inc	(hl)	; State��+1����B
	ret


;//---------------------------------------------------------------; 
;//	VSync(�����A������)�̃G�b�W��҂B
;//---------------------------------------------------------------; 
wait_vsync:
	ld hl,0000h
	ld de,0000h

	ld bc, 1a01h
edge_1:
	inc hl

	in a,(c)
	jp p,edge_1

edge_2:
	inc de

	in a,(c)
	jp m,edge_2

	ret

;//---------------------------------------------------------------; 
;//	VSync�̊J�n��҂B
;//---------------------------------------------------------------; 
wait_vsync0:
	ld bc, 1a01h
ill_1:
	in a,(c)
	jp m,ill_1

	ret


; �^�C�}�[�B200h�񃋁[�v�� �� 3.499msec�B
wait_time:
	ld	hl, 0200h
wt_1:
	dec	hl
	ld	a,h
	or	l
	jr	nz, wt_1

	ret


;---------------------------------------------------------------; 
; �A�N�Z�X(R/W)VRAM�o���N�� VRAM1�ɐݒ�
;---------------------------------------------------------------; 
set_vram1:
	ld		a, CRTC_1FD0_L | 0x10
	ld		bc, 01fd0h
	out		(c),a
	ret

;---------------------------------------------------------------; 
; �A�N�Z�X(R/W)VRAM�o���N�� VRAM0�ɐݒ�
;---------------------------------------------------------------; 
set_vram0:
	ld		a, CRTC_1FD0_L
	ld		bc, 01fd0h
	out		(c),a
	ret


;---------------------------------------------------------------; 
	END

