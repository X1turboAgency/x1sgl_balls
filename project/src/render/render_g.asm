;---------------------------------------------------------------;
;	Copyright (c) 2019 render_g.asm
;	This software is released under the MIT License.
;	http://opensource.org/licenses/mit-license.php
;---------------------------------------------------------------; 

;---------------------------------------------------------------;
; �v���[�� G 1���C���`��
; ����
;	HLreg: �L�����f�[�^
;	BCreg: �`��VRAM�A�h���X
;	Ereg: �r�b�g���C���f�[�^
;---------------------------------------------------------------;
rc_image_g1:
	ld		d,b		; Dreg��Breg���o�b�t�@�B

	ld		a,b
	or		BITLINE_MASK
	ld		b,a

	ld		a,(bc)
	and		e
	jp		nz, rc_blend_g1

	ld		a,(bc)
	or		e
	ld		(bc),a

	ld		a, 080h+1
	add		a,d
	ld		b,a

	OUT_G_HL

	; G�Ȃ̂œ��ɏC���Ȃ��B

	ret

rc_blend_g1:
	ld		a,(bc)
	or		e
	ld		(bc),a

	ld		b,d		; Breg�ɕ��A�B
	ld		d, 040h

	jp		rc_blend_g1_line


;---------------------------------------------------------------;
; �v���[�� G 2���C���`��
; ����
;	HLreg: �L�����f�[�^
;	BCreg: �`��VRAM�A�h���X
;	Ereg: �r�b�g���C���f�[�^
;---------------------------------------------------------------;
rc_image_g2:
	ld		d,b		; Dreg��Breg���o�b�t�@�B

	ld		a,b
	or		BITLINE_MASK
	ld		b,a

	ld		a,(bc)
	and		e
	jp		nz, rc_blend_g2
;
	ld		a,(bc)
	or		e
	ld		(bc),a

	; B��G�v���[���ɂ���B�X�� OUTI�p��+1���� Areg�ɂ��c���B
	ld		a,d
	ld		de, 08008h		; Dreg: �v���[�������p, Ereg: ���C�������p
	inc		a
	add		a,d
	ld		b,a

	jp		rc_write_g2_line

rc_blend_g2:
	ld		a,(bc)
	or		e
	ld		(bc),a

	ld		b,d		; Breg�ɕ��A�B
	ld		d, 40h

	jp		rc_blend_g2_line


;---------------------------------------------------------------;
; �v���[�� G 3���C���`��
; ����
;	HLreg: �L�����f�[�^
;	BCreg: �`��VRAM�A�h���X
;	Ereg: �r�b�g���C���f�[�^
;---------------------------------------------------------------;
rc_image_g3:
	ld		d,b		; Dreg��Breg���o�b�t�@�B

	ld		a,b
	or		BITLINE_MASK
	ld		b,a

	ld		a,(bc)
	and		e
	jp		nz, rc_blend_g3

	ld		a,(bc)
	or		e
	ld		(bc),a

	; B��G�v���[���ɂ���B�X�� OUTI�p��+1���� Areg�ɂ��c���B
	ld		a,d
	ld		de, 08008h		; Dreg: �v���[�������p, Ereg: ���C�������p
	inc		a
	add		a,d
	ld		b,a

	jp		rc_write_g3_line

rc_blend_g3:
	ld		a,(bc)
	or		e
	ld		(bc),a

	ld		b,d		; Breg�ɕ��A�B
	ld		d, 40h

	jp		rc_blend_g3_line

;---------------------------------------------------------------;
; �v���[�� G 4���C���`��
; ����
;	HLreg: �L�����f�[�^
;	BCreg: �`��VRAM�A�h���X
;	Ereg: �r�b�g���C���f�[�^
;---------------------------------------------------------------;
rc_image_g4:
	ld		d,b		; Dreg��Breg���o�b�t�@�B

	ld		a,b
	or		BITLINE_MASK
	ld		b,a

	ld		a,(bc)
	and		e
	jp		nz, rc_blend_g4

	ld		a,(bc)
	or		e
	ld		(bc),a

	; B��G�v���[���ɂ���B�X�� OUTI�p��+1���� Areg�ɂ��c���B
	ld		a,d
	ld		de, 08008h		; Dreg: �v���[�������p, Ereg: ���C�������p
	inc		a
	add		a,d
	ld		b,a

	jp		rc_write_g4_line

rc_blend_g4:
	ld		a,(bc)
	or		e
	ld		(bc),a

	ld		b,d		; Breg�ɕ��A�B
	ld		d, 40h

	jp		rc_blend_g4_line

;---------------------------------------------------------------;
; �v���[�� G 5���C���`��
; ����
;	HLreg: �L�����f�[�^
;	BCreg: �`��VRAM�A�h���X
;	Ereg: �r�b�g���C���f�[�^
;---------------------------------------------------------------;
rc_image_g5:
	ld		d,b		; Dreg��Breg���o�b�t�@�B

	ld		a,b
	or		BITLINE_MASK
	ld		b,a

	ld		a,(bc)
	and		e
	jp		nz, rc_blend_g5

	ld		a,(bc)
	or		e
	ld		(bc),a

	; B��G�v���[���ɂ���B�X�� OUTI�p��+1���� Areg�ɂ��c���B
	ld		a,d
	ld		de, 08008h		; Dreg: �v���[�������p, Ereg: ���C�������p
	inc		a
	add		a,d
	ld		b,a

	jp		rc_write_g5_line

rc_blend_g5:
	ld		a,(bc)
	or		e
	ld		(bc),a

	ld		b,d		; Breg�ɕ��A�B
	ld		d, 40h

	jp		rc_blend_g5_line

;---------------------------------------------------------------;
; �v���[�� G 6���C���`��
; ����
;	HLreg: �L�����f�[�^
;	BCreg: �`��VRAM�A�h���X
;	Ereg: �r�b�g���C���f�[�^
;---------------------------------------------------------------;
rc_image_g6:
	ld		d,b		; Dreg��Breg���o�b�t�@�B

	ld		a,b
	or		BITLINE_MASK
	ld		b,a

	ld		a,(bc)
	and		e
	jp		nz, rc_blend_g6

	ld		a,(bc)
	or		e
	ld		(bc),a

	; B��G�v���[���ɂ���B�X�� OUTI�p��+1���� Areg�ɂ��c���B
	ld		a,d
	ld		de, 08008h		; Dreg: �v���[�������p, Ereg: ���C�������p
	inc		a
	add		a,d
	ld		b,a

	jp		rc_write_g6_line

rc_blend_g6:
	ld		a,(bc)
	or		e
	ld		(bc),a

	ld		b,d		; Breg�ɕ��A�B
	ld		d, 40h

	jp		rc_blend_g6_line

;---------------------------------------------------------------;
; �v���[�� G 7���C���`��
; ����
;	HLreg: �L�����f�[�^
;	BCreg: �`��VRAM�A�h���X
;	Ereg: �r�b�g���C���f�[�^
;---------------------------------------------------------------;
rc_image_g7:
	ld		d,b		; Dreg��Breg���o�b�t�@�B

	ld		a,b
	or		BITLINE_MASK
	ld		b,a

	ld		a,(bc)
	and		e
	jp		nz, rc_blend_g7

	ld		a,(bc)
	or		e
	ld		(bc),a

	; B��G�v���[���ɂ���B�X�� OUTI�p��+1���� Areg�ɂ��c���B
	ld		a,d
	ld		de, 08008h		; Dreg: �v���[�������p, Ereg: ���C�������p
	inc		a
	add		a,d
	ld		b,a

	jp		rc_write_g7_line

rc_blend_g7:
	ld		a,(bc)
	or		e
	ld		(bc),a

	ld		b,d		; Breg�ɕ��A�B
	ld		d, 40h

	jp		rc_blend_g7_line

;---------------------------------------------------------------;
; �v���[��: R 8���C���`��
; ����
;	HLreg: �L�����f�[�^
;	BCreg: �`��VRAM�A�h���X
;---------------------------------------------------------------;
rc_image_g8:
	; VRAM Adrs(BCreg)����BitLineBuff�����߂�B
	; BitLineBuff�� 0f8xx�ɂ���̂ŁAf800�� OR����Ƌ��܂�B
	; Ereg: �r�b�g���C���f�[�^

	ld		d,b		; Dreg��Breg���o�b�t�@�B

	ld		a,b
	or		BITLINE_MASK
	ld		b,a

	ld		a,(bc)
	or		a
	jp		nz, rc_blend_g8

	ld		a,0ffh
	ld		(bc),a

	; Dreg�𕜋A���āABlue��Green�v���[���ցB
	; ���̍ۂ� OUTI�p��+1����Areg�ɂ��c���B
	ld		a,d
	ld		de, 08008h	; Dreg: �v���[�������p Ereg: ���C�������p(08h)
	inc		a
	add		a,d
	ld		b,a

	OUT_G_HL_ADD_E
rc_write_g7_line:
	OUT_G_HL_ADD_E
rc_write_g6_line:
	OUT_G_HL_ADD_E
rc_write_g5_line:
	OUT_G_HL_ADD_E
rc_write_g4_line:
	OUT_G_HL_ADD_E
rc_write_g3_line:
	OUT_G_HL_ADD_E
rc_write_g2_line:
	OUT_G_HL_ADD_E
	OUT_G_HL

	; G�v���[���Ȃ̂œ��ɏC���Ȃ��B

	ret

rc_blend_g8:
	ld		a,0ffh
	ld		(bc),a

	ld		b,d		; Breg�ɕ��A�B
	ld		d, 40h	; �v���[�������p

	; 3�v���[���ƃu�����h����̂�B�v���[����OK.

	BLEND_G_HL_ADD_B_D
	ADD_B_88

rc_blend_g7_line:
	BLEND_G_HL_ADD_B_D
	ADD_B_88

rc_blend_g6_line:
	BLEND_G_HL_ADD_B_D
	ADD_B_88

rc_blend_g5_line:
	BLEND_G_HL_ADD_B_D
	ADD_B_88

rc_blend_g4_line:
	BLEND_G_HL_ADD_B_D
	ADD_B_88

rc_blend_g3_line:
	BLEND_G_HL_ADD_B_D
	ADD_B_88

rc_blend_g2_line:
	BLEND_G_HL_ADD_B_D
	ADD_B_88

rc_blend_g1_line:
	BLEND_G_HL_ADD_B_D

	ret


;----
	END
