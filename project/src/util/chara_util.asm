;---------------------------------------------------------------;
;	Copyright (c) 2019 chara_util.asm
;	This software is released under the MIT License.
;	http://opensource.org/licenses/mit-license.php
;---------------------------------------------------------------; 

;---------------------------------------------------------------;
;	キャラクタ(IYreg)のX座標に速度(DEreg),Y座標に速度(BCreg)を足す。
; IYreg: キャラクタ
; BCreg: 速度(X)
; DEreg: 速度(Y)
; 戻り値:
;	HLreg: 計算後のX座標
;	DEreg: 計算後のY座標
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
;	キャラクタ(IYreg)のX座標に速度(DEreg)を足す。
; IYreg: キャラクタ
; DEreg: 速度
; 戻り値:
;	HLreg: 計算後のX座標
;---------------------------------------------------------------;
add_posx_hl:
	ld	l,(iy+CHR_POSXL)
	ld	h,(iy+CHR_POSXH)
	add	hl,de
	ld	(iy+CHR_POSXL),l
	ld	(iy+CHR_POSXH),h

	ret

;---------------------------------------------------------------;
;	キャラクタ(IYreg)のY座標に速度(DEreg)を足す。
; IYreg: キャラクタ
; DEreg: 速度
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
