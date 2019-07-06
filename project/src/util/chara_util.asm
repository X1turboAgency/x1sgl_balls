;---------------------------------------------------------------;
;	Copyright (c) 2019 chara_util.asm
;	This software is released under the MIT License.
;	http://opensource.org/licenses/mit-license.php
;---------------------------------------------------------------; 

;---------------------------------------------------------------;
;	�L�����N�^(IYreg)��X���W�ɑ��x(DEreg),Y���W�ɑ��x(BCreg)�𑫂��B
; IYreg: �L�����N�^
; BCreg: ���x(X)
; DEreg: ���x(Y)
; �߂�l:
;	HLreg: �v�Z���X���W
;	DEreg: �v�Z���Y���W
;---------------------------------------------------------------;
add_posxy_hl:
	ld	l,(iy+CHR_POSYL)
	ld	h,(iy+CHR_POSYH)
	add	hl,de
	ld	(iy+CHR_POSYL),l
	ld	(iy+CHR_POSYH),h

	ex	de,hl

	ld	l,(iy+CHR_POSXL)
	ld	h,(iy+CHR_POSXH)
	add	hl,bc
	ld	(iy+CHR_POSXL),l
	ld	(iy+CHR_POSXH),h

	ret


;---------------------------------------------------------------;
;	�L�����N�^(IYreg)��X���W�ɑ��x(DEreg)�𑫂��B
; IYreg: �L�����N�^
; DEreg: ���x
; �߂�l:
;	HLreg: �v�Z���X���W
;---------------------------------------------------------------;
add_posx_hl:
	ld	l,(iy+CHR_POSXL)
	ld	h,(iy+CHR_POSXH)
	add	hl,de
	ld	(iy+CHR_POSXL),l
	ld	(iy+CHR_POSXH),h

	ret

;---------------------------------------------------------------;
;	�L�����N�^(IYreg)��Y���W�ɑ��x(DEreg)�𑫂��B
; IYreg: �L�����N�^
; DEreg: ���x
;---------------------------------------------------------------;
add_posy_hl:
	ld	l,(iy+CHR_POSYL)
	ld	h,(iy+CHR_POSYH)
	add	hl,de
	ld	(iy+CHR_POSYL),l
	ld	(iy+CHR_POSYH),h

	ret


;---------------------------------------------------------------; 
	END
