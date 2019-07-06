;---------------------------------------------------------------;
;	Copyright (c) 2019 main.asm
;	This software is released under the MIT License.
;	http://opensource.org/licenses/mit-license.php
;---------------------------------------------------------------; 
START_MAIN:
	di
	im		2

	; 割込みベクタ設定
	ld		a, INT_VECTOR_BUFF >> 8
	ld		i,a

	ld		sp, STACK_BUFF

	call	init_keyboard

	call	init_main

	di
	call	init_game

	ei

idle_loop:
	; 入力情報の更新
	call	update_input

	; キャラクタ処理
	call	update_chara_manager

	; キャラクタ描画
	call	draw_chara_manager

	call	wait_vsync_fps

	call	disp_frame_dropout

	call	flip_screen

	jp		idle_loop


;---------------------------------------------------------------; 
;	初期化
;---------------------------------------------------------------; 
init_main:
	call	fill_text_vram
	call	fill_attr_vram

	call	set_crtc40

	call	vram_priority
	call	vram_palette_init

	call	clear_graphic_vram_b
	call	clear_graphic_vram_r
	call	clear_graphic_vram_g

	; VRAMアドレステーブルを作成。
	call	create_vram_adrs_tbl

	call	init_screen

	call	init_bitline

	call	init_chara_manager

	; キャラクタ消去ワーク初期化
	call	init_clear_char_work

	call	init_input

	call	init_test_title
	call	render_chara_num
	call	render_fps_mode

	ret

;---------------------------------------------------------------;
;---------------------------------------------------------------;
init_test_title:
	ld		bc, TEXT_VRAM_ADRS + 40*1 + 1
	ld		hl, chara_num_str
	call	render_text_2page

	ld		bc, TEXT_VRAM_ADRS + 40*3 + 1
	ld		hl, fps_str
	call	render_text_2page

	ret

test_title_str:
	db		"Balls", 0

chara_num_str:
	db		"Num=00 (Ball '1-3' Del '4')", 0

fps_str:
	db		"FPS=00 (Change SpKey)", 0

operation_str1:
	db		"'1-3' Create", 0
operation_str2:
	db		"'4' Remove", 0


;Num=00 (Create '1-3' Remove '4' )
;FPS=60 (Change '5')



;---------------------------------------------------------------;
	END
