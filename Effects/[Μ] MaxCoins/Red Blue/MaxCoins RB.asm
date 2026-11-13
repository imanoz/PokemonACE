/*

Source is compiled with QuickRGBDS
https://github.com/imanoz/QuickRGBDS

*/


include "pokered.inc"


SECTION "MaxCoins", ROM0

start:
ld   hl, wPlayerCoins
ld   a, $99
ld   [hli], a
ld   [hl], a
ret
