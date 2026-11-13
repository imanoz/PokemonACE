/*

Source is compiled with QuickRGBDS
https://github.com/imanoz/QuickRGBDS

*/


include "pokered.inc"


SECTION "FreeStrength", ROM0

start:
ld   b, PrintStrengthText_Bank
ld   hl, PrintStrengthText
jp   Bankswitch
