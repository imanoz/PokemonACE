/*

Source is compiled with QuickRGBDS
https://github.com/imanoz/QuickRGBDS

*/


include "pokered.inc"


def  nicknameaddress     = $d8b5
def  dmapoint            = $df1d


SECTION "OAM_Activator", ROM0

LOAD "Activator", WRAMX[nicknameaddress]

activate:
ld   hl, psize
ld   c, [hl]
inc  hl
ld   de, dmapoint        ; DMA routine triggers out of sync with our payload

di                       ; we stop all interrupts to avoid crashes
call CopyMapConnectionHeaderloop
reti                     ; dma code modification is done, interrupts are enabled again

psize:
ENDL


