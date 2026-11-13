/*

Source is compiled with QuickRGBDS
https://github.com/imanoz/QuickRGBDS

*/


include "pokeyellow.inc"


def  nicknameaddress     = $d8b4
def  dmapoint            = $df1d


SECTION "OAM_Activator", ROM0

LOAD "Activator", WRAMX[nicknameaddress]

activate:
ld   c, end - script
ld   de, dmapoint        ; DMA routine triggers out of sync with our script
ld   hl, .end
di                       ; we stop all interrupts to avoid crashes
call CopyMapConnectionHeaderloop
reti                     ; dma code modification is done, interrupts are enabled again

.end:
ENDL


LOAD "Script", WRAMX[dmapoint]

;;;;;;;;;;;; Script ;;;;;;;;;;;; 
script:                 ; input your script here

ret

end:
ENDL
