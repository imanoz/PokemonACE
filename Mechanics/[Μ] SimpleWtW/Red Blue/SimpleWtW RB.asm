/*

Source is compiled with QuickRGBDS
https://github.com/imanoz/QuickRGBDS

*/


include "pokered.inc"


SECTION "SimpleWTW", ROM0

start:
ldh  a, [hJoyInput]
bit  1, a                               ; B Button
ld   a, $00                             ; we cannot use xor a, since it will reset z
jr   z, trespass                        ; reset collision if not pressed
inc  a

trespass:
ld   [wSimulatedJoypadStatesIndex], a   ; Loads Walk Type
ret	
