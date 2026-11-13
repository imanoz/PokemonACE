/*

Source is compiled with QuickRGBDS
https://github.com/imanoz/QuickRGBDS

*/


include "pokeyellow.inc"


def  nicknameaddress     = $d8b4


SECTION "PikaMove", ROM0

LOAD "ScriptAddress", WRAMX[nicknameaddress]

start:
ld   hl, wCurMapScriptPtr
ld   [hl], low(control)
inc  hl
ld   [hl], high(control)

control:
ld   bc, $0105           ; c holds pikachu direction movement
ld   hl, wPikachuFollowCommandBufferSize
ld   [hl], $00

ldh  a, [hJoyInput]      ; input read

checkselect:
rrca
rrca                     ; check for B button
ret  nc                  ; stop script if no button B is not pressed

rrca                     ; check for select button
jr   c, presselect       ; jump to select routine if key is found

rrca

checkdirection:
dec  c                   ; use c both as counter and direction value
ret  z                   ; stop script if all directions were checked
rrca                     ; else rotate bits to the right and check carry flag
jr   nc, checkdirection  ; if last bit was zero, loop again

ld   [hl], b             ; else set buffer size to 1
inc  hl
ld   [hl], c             ; and write movement direction found
jp   IgnoreInputForHalfSecond

presselect:
xor  a                   ; zero out movement status resertting pikachu position
ld   [wSpritePikachuStateData1MovementStatus], a
ret

ENDL
