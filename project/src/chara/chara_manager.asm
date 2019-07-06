;---------------------------------------------------------------;
;	Copyright (c) 2019 chara_manager.asm
;	This software is released under the MIT License.
;	http://opensource.org/licenses/mit-license.php
;---------------------------------------------------------------; 
;---------------------------------------------------------------;
; �L�����N�^���[�N�̏�����
;---------------------------------------------------------------;
init_chara_manager:
	ld hl, chara_work
	ld bc, CHR_SIZE * CHARA_NUM
	call clear_mem

	ret

;---------------------------------------------------------------;
; �L�������[�N���m��
; �߂�l:
;	Zflag: ���[�N���m�ۂł���
;	 IXreg: �m�ۂł������[�N�A�h���X
;	NonZflag: ���[�N�̊m�ۂɎ��s
; �ێ�: HLreg�͉󂳂Ȃ��B
;---------------------------------------------------------------;
find_chara_work:
	ld	c, CHARA_NUM

	ld	ix, chara_work
	ld	de, CHR_SIZE
few_1:
	ld	a, (ix+CHR_KIND)
	or	a
	ret	z

	add	ix,de
	dec	c
	jp	nz, few_1

	; Zflag��������B
	dec	c
	ret

;---------------------------------------------------------------;
;---------------------------------------------------------------;
create_ball_b:
	call	find_chara_work_iy
	ret		nz
;
	call	init_ball_b

	xor		a
	ret

;---------------------------------------------------------------;
;---------------------------------------------------------------;
create_ball_br:
	call	find_chara_work_iy
	ret		nz
;
	call	init_ball_br

	xor		a
	ret

;---------------------------------------------------------------;
;---------------------------------------------------------------;
create_ball_brg:
	call	find_chara_work_iy
	ret		nz
;
	call	init_ball_brg

	xor		a
	ret

;---------------------------------------------------------------;
; �G�L�������[�N���m�� (IYreg)
; �߂�l:
;	Zflag: ���[�N���m�ۂł���
;	 IYreg: �m�ۂł������[�N�A�h���X
;	NonZflag: ���[�N�̊m�ۂɎ��s
;	����: HLreg��j�󂵂Ȃ����B
;---------------------------------------------------------------;
find_chara_work_iy:
	ld	iy, chara_work
	ld	c, CHARA_NUM
	ld	de, CHR_SIZE
fewi_1:
	ld	a, (iy+CHR_KIND)
	or	a
	ret	z

	add	iy,de
	dec	c
	jp	nz, fewi_1

	; Zflag��������B
	dec	c
	ret

remove_chara:
	ld		iy, chara_work + (CHARA_NUM-1) * CHR_SIZE
	ld		c, CHARA_NUM
	ld		de, -CHR_SIZE
rech_2:
	ld		a,(iy+CHR_KIND)
	or		a
	jr		nz, rech_1
;
	add		iy,de

	dec		c
	jp		nz, rech_2
;
	ret

rech_1:
	ld		(iy+CHR_KIND),00h
	ld		(iy+CHR_PATTERN),00h

	ret

;---------------------------------------------------------------;
; �G�L�������[�N���m�� (IXreg)
; �߂�l:
;	Zflag: ���[�N���m�ۂł���
;	 IXreg: �m�ۂł������[�N�A�h���X
;	NonZflag: ���[�N�̊m�ۂɎ��s
;	����: HLreg��j�󂵂Ȃ����B
;---------------------------------------------------------------;
find_chara_work_ix:
	ld	ix, chara_work
	ld	c, CHARA_NUM
	ld	de, CHR_SIZE
fcwi_1:
	ld	a, (ix+CHR_KIND)
	or	a
	ret	z

	add	ix,de
	dec	c
	jp	nz, fcwi_1

	; Zflag��������B
	dec	c
	ret


;---------------------------------------------------------------;
;	�L�����N�^����������
;	Areg: �L�����N�^Kind
;	IYreg: �L�����N�^���[�N
kind_init_jump:
	ld	(iy+CHR_KIND),a

	; ���ȏ������ɂ��e�[�u���W�����v
	ld	(kij_1+1),a	; 13
kij_1:
	jr	kij_1		; 12

	jp	jump_none			; 0
	jp	init_ball_b			; 1*3
	jp	init_ball_br		; 2*3
	jp	init_ball_brg		; 3*3

;---------------------------------------------------------------;
;	�L�����N�^�X�V����
kind_jump:
	; ���ȏ������ɂ��e�[�u���W�����v
	ld	(kj_1+1),a	; 13
kj_1:
	jr	kj_1		; 12

	jp	jump_none			; 0
	jp	ball_b				; 1*3
	jp	ball_br				; 2*3
	jp	ball_brg			; 3*3


;---------------------------------------------------------------; 
;	�e�L�����N�^�̍X�V
;---------------------------------------------------------------; 
update_chara_manager:
	; �{�[����FPS����
	call	update_function

	; �L�����N�^���X�V
	ld		iy, chara_work
	ld		b,CHARA_NUM
cmu_1:
	push	bc

	ld		a,(iy+CHR_KIND)
	or		a
	call	nz, kind_jump

	ld		de, CHR_SIZE
	add		iy,de

	pop		bc

	djnz	cmu_1

jump_none:
	ret

;---------------------------------------------------------------;
;	�{�[����FPS�̐���
;---------------------------------------------------------------;
update_function:
	ld		a, (trg_w)
	BIT_A_0_KEY_UP
	jp		z, dup_1
;
	; �{�[��(B)����ǉ��B
	call	create_ball_b
	ret		nz
;
	call	inc_chara_num
	call	render_chara_num

	ret

dup_1:
	BIT_A_1_KEY_DOWN
	jp		z, dup_2
;
	; �{�[��(BR)����ǉ��B
	call	create_ball_br
	ret		nz
;
	call	inc_chara_num
	call	render_chara_num

	ret

dup_2:
	BIT_A_2_KEY_LEFT
	jp		z, dup_3
;
	; �{�[��(BRG)����ǉ��B
	call	create_ball_brg
	ret		nz
;
	call	inc_chara_num
	call	render_chara_num

	ret

dup_3:
	BIT_A_3_KEY_RIGHT
	jp		z, dup_4
;
	; �{�[�����폜
	call	remove_chara
	jp		z, dup_4
;
	call	dec_chara_num
	call	render_chara_num

	ret

dup_4:
	BIT_A_5_KEY_TRG1
	jp		z, dup_5
;
	ld		a,(fps_mode)
	add		a,02h
	cp		06h
	jr		c, dup_6
;
	xor		a
dup_6:
	ld		(fps_mode),a

	call	render_fps_mode
	ret

dup_5:
	ret

;;----------------------
	END

