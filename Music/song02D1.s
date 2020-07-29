	.include "MPlayDef.s"

	.equ	song02D1_grp, voicegroup000
	.equ	song02D1_pri, 20
	.equ	song02D1_rev, 0
	.equ	song02D1_mvl, 127
	.equ	song02D1_key, 0
	.equ	song02D1_tbs, 1
	.equ	song02D1_exg, 0
	.equ	song02D1_cmp, 1

	.section .rodata
	.global	song02D1
	.align	2


@**************** Track 1 (Midi-Chn.0) ****************@

song02D1_001:
@ 000   ----------------------------------------
 .byte   TEMPO , 150*song02D1_tbs/2
 .byte   VOL , 100*song02D1_mvl/mxv
 .byte   VOICE , 32
 .byte   KEYSH , song02D1_key+0
 .byte   N96 ,Cn3 ,v127
 .byte   W96
 .byte   FINE

@******************************************************@
	.align	2

song02D1:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song02D1_pri	@ Priority
	.byte	song02D1_rev	@ Reverb.
    
	.word	song02D1_grp
    
	.word	song02D1_001

	.end
