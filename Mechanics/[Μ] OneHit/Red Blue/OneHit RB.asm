/*

Source is compiled with QuickRGBDS
https://github.com/imanoz/QuickRGBDS

*/


include "pokered.inc"


SECTION "1hitko", ROM0

start:
ld   a, $ff		; max damage
ld   [wDamage+1], a
ret
