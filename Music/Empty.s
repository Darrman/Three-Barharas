	.include "MPlayDef.s"

	.equ	DummyTrack_grp, voicegroup000
	.equ	DummyTrack_pri, 0
	.equ	DummyTrack_rev, 0
	.equ	DummyTrack_mvl, 127
	.equ	DummyTrack_key, 0
	.equ	DummyTrack_tbs, 1
	.equ	DummyTrack_exg, 0
	.equ	DummyTrack_cmp, 1

	.section .rodata
	.global	DummyTrack
	.align	2


@******************************************************@
	.align	2

DummyTrack:
	.byte	0	@ NumTrks
	.byte	0	@ NumBlks
	.byte	DummyTrack_pri	@ Priority
	.byte	DummyTrack_rev	@ Reverb.
    
	.word	DummyTrack_grp
    

	.end
