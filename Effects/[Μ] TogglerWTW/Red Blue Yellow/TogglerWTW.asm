/*

Source is compiled with QuickRGBDS
https://github.com/imanoz/QuickRGBDS

*/


include "pokeyellow.inc"


SECTION "wtw", ROM0

start:
ld   hl, wSimulatedJoypadStatesIndex
ld   a, $01
xor  a, [hl]
ld   [hl], a
ret
