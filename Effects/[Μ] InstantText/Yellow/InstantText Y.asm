/*

Source is compiled with QuickRGBDS
https://github.com/imanoz/QuickRGBDS

*/


include "pokeyellow.inc"


SECTION "InstaText", ROM0

start:
ld   hl, wOptions
ld   a, [hl]
and  a, $f0
ld   [hl], a
ret
