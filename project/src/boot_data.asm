;---------------------------------------------------------------; 
;	Copyright (c) 2019 boot_data.asm
;	This software is released under the MIT License.
;	http://opensource.org/licenses/mit-license.php
;
;	X1SGL ブートデータ
;	エミュレータのディスクブートを行うためのデータ
;---------------------------------------------------------------; 

PROG_TOP	equ	00000h
PROG_LENG	equ PROG_END - PROG_TOP

; LOADM形式にするために、先頭に[開始アドレス][終了アドレス+1]を設定する。
; 例であげれば、0000hからサイズ 100h であれば、0000h,00ffh が正しいはずである。
; しかし、実際には 0000h,0100h でなければ最後の1byteが削られてしまう。

	ORG PROG_TOP-4
	dw	PROG_TOP
	dw	PROG_END

	jp	START_MAIN

	END
