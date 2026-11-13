/*

Source is compiled with QuickRGBDS
https://github.com/imanoz/QuickRGBDS

*/


include "pokeyellow.inc"


SECTION "nodamage", ROM0

start:
xor  a
ld   [wEnemyMovePower], a
ret
