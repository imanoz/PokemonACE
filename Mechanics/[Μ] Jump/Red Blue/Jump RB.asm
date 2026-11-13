/*

Source is compiled with QuickRGBDS
https://github.com/imanoz/QuickRGBDS

*/


include "pokered.inc"


def  nicknameaddress = $d8b5


SECTION "ScriptName", ROM0

LOAD "ScriptAddress", WRAMX[nicknameaddress]

start:                   ; constant execution that temporarily uses MapScript pointer
ld   hl, wCurMapScriptPtr
ld   [hl], low(jumpscript)
inc  hl
ld   [hl], high(jumpscript)
ret  

jumpscript:
ldh  a, [hJoyInput]
and  a, $02			; if B pressed			
ret  z				; jumps to ret if not
ld   hl, wMovementFlags
set  6, [hl]
ret  

ENDL
