/*

Source is compiled with QuickRGBDS
https://github.com/imanoz/QuickRGBDS

*/


include "pokeyellow.inc"


def  popswitch      = Bankswitch+12


SECTION "FreeFlash", ROM0

start:
ldh  a, [hLoadedROMBank]
push af
ld   a, StartMenu_Pokemon_Bank
call BankswitchBack+3              ; simple bankswitch compatible for both versions
xor  a
ld   [wMapPalOffset], a
ld   hl, StartMenu_PokemonflashLightsAreaText
call PrintText
jp   popswitch                     ; restores previous bank
