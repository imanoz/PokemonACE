/*

Source is compiled with QuickRGBDS
https://github.com/imanoz/QuickRGBDS

*/


include "pokered.inc"


SECTION "instako", ROM0

nodamage:
ld   hl, wEnemyMonHP
xor  a
ld   [hli], a
ld   [hl], a
ret
