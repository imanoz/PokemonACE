/*

Source is compiled with QuickRGBDS
https://github.com/imanoz/QuickRGBDS

*/


include "pokeyellow.inc"


def stackreturnaddress        = OverworldLoopLessDelay   
def returnaddress             = OverworldLoopLessDelay+3
def nickwriteraddress         = $d8b4
def topstack                  = $df15
def stackcheckaddress         = $dffd


SECTION "Randomizer", ROM0

LOAD "Install", WRAMX[nickwriteraddress]

start:
ld   hl, endjack
ld   de, topstack
ld   c, finish - DMAscript
call CopyMapConnectionHeaderloop

di                            ; because DMA routine triggers out of sync with our script
ld   hl, hDMARoutine          ; we stop all interrupts to avoid crashes
ld   [hl], $cd                ; $ff80 is replaced with command "call", to jump to our custom address
inc  hl
ld   [hl], low(DMAscript)     ; $ff81 and $ff82 hold custom script address
inc  hl
ld   [hl], high(DMAscript)
inc  hl
ld   [hl], $e2                ; ldh [c], a command is put to allow manip to return dma's original code 
reti                          ; dma code modification is done, interrupts are enabled again

endjack:
ENDL


LOAD "Script", WRAMX[topstack]
;;;;;;;;;;;; Executed by OAM DMA ;;;;;;;;;;;;;;;;
DMAscript:                    ; This is called by DMA routine

; stack check and replace
ld   hl, stackcheckaddress
ld   a, [hli]
cp   a, low(stackreturnaddress)
jr   nz, .endoam
ld   a, [hl]
cp   a, high(stackreturnaddress)
jr   nz, .endoam
ld   a, high(script)
ld   [hld], a
ld   [hl], low(script)

.endoam                       ; after our custom script returns, values are set up to continue to dma routine
ld   c, $46
ld   a, $c3
ret	

; script activates when delayFrame ends in overworld loop
script:

; put your code here
ldh  a, [hJoyInput]
bit  3, a			          ; if start pressed			
jr   z, endscript             ; jumps to ret if not

call Random
ld   c, a

loopaddress:
call Random
cp   a, $c0
jr   c, loopaddress
cp   a, $e0
jr   nc, loopaddress

ld   b, a
call Random
ld   [bc], a


endscript:
jp   returnaddress            ; jump happens in the return address of the next DelayFrame, effectively doubling overworld's speed
finish:
ENDL
