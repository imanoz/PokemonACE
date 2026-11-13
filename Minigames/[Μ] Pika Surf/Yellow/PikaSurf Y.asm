/*

Source is compiled with QuickRGBDS
https://github.com/imanoz/QuickRGBDS

*/


include "pokeyellow.inc"


SECTION "ScriptName", ROM0

LOAD "NicknameWriterPayload", WRAMX[$d8b4]

start:
ld   b, SurfingPikachuMinigame_Bank
ld   hl, SurfingPikachuMinigame
call Bankswitch
ld   hl, $dfff
ld   sp, hl
jp   EnterMap

ENDL
