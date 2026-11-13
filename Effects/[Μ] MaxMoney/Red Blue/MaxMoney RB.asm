/*

Source is compiled with QuickRGBDS
https://github.com/imanoz/QuickRGBDS

*/


include "pokered.inc"


SECTION "MaxMoney", ROM0

maxman:
ld   hl, wPlayerMoney
ld   a, $99
ld  [hli], a
ld  [hli], a
ld  [hl], a
ret
