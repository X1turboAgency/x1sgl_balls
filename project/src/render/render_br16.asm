;---------------------------------------------------------------;
;	Copyright (c) 2019 render_br16.asm
;	This software is released under the MIT License.
;	http://opensource.org/licenses/mit-license.php
;---------------------------------------------------------------; 

;---------------------------------------------------------------;
; BR �c16pixel y=0:
;---------------------------------------------------------------;
render_br16_y0:
	; 8pixel�`�悷��B
	ld	e,0ffh
	call rc_image_br_08

	; VRAM�����̒i�ցB
	ADD_BC_4828

	; 8pixel�`�悷��B
	ld	e,0ffh
	jp	rc_image_br_08

;---------------------------------------------------------------;
; BR �c16pixel y=1:
;---------------------------------------------------------------;
render_br16_y1:
	ld	e,0feh
	call rc_image_br_07

	; VRAM�����̒i�ցB
	ADD_BC_4828

	; 8pixel�`�悷��B
	ld	e,0ffh
	call rc_image_br_08

	; VRAM�����̒i�ցB
	ADD_BC_4828

	ld	e, 01h
	jp	rc_image_br_01

;---------------------------------------------------------------;
; BR �c16pixel y=2:
;---------------------------------------------------------------;
render_br16_y2:
	ld	e,0fch
	call rc_image_br_06

	; VRAM�����̒i�ցB
	ADD_BC_4828

	; 8pixel�`�悷��B
	ld	e,0ffh
	call rc_image_br_08

	; VRAM�����̒i�ցB
	ADD_BC_4828

	ld	e,03h
	jp	rc_image_br_02

;---------------------------------------------------------------;
; BR �c16pixel y=3:
;---------------------------------------------------------------;
render_br16_y3:
	ld	e,0f8h
	call rc_image_br_05

	; VRAM�����̒i�ցB
	ADD_BC_4828

	; 8pixel�`�悷��B
	ld	e,0ffh
	call rc_image_br_08

	; VRAM�����̒i�ցB
	ADD_BC_4828

	ld	e,07h
	jp   rc_image_br_03

;---------------------------------------------------------------;
; BR �c16pixel y=4:
;---------------------------------------------------------------;
render_br16_y4:
	ld	e,0f0h
	call rc_image_br_04

	; VRAM�����̒i�ցB
	ADD_BC_4828

	; 8pixel�`�悷��B
	ld	e,0ffh
	call rc_image_br_08

	; VRAM�����̒i�ցB
	ADD_BC_4828

	ld	e,00fh
	jp   rc_image_br_04

;---------------------------------------------------------------;
; BR �c16pixel y=5:
;---------------------------------------------------------------;
render_br16_y5:
	ld	e,0e0h
	call rc_image_br_03

	; VRAM�����̒i�ցB
	ADD_BC_4828

	ld	e,0ffh
	call rc_image_br_08

	; VRAM�����̒i�ցB
	ADD_BC_4828

	ld	e,01fh
	jp   rc_image_br_05

;---------------------------------------------------------------;
; BR �c16pixel y=6:
;---------------------------------------------------------------;
render_br16_y6:
	ld	e,0c0h
	call rc_image_br_02

	; VRAM�����̒i�ցB
	ADD_BC_4828

	ld	e,0ffh
	call rc_image_br_08

	; VRAM�����̒i�ցB
	ADD_BC_4828

	ld	e,03fh
	jp   rc_image_br_06

;---------------------------------------------------------------;
; BR �c16pixel y=7:
;---------------------------------------------------------------;
render_br16_y7:
	ld	e,080h
	call rc_image_br_01

	; VRAM�����̒i�ցB
	ADD_BC_4828

	ld	e,0ffh
	call rc_image_br_08

	; VRAM�����̒i�ցB
	ADD_BC_4828

	ld	e,07fh
	jp   rc_image_br_07

;----
	END
