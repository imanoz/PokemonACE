/*

Source is compiled with QuickRGBDS
https://github.com/imanoz/QuickRGBDS

*/


include "pokeyellow.inc"


def  bankswitch3         = $074b


SECTION "FreeSurf", ROM0

start:
ld   hl, ItemUseSurfboard
jp   bankswitch3
