/*

Source is compiled with QuickRGBDS
https://github.com/imanoz/QuickRGBDS

*/

include "pokered.inc"


SECTION "AllBadges", ROM0

start:
ld   a, $ff
ld   [wObtainedBadges], a
ret
