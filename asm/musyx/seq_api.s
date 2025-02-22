.include "macros.inc"

.section .text, "ax" 

.global sndSeqStop
sndSeqStop:
/* 8039BFFC 00398F5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039C000 00398F60  7C 08 02 A6 */	mflr r0
/* 8039C004 00398F64  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039C008 00398F68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8039C00C 00398F6C  7C 7F 1B 78 */	mr r31, r3
/* 8039C010 00398F70  48 01 90 AD */	bl hwDisableIrq
/* 8039C014 00398F74  7F E3 FB 78 */	mr r3, r31
/* 8039C018 00398F78  4B FF 9B 25 */	bl seqStop
/* 8039C01C 00398F7C  48 01 90 69 */	bl hwEnableIrq
/* 8039C020 00398F80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039C024 00398F84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8039C028 00398F88  7C 08 03 A6 */	mtlr r0
/* 8039C02C 00398F8C  38 21 00 10 */	addi r1, r1, 0x10
/* 8039C030 00398F90  4E 80 00 20 */	blr 

.global sndSeqSpeed
sndSeqSpeed:
/* 8039C034 00398F94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039C038 00398F98  7C 08 02 A6 */	mflr r0
/* 8039C03C 00398F9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039C040 00398FA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8039C044 00398FA4  7C 9F 23 78 */	mr r31, r4
/* 8039C048 00398FA8  93 C1 00 08 */	stw r30, 8(r1)
/* 8039C04C 00398FAC  7C 7E 1B 78 */	mr r30, r3
/* 8039C050 00398FB0  48 01 90 6D */	bl hwDisableIrq
/* 8039C054 00398FB4  7F C3 F3 78 */	mr r3, r30
/* 8039C058 00398FB8  7F E4 FB 78 */	mr r4, r31
/* 8039C05C 00398FBC  4B FF 9E 21 */	bl seqSpeed
/* 8039C060 00398FC0  48 01 90 25 */	bl hwEnableIrq
/* 8039C064 00398FC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039C068 00398FC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8039C06C 00398FCC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8039C070 00398FD0  7C 08 03 A6 */	mtlr r0
/* 8039C074 00398FD4  38 21 00 10 */	addi r1, r1, 0x10
/* 8039C078 00398FD8  4E 80 00 20 */	blr 

.global sndSeqContinue
sndSeqContinue:
/* 8039C07C 00398FDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039C080 00398FE0  7C 08 02 A6 */	mflr r0
/* 8039C084 00398FE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039C088 00398FE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8039C08C 00398FEC  7C 7F 1B 78 */	mr r31, r3
/* 8039C090 00398FF0  48 01 90 2D */	bl hwDisableIrq
/* 8039C094 00398FF4  7F E3 FB 78 */	mr r3, r31
/* 8039C098 00398FF8  4B FF 9E C9 */	bl seqContinue
/* 8039C09C 00398FFC  48 01 8F E9 */	bl hwEnableIrq
/* 8039C0A0 00399000  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039C0A4 00399004  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8039C0A8 00399008  7C 08 03 A6 */	mtlr r0
/* 8039C0AC 0039900C  38 21 00 10 */	addi r1, r1, 0x10
/* 8039C0B0 00399010  4E 80 00 20 */	blr 

.global sndSeqMute
sndSeqMute:
/* 8039C0B4 00399014  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8039C0B8 00399018  7C 08 02 A6 */	mflr r0
/* 8039C0BC 0039901C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8039C0C0 00399020  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8039C0C4 00399024  7C BF 2B 78 */	mr r31, r5
/* 8039C0C8 00399028  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8039C0CC 0039902C  7C 9E 23 78 */	mr r30, r4
/* 8039C0D0 00399030  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8039C0D4 00399034  7C 7D 1B 78 */	mr r29, r3
/* 8039C0D8 00399038  48 01 8F E5 */	bl hwDisableIrq
/* 8039C0DC 0039903C  7F A3 EB 78 */	mr r3, r29
/* 8039C0E0 00399040  7F C4 F3 78 */	mr r4, r30
/* 8039C0E4 00399044  7F E5 FB 78 */	mr r5, r31
/* 8039C0E8 00399048  4B FF 9F 81 */	bl seqMute
/* 8039C0EC 0039904C  48 01 8F 99 */	bl hwEnableIrq
/* 8039C0F0 00399050  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8039C0F4 00399054  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8039C0F8 00399058  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8039C0FC 0039905C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8039C100 00399060  7C 08 03 A6 */	mtlr r0
/* 8039C104 00399064  38 21 00 20 */	addi r1, r1, 0x20
/* 8039C108 00399068  4E 80 00 20 */	blr 

.global sndSeqVolume
sndSeqVolume:
/* 8039C10C 0039906C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8039C110 00399070  7C 08 02 A6 */	mflr r0
/* 8039C114 00399074  90 01 00 24 */	stw r0, 0x24(r1)
/* 8039C118 00399078  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8039C11C 0039907C  7C DF 33 78 */	mr r31, r6
/* 8039C120 00399080  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8039C124 00399084  7C BE 2B 78 */	mr r30, r5
/* 8039C128 00399088  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8039C12C 0039908C  7C 9D 23 78 */	mr r29, r4
/* 8039C130 00399090  93 81 00 10 */	stw r28, 0x10(r1)
/* 8039C134 00399094  7C 7C 1B 78 */	mr r28, r3
/* 8039C138 00399098  48 01 8F 85 */	bl hwDisableIrq
/* 8039C13C 0039909C  7F 83 E3 78 */	mr r3, r28
/* 8039C140 003990A0  7F A4 EB 78 */	mr r4, r29
/* 8039C144 003990A4  7F C5 F3 78 */	mr r5, r30
/* 8039C148 003990A8  7F E6 FB 78 */	mr r6, r31
/* 8039C14C 003990AC  4B FF 9F D9 */	bl seqVolume
/* 8039C150 003990B0  48 01 8F 35 */	bl hwEnableIrq
/* 8039C154 003990B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8039C158 003990B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8039C15C 003990BC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8039C160 003990C0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8039C164 003990C4  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8039C168 003990C8  7C 08 03 A6 */	mtlr r0
/* 8039C16C 003990CC  38 21 00 20 */	addi r1, r1, 0x20
/* 8039C170 003990D0  4E 80 00 20 */	blr 

.global seqGetMIDIPriority
seqGetMIDIPriority:
/* 8039C174 003990D4  3C A0 80 55 */	lis r5, seqMIDIPriority@ha
/* 8039C178 003990D8  54 66 2C F4 */	rlwinm r6, r3, 5, 0x13, 0x1a
/* 8039C17C 003990DC  38 65 FD 10 */	addi r3, r5, seqMIDIPriority@l
/* 8039C180 003990E0  54 80 0D FC */	rlwinm r0, r4, 1, 0x17, 0x1e
/* 8039C184 003990E4  7C 63 32 14 */	add r3, r3, r6
/* 8039C188 003990E8  7C 63 02 2E */	lhzx r3, r3, r0
/* 8039C18C 003990EC  4E 80 00 20 */	blr 
