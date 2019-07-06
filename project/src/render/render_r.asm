;---------------------------------------------------------------;
;	Copyright (c) 2019 render_r.asm
;	This software is released under the MIT License.
;	http://opensource.org/licenses/mit-license.php
;---------------------------------------------------------------; 

;---------------------------------------------------------------;
; �v���[�� R 1���C���`��
; ����
;	HLreg: �L�����f�[�^
;	BCreg: �`��VRAM�A�h���X
;	Ereg: �r�b�g���C���f�[�^
;---------------------------------------------------------------;
rc_image_r1:
	ld		d,b		; Dreg��Breg���o�b�t�@�B

	ld		a,b
	or		BITLINE_MASK
	ld		b,a

	ld		a,(bc)
	and		e
	jp		nz, rc_blend_r1

	ld		a,(bc)
	or		e
	ld		(bc),a

	ld		a, 040h+1
	add		a,d
	ld		b,a

	OUT_B_HL
	ADD_B_40	; �������̂��� R��G

	ret

rc_blend_r1:
	ld		a,(bc)
	or		e
	ld		(bc),a

	ld		b,d		; Breg�ɕ��A�B
	ld		d, 040h

	jp		rc_blend_r1_line


;---------------------------------------------------------------;
; �v���[�� R 2���C���`��
; ����
;	HLreg: �L�����f�[�^
;	BCreg: �`��VRAM�A�h���X
;	Ereg: �r�b�g���C���f�[�^
;---------------------------------------------------------------;
rc_image_r2:
	ld		d,b		; Dreg��Breg���o�b�t�@�B

	ld		a,b
	or		BITLINE_MASK
	ld		b,a

	ld		a,(bc)
	and		e
	jp		nz, rc_blend_r2
;
	ld		a,(bc)
	or		e
	ld		(bc),a

	; B��R�v���[���ɂ���B�X�� OUTI�p��+1���� Areg�ɂ��c���B
	ld		a,d
	ld		de, 04008h		; Dreg: �v���[�������p, Ereg: ���C�������p
	inc		a
	add		a,d
	ld		b,a

	jp		rc_write_r2_line

rc_blend_r2:
	ld		a,(bc)
	or		e
	ld		(bc),a

	ld		b,d		; Breg�ɕ��A�B
	ld		d, 40h

	jp		rc_blend_r2_line


;---------------------------------------------------------------;
; �v���[�� R 3���C���`��
; ����
;	HLreg: �L�����f�[�^
;	BCreg: �`��VRAM�A�h���X
;	Ereg: �r�b�g���C���f�[�^
;---------------------------------------------------------------;
rc_image_r3:
	ld		d,b		; Dreg��Breg���o�b�t�@�B

	ld		a,b
	or		BITLINE_MASK
	ld		b,a

	ld		a,(bc)
	and		e
	jp		nz, rc_blend_r3

	ld		a,(bc)
	or		e
	ld		(bc),a

	; B��R�v���[���ɂ���B�X�� OUTI�p��+1���� Areg�ɂ��c���B
	ld		a,d
	ld		de, 04008h		; Dreg: �v���[�������p, Ereg: ���C�������p
	inc		a
	add		a,d
	ld		b,a

	jp		rc_write_r3_line

rc_blend_r3:
	ld		a,(bc)
	or		e
	ld		(bc),a

	ld		b,d		; Breg�ɕ��A�B
	ld		d, 40h

	jp		rc_blend_r3_line

;---------------------------------------------------------------;
; �v���[�� R 4���C���`��
; ����
;	HLreg: �L�����f�[�^
;	BCreg: �`��VRAM�A�h���X
;	Ereg: �r�b�g���C���f�[�^
;---------------------------------------------------------------;
rc_image_r4:
	ld		d,b		; Dreg��Breg���o�b�t�@�B

	ld		a,b
	or		BITLINE_MASK
	ld		b,a

	ld		a,(bc)
	and		e
	jp		nz, rc_blend_r4

	ld		a,(bc)
	or		e
	ld		(bc),a

	; B��R�v���[���ɂ���B�X�� OUTI�p��+1���� Areg�ɂ��c���B
	ld		a,d
	ld		de, 04008h		; Dreg: �v���[�������p, Ereg: ���C�������p
	inc		a
	add		a,d
	ld		b,a

	jp		rc_write_r4_line

rc_blend_r4:
	ld		a,(bc)
	or		e
	ld		(bc),a

	ld		b,d		; Breg�ɕ��A�B
	ld		d, 40h

	jp		rc_blend_r4_line

;---------------------------------------------------------------;
; �v���[�� R 5���C���`��
; ����
;	HLreg: �L�����f�[�^
;	BCreg: �`��VRAM�A�h���X
;	Ereg: �r�b�g���C���f�[�^
;---------------------------------------------------------------;
rc_image_r5:
	ld		d,b		; Dreg��Breg���o�b�t�@�B

	ld		a,b
	or		BITLINE_MASK
	ld		b,a

	ld		a,(bc)
	and		e
	jp		nz, rc_blend_r5

	ld		a,(bc)
	or		e
	ld		(bc),a

	; B��R�v���[���ɂ���B�X�� OUTI�p��+1���� Areg�ɂ��c���B
	ld		a,d
	ld		de, 04008h		; Dreg: �v���[�������p, Ereg: ���C�������p
	inc		a
	add		a,d
	ld		b,a

	jp		rc_write_r5_line

rc_blend_r5:
	ld		a,(bc)
	or		e
	ld		(bc),a

	ld		b,d		; Breg�ɕ��A�B
	ld		d, 40h

	jp		rc_blend_r5_line

;---------------------------------------------------------------;
; �v���[�� R 6���C���`��
; ����
;	HLreg: �L�����f�[�^
;	BCreg: �`��VRAM�A�h���X
;	Ereg: �r�b�g���C���f�[�^
;---------------------------------------------------------------;
rc_image_r6:
	ld		d,b		; Dreg��Breg���o�b�t�@�B

	ld		a,b
	or		BITLINE_MASK
	ld		b,a

	ld		a,(bc)
	and		e
	jp		nz, rc_blend_r6

	ld		a,(bc)
	or		e
	ld		(bc),a

	; B��R�v���[���ɂ���B�X�� OUTI�p��+1���� Areg�ɂ��c���B
	ld		a,d
	ld		de, 04008h		; Dreg: �v���[�������p, Ereg: ���C�������p
	inc		a
	add		a,d
	ld		b,a

	jp		rc_write_r6_line

rc_blend_r6:
	ld		a,(bc)
	or		e
	ld		(bc),a

	ld		b,d		; Breg�ɕ��A�B
	ld		d, 40h

	jp		rc_blend_r6_line

;---------------------------------------------------------------;
; �v���[�� R 7���C���`��
; ����
;	HLreg: �L�����f�[�^
;	BCreg: �`��VRAM�A�h���X
;	Ereg: �r�b�g���C���f�[�^
;---------------------------------------------------------------;
rc_image_r7:
	ld		d,b		; Dreg��Breg���o�b�t�@�B

	ld		a,b
	or		BITLINE_MASK
	ld		b,a

	ld		a,(bc)
	and		e
	jp		nz, rc_blend_r7

	ld		a,(bc)
	or		e
	ld		(bc),a

	; B��R�v���[���ɂ���B�X�� OUTI�p��+1���� Areg�ɂ��c���B
	ld		a,d
	ld		de, 04008h		; Dreg: �v���[�������p, Ereg: ���C�������p
	inc		a
	add		a,d
	ld		b,a

	jp		rc_write_r7_line

rc_blend_r7:
	ld		a,(bc)
	or		e
	ld		(bc),a

	ld		b,d		; Breg�ɕ��A�B
	ld		d, 40h

	jp		rc_blend_r7_line

;---------------------------------------------------------------;
; �v���[��: R 8���C���`��
; ����
;	HLreg: �L�����f�[�^
;	BCreg: �`��VRAM�A�h���X
;---------------------------------------------------------------;
rc_image_r8:
	; VRAM Adrs(BCreg)����BitLineBuff�����߂�B
	; BitLineBuff�� 0f8xx�ɂ���̂ŁAf800�� OR����Ƌ��܂�B
	; Ereg: �r�b�g���C���f�[�^

	ld		d,b		; Dreg��Breg���o�b�t�@�B

	ld		a,b
	or		BITLINE_MASK
	ld		b,a

	ld		a,(bc)
	or		a
	jp		nz, rc_blend_r8

	ld		a,0ffh
	ld		(bc),a

	; Dreg�𕜋A���āABlue��Red�v���[���ցB
	; ���̍ۂ� OUTI�p��+1����Areg�ɂ��c���B
	ld		a,d
	ld		de, 04008h	; Dreg: �v���[�������p Ereg: ���C�������p(08h)
	inc		a
	add		a,d
	ld		b,a

	OUT_R_HL_ADD_E
rc_write_r7_line:
	OUT_R_HL_ADD_E
rc_write_r6_line:
	OUT_R_HL_ADD_E
rc_write_r5_line:
	OUT_R_HL_ADD_E
rc_write_r4_line:
	OUT_R_HL_ADD_E
rc_write_r3_line:
	OUT_R_HL_ADD_E
rc_write_r2_line:
	OUT_R_HL_ADD_E
	OUT_R_HL

	; �������̂��� R��G
	ld		a,b
	add		a,d
	ld		b,a

	ret

rc_blend_r8:
	ld		a,0ffh
	ld		(bc),a

	ld		b,d		; Breg�ɕ��A�B
	ld		d, 40h

	; 3�v���[���ƃu�����h����̂�B�v���[����OK.

	BLEND_R_HL_ADD_B_D
	ADD_B_88

rc_blend_r7_line:
	BLEND_R_HL_ADD_B_D
	ADD_B_88

rc_blend_r6_line:
	BLEND_R_HL_ADD_B_D
	ADD_B_88

rc_blend_r5_line:
	BLEND_R_HL_ADD_B_D
	ADD_B_88

rc_blend_r4_line:
	BLEND_R_HL_ADD_B_D
	ADD_B_88

rc_blend_r3_line:
	BLEND_R_HL_ADD_B_D
	ADD_B_88

rc_blend_r2_line:
	BLEND_R_HL_ADD_B_D
	ADD_B_88

rc_blend_r1_line:
	BLEND_R_HL_ADD_B_D

	ret


;----
	END
