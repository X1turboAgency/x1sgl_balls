@echo off

SET WDIR=%~dp0
SET CMD=%WDIR%\bin\z80as\z80as.exe
SET SRCDIR=%WDIR%\src

cd %SRCDIR%

SET SRC0= ^
 value_define.asm^
 macro_define.asm^
 ..\res\chara\ball_p0_c1.asm^
 ..\res\chara\ball_p1_c1.asm^
 ..\res\chara\ball2_p0_c2.asm^
 ..\res\chara\ball2_p1_c2.asm^
 ..\res\chara\ball3_p0_c3.asm^
 ..\res\chara\ball3_p1_c3.asm^
 chara\chara_manager.asm^
 bitline\bitline.asm^
 main.asm^
 game\game.asm^
 game\ball.asm^
 render\render_util.asm^
 render\clear_buff.asm^
 input\input.asm^
 util\uty.asm^
 util\chara_util.asm

rem 08000h 以降に配置
SET SRC1= ^
 crtc.asm^
 data_work\data_work.asm^
 render\chara_render.asm^
 render\render.asm^
 render\render_r.asm^
 render\render_g.asm^
 render\render_br.asm^
 render\render_brg16.asm^
 render\render_b16.asm^
 render\clear_16.asm^
 render\render_br16.asm^
 util\mem_util.asm^
 chara\chara_data_manager.asm^
 text\text_render.asm


SET SRC=%SRC0%%SRC1%

SET SRC=boot_data.asm %SRC% prog_end.asm
SET DST=%WDIR%\x1sgl.bin

echo アセンブル %SRC% → %DST%

%CMD% -o %DST% %SRC% -x

rem pause

