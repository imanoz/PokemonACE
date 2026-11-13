/*

Auto Script Installer - Compatible with EN Red and Blue ONLY


Description
It targets to the ease of installing a scripts into TimOS script selector.
It automatically finds unused memory and installs your new scripts.

Restrictions
This method is compatible ONLY WITH RELATIVE ADDRESS SCRIPTS! If the script uses "call" or "jp" instructions targeting in another part of the script,
then you shouyld use MANUAL INSTALLER and compile the script yourself.

Static script's jumps or calls are not tolerated since the script can be installed in different addresses


Instructions
1) Put your script's assembly code under "Start" section.
2) Compile using QuickRGBDS.
3) Install the output over Nickname Writer.

The script will automatically calculate the offsets needed for:
- Script selector number
- Jump table address
- The script itself



Source is compiled with QuickRGBDS
https://github.com/imanoz/QuickRGBDS

*/

include "pokered.inc"


def  scriptpointers      = $c7c7
def  nicknameaddress     = $d8b5


SECTION "AutoScriptInstaller", ROM0

LOAD "Installer", WRAMX[nicknameaddress]

installer:               ; find free space in unused memory
ld   de, $cb49           ; last usable WRAM byte ($ff)

.loop
dec  de
ld   a, [de]
inc  a                   ; check for $ff value
jr   z, .loop

ld   a, d
cp   a, $c8
jr   nc, .skip           ; if no script exists

ld   e, $ff              ; default installation address is set

.skip
inc  de                  ; it goes back to last $ff value or $c800 if default address is set
ld   hl, $c6e9
ld   a, [hl]
inc  [hl]
add  a, a
ld   hl, scriptpointers  ; change nickname writer pointer inside timos
add  a, l
ld   l, a
ld   [hl], e
inc  hl
ld   [hl], d

; Copy script
ld   hl, length
ld   c, [hl]
inc  hl
jp   CopyMapConnectionHeaderloop

length:
db   end - start

start:                   ; do not replace this

; then custom script starts

end:                     ; do not replace this
ENDL
