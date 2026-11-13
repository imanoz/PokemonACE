/*

Source is compiled with QuickRGBDS
https://github.com/imanoz/QuickRGBDS

*/


include "pokeyellow.inc"


SECTION "ScriptName", ROM0

start:
xor  a
ld   hl, wPlayTimeHours
ld   [hli], a
ld   [hli], a
ld   [hli], a
ld   [hl], a
ret
