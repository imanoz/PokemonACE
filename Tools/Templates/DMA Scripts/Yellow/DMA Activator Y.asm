/*

Source is compiled with QuickRGBDS
https://github.com/imanoz/QuickRGBDS

*/


include "pokeyellow.inc"


def  nicknameaddress     = $d8b4
def  pcall               = $df15


SECTION "OAM_Activator", ROM0

LOAD "Activator", WRAMX[nicknameaddress]

activate:
ld   hl, hDMARoutine
ld   de, pcall           ; DMA routine triggers out of sync with our script
di                       ; we stop all interrupts to avoid crashes
ld   [hl], $cd           ; $ff80 is replaced with command "call", to jump to our custom address
inc  hl
ld   [hl], e             ; $ff81 and $ff82 hold custom script address
inc  hl
ld   [hl], d
inc  hl
ld   [hl], $e2           ; ldh [c], a command is put to allow hijack to return dma's original code 
ld   c, end - pcall
ld   hl, .end
call CopyMapConnectionHeaderloop
reti                     ; dma code modification is done, interrupts are enabled again
.end
ENDL


LOAD "Script", WRAMX[pcall]
stack:                   ; now dma hijack always points to this address
call script              ; it calls our custom script at the end of the script

endoam:                  ; after our custom script returns, values are set up to continue to dma routine
ld   c, $46
ld   a, $c3
ret	

;;;;;;;;;;;; Script ;;;;;;;;;;;; 
script:                 ; input your script here

ret

end:
ENDL
