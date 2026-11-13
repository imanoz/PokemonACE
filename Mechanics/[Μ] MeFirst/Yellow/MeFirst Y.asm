/*

Source is compiled with QuickRGBDS
https://github.com/imanoz/QuickRGBDS

*/


include "pokeyellow.inc"


SECTION "mefirst", ROM0

start:
ld   a, $ff		          ; max speed
ld   [wBattleMonSpeed], a
ret
