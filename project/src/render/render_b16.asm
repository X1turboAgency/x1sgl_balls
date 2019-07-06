;---------------------------------------------------------------;
;	Copyright (c) 2019 render_b16.asm
;	This software is released under the MIT License.
;	http://opensource.org/licenses/mit-license.php
;---------------------------------------------------------------; 

;---------------------------------------------------------------;
; B �c16pixel y=0:
;---------------------------------------------------------------;
render_b16_y0:
	; 8pixel�`�悷��B
	ld		e,0ffh
	call	rc_image_b8

	; VRAM�����̒i�ցB
	ADD_BC_4828

	; 8pixel�`�悷��B
	ld		e,0ffh
	jp		rc_image_b8

;---------------------------------------------------------------;
; B �c16pixel y=1:
;---------------------------------------------------------------;
render_b16_y1:
	ld		e,0feh
	call	rc_image_b7

	; VRAM�����̒i�ցB
	ADD_BC_4828

	ld		e, 0ffh
	call	rc_image_b8

	; VRAM�����̒i�ցB
	ADD_BC_4828

	ld		e, 01h
	jp		rc_image_b1


;---------------------------------------------------------------;
; B �c16pixel y=2:
;---------------------------------------------------------------;
render_b16_y2:
	ld		e,0fch
	call	rc_image_b6

	; VRAM�����̒i�ցB
	ADD_BC_4828

	ld		e,0ffh
	call	rc_image_b8

	; VRAM�����̒i�ցB
	ADD_BC_4828

	ld		e,03h
	jp		rc_image_b2


;---------------------------------------------------------------;
; B �c16pixel y=3:
;---------------------------------------------------------------;
render_b16_y3:
	ld		e,0f8h
	call	rc_image_b5

	; VRAM�����̒i�ցB
	ADD_BC_4828

	ld		e,0ffh
	call	rc_image_b8

	; VRAM�����̒i�ցB
	ADD_BC_4828

	ld		e,07h
	jp		rc_image_b3

;---------------------------------------------------------------;
; B �c16pixel y=4:
;---------------------------------------------------------------;
render_b16_y4:
	ld		e,0f0h
	call	rc_image_b4

	; VRAM�����̒i�ցB
	ADD_BC_4828

	ld		e,0ffh
	call	rc_image_b8

	; VRAM�����̒i�ցB
	ADD_BC_4828

	ld		e,0fh
	jp		rc_image_b4

;---------------------------------------------------------------;
; B �c16pixel y=5:
;---------------------------------------------------------------;
render_b16_y5:
	ld		e,0e0h
	call	rc_image_b3

	; VRAM�����̒i�ցB
	ADD_BC_4828

	ld		e,0ffh
	call	rc_image_b8

	; VRAM�����̒i�ցB
	ADD_BC_4828

	ld		e,01fh
	jp		rc_image_b5


;---------------------------------------------------------------;
; B �c16pixel y=6:
;---------------------------------------------------------------;
render_b16_y6:
	ld		e,0c0h
	call	rc_image_b2

	; VRAM�����̒i�ցB
	ADD_BC_4828

	ld		e,0ffh
	call	rc_image_b8

	; VRAM�����̒i�ցB
	ADD_BC_4828

	ld		e,03fh
	jp		rc_image_b6

;---------------------------------------------------------------;
; B �c16pixel y=7:
;---------------------------------------------------------------;
render_b16_y7:
	ld		e,080h
	call	rc_image_b1

	; VRAM�����̒i�ցB
	ADD_BC_4828

	ld		e,0ffh
	call	rc_image_b8

	; VRAM�����̒i�ցB
	ADD_BC_4828

	ld		e,07fh
	jp		rc_image_b7

;----
	END
