/*

Source is compiled with QuickRGBDS
https://github.com/imanoz/QuickRGBDS

*/


include "pokered.inc"


def  scriptaddress = $d8b5


SECTION "Pushie", ROM0

LOAD "ScriptAddress", WRAMX[scriptaddress]

start:
; constant execution by changing wCurMapScriptPtr
ld   hl, wCurMapScriptPtr
ld   a, low(pushscript)
ld   [hl+], a
ld   a, high(pushscript)
ld   [hl], a
ret  

pushscript:
ldh  a, [hJoyPressed]
bit  1, a                ; B Button
ret  z
ld   hl, wStatusFlags1
set  0, [hl]
ld   hl, wMiscFlags
set  1, [hl]
ret

ENDL

