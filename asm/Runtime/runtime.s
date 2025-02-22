.include "macros.inc"

.section .rodata
.balign 8
.global lbl_803D85A8
lbl_803D85A8:
	# ROM: 0x3D55A8
	.4byte 0
	.4byte 0
	.4byte 0x41F00000
	.4byte 0
	.4byte 0x41E00000
	.4byte 0


.section .text, "ax"

.global __cvt_fp2unsigned
__cvt_fp2unsigned:
/* 80389954 003868B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80389958 003868B8  3C 80 80 3D */	lis r4, lbl_803D85A8@h
/* 8038995C 003868BC  60 84 85 A8 */	ori r4, r4, lbl_803D85A8@l
/* 80389960 003868C0  38 60 00 00 */	li r3, 0
/* 80389964 003868C4  C8 04 00 00 */	lfd f0, 0(r4)
/* 80389968 003868C8  C8 64 00 08 */	lfd f3, 8(r4)
/* 8038996C 003868CC  C8 84 00 10 */	lfd f4, 0x10(r4)
/* 80389970 003868D0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80389974 003868D4  FF 01 18 00 */	fcmpu cr6, f1, f3
/* 80389978 003868D8  41 80 00 30 */	blt lbl_803899A8
/* 8038997C 003868DC  38 63 FF FF */	addi r3, r3, -1
/* 80389980 003868E0  40 98 00 28 */	bge cr6, lbl_803899A8
/* 80389984 003868E4  FF 81 20 00 */	fcmpu cr7, f1, f4
/* 80389988 003868E8  FC 40 08 90 */	fmr f2, f1
/* 8038998C 003868EC  41 9C 00 08 */	blt cr7, lbl_80389994
/* 80389990 003868F0  FC 41 20 28 */	fsub f2, f1, f4
lbl_80389994:
/* 80389994 003868F4  FC 40 10 1E */	fctiwz f2, f2
/* 80389998 003868F8  D8 41 00 08 */	stfd f2, 8(r1)
/* 8038999C 003868FC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803899A0 00386900  41 9C 00 08 */	blt cr7, lbl_803899A8
/* 803899A4 00386904  3C 63 80 00 */	addis r3, r3, 0x8000
lbl_803899A8:
/* 803899A8 00386908  38 21 00 10 */	addi r1, r1, 0x10
/* 803899AC 0038690C  4E 80 00 20 */	blr

.global __save_fpr
__save_fpr:
/* 803899B0 00386910  D9 CB FF 70 */	stfd f14, -0x90(r11)
/* 803899B4 00386914  D9 EB FF 78 */	stfd f15, -0x88(r11)
/* 803899B8 00386918  DA 0B FF 80 */	stfd f16, -0x80(r11)
/* 803899BC 0038691C  DA 2B FF 88 */	stfd f17, -0x78(r11)

.global _savefpr_18
_savefpr_18:
/* 803899C0 00386920  DA 4B FF 90 */	stfd f18, -0x70(r11)
/* 803899C4 00386924  DA 6B FF 98 */	stfd f19, -0x68(r11)
/* 803899C8 00386928  DA 8B FF A0 */	stfd f20, -0x60(r11)

.global _savefpr_21
_savefpr_21:
/* 803899CC 0038692C  DA AB FF A8 */	stfd f21, -0x58(r11)
/* 803899D0 00386930  DA CB FF B0 */	stfd f22, -0x50(r11)
/* 803899D4 00386934  DA EB FF B8 */	stfd f23, -0x48(r11)
/* 803899D8 00386938  DB 0B FF C0 */	stfd f24, -0x40(r11)

.global _savefpr_25
_savefpr_25:
/* 803899DC 0038693C  DB 2B FF C8 */	stfd f25, -0x38(r11)

.global _savefpr_26
_savefpr_26:
/* 803899E0 00386940  DB 4B FF D0 */	stfd f26, -0x30(r11)

.global _savefpr_27
_savefpr_27:
/* 803899E4 00386944  DB 6B FF D8 */	stfd f27, -0x28(r11)

.global _savefpr_28
_savefpr_28:
/* 803899E8 00386948  DB 8B FF E0 */	stfd f28, -0x20(r11)
/* 803899EC 0038694C  DB AB FF E8 */	stfd f29, -0x18(r11)
/* 803899F0 00386950  DB CB FF F0 */	stfd f30, -0x10(r11)
/* 803899F4 00386954  DB EB FF F8 */	stfd f31, -8(r11)
/* 803899F8 00386958  4E 80 00 20 */	blr

.global __restore_fpr
__restore_fpr:
/* 803899FC 0038695C  C9 CB FF 70 */	lfd f14, -0x90(r11)

.global _restfpr_15
_restfpr_15:
/* 80389A00 00386960  C9 EB FF 78 */	lfd f15, -0x88(r11)

.global _restfpr_16
_restfpr_16:
/* 80389A04 00386964  CA 0B FF 80 */	lfd f16, -0x80(r11)

.global _restfpr_17
_restfpr_17:
/* 80389A08 00386968  CA 2B FF 88 */	lfd f17, -0x78(r11)

.global _restfpr_18
_restfpr_18:
/* 80389A0C 0038696C  CA 4B FF 90 */	lfd f18, -0x70(r11)

.global _restfpr_19
_restfpr_19:
/* 80389A10 00386970  CA 6B FF 98 */	lfd f19, -0x68(r11)

.global _restfpr_20
_restfpr_20:
/* 80389A14 00386974  CA 8B FF A0 */	lfd f20, -0x60(r11)

.global _restfpr_21
_restfpr_21:
/* 80389A18 00386978  CA AB FF A8 */	lfd f21, -0x58(r11)

.global _restfpr_22
_restfpr_22:
/* 80389A1C 0038697C  CA CB FF B0 */	lfd f22, -0x50(r11)

.global _restfpr_23
_restfpr_23:
/* 80389A20 00386980  CA EB FF B8 */	lfd f23, -0x48(r11)

.global _restfpr_24
_restfpr_24:
/* 80389A24 00386984  CB 0B FF C0 */	lfd f24, -0x40(r11)

.global _restfpr_25
_restfpr_25:
/* 80389A28 00386988  CB 2B FF C8 */	lfd f25, -0x38(r11)

.global _restfpr_26
_restfpr_26:
/* 80389A2C 0038698C  CB 4B FF D0 */	lfd f26, -0x30(r11)

.global _restfpr_27
_restfpr_27:
/* 80389A30 00386990  CB 6B FF D8 */	lfd f27, -0x28(r11)

.global _restfpr_28
_restfpr_28:
/* 80389A34 00386994  CB 8B FF E0 */	lfd f28, -0x20(r11)

.global _restfpr_29
_restfpr_29:
/* 80389A38 00386998  CB AB FF E8 */	lfd f29, -0x18(r11)

.global _restfpr_30
_restfpr_30:
/* 80389A3C 0038699C  CB CB FF F0 */	lfd f30, -0x10(r11)

.global _restfpr_31
_restfpr_31:
/* 80389A40 003869A0  CB EB FF F8 */	lfd f31, -8(r11)
/* 80389A44 003869A4  4E 80 00 20 */	blr

.global __save_gpr
__save_gpr:
/* 80389A48 003869A8  91 CB FF B8 */	stw r14, -0x48(r11)

.global _savegpr_15
_savegpr_15:
/* 80389A4C 003869AC  91 EB FF BC */	stw r15, -0x44(r11)

.global _savegpr_16
_savegpr_16:
/* 80389A50 003869B0  92 0B FF C0 */	stw r16, -0x40(r11)

.global _savegpr_17
_savegpr_17:
/* 80389A54 003869B4  92 2B FF C4 */	stw r17, -0x3c(r11)

.global _savegpr_18
_savegpr_18:
/* 80389A58 003869B8  92 4B FF C8 */	stw r18, -0x38(r11)

.global _savegpr_19
_savegpr_1:
/* 80389A5C 003869BC  92 6B FF CC */	stw r19, -0x34(r11)

.global _savegpr_20
_savegpr_20:
/* 80389A60 003869C0  92 8B FF D0 */	stw r20, -0x30(r11)

.global _savegpr_21
_savegpr_21:
/* 80389A64 003869C4  92 AB FF D4 */	stw r21, -0x2c(r11)

.global _savegpr_22
_savegpr_22:
/* 80389A68 003869C8  92 CB FF D8 */	stw r22, -0x28(r11)

.global _savegpr_23
_savegpr_23:
/* 80389A6C 003869CC  92 EB FF DC */	stw r23, -0x24(r11)

.global _savegpr_24
_savegpr_24:
/* 80389A70 003869D0  93 0B FF E0 */	stw r24, -0x20(r11)

.global _savegpr_25
_savegpr_25:
/* 80389A74 003869D4  93 2B FF E4 */	stw r25, -0x1c(r11)

.global _savegpr_26
_savegpr_26:
/* 80389A78 003869D8  93 4B FF E8 */	stw r26, -0x18(r11)

.global _savegpr_27
_savegpr_27:
/* 80389A7C 003869DC  93 6B FF EC */	stw r27, -0x14(r11)
.global _savegpr_28
_savegpr_28:
/* 80389A80 003869E0  93 8B FF F0 */	stw r28, -0x10(r11)
.global _savegpr_29
_savegpr_29:
/* 80389A84 003869E4  93 AB FF F4 */	stw r29, -0xc(r11)
.global _savegpr_30
_savegpr_30:
/* 80389A88 003869E8  93 CB FF F8 */	stw r30, -8(r11)
.global _savegpr_31
_savegpr_31:
/* 80389A8C 003869EC  93 EB FF FC */	stw r31, -4(r11)
/* 80389A90 003869F0  4E 80 00 20 */	blr

.global __restore_gpr
__restore_gpr:
/* 80389A94 003869F4  81 CB FF B8 */	lwz r14, -0x48(r11)

.global func_80389A98
func_80389A98:
/* 80389A98 003869F8  81 EB FF BC */	lwz r15, -0x44(r11)

.global _restgpr_16
_restgpr_16:
/* 80389A9C 003869FC  82 0B FF C0 */	lwz r16, -0x40(r11)

.global _restgpr_17
_restgpr_17:
/* 80389AA0 00386A00  82 2B FF C4 */	lwz r17, -0x3c(r11)

.global _restgpr_18
_restgpr_18:
/* 80389AA4 00386A04  82 4B FF C8 */	lwz r18, -0x38(r11)

.global _restgpr_19
_restgpr_19:
/* 80389AA8 00386A08  82 6B FF CC */	lwz r19, -0x34(r11)

.global _restgpr_20
_restgpr_20:
/* 80389AAC 00386A0C  82 8B FF D0 */	lwz r20, -0x30(r11)

.global _restgpr_21
_restgpr_21:
/* 80389AB0 00386A10  82 AB FF D4 */	lwz r21, -0x2c(r11)

.global _restgpr_22
_restgpr_22:
/* 80389AB4 00386A14  82 CB FF D8 */	lwz r22, -0x28(r11)

.global _restgpr_23
_restgpr_23:
/* 80389AB8 00386A18  82 EB FF DC */	lwz r23, -0x24(r11)

.global _restgpr_24
_restgpr_24:
/* 80389ABC 00386A1C  83 0B FF E0 */	lwz r24, -0x20(r11)

.global _restgpr_25
_restgpr_25:
/* 80389AC0 00386A20  83 2B FF E4 */	lwz r25, -0x1c(r11)

.global _restgpr_26
_restgpr_26:
/* 80389AC4 00386A24  83 4B FF E8 */	lwz r26, -0x18(r11)

.global _restgpr_27
_restgpr_27:
/* 80389AC8 00386A28  83 6B FF EC */	lwz r27, -0x14(r11)

.global _restgpr_28
_restgpr_28:
/* 80389ACC 00386A2C  83 8B FF F0 */	lwz r28, -0x10(r11)

.global _restgpr_29
_restgpr_29:
/* 80389AD0 00386A30  83 AB FF F4 */	lwz r29, -0xc(r11)

.global _restgpr_30
_restgpr_30:
/* 80389AD4 00386A34  83 CB FF F8 */	lwz r30, -8(r11)

.global _restgpr_31
_restgpr_13:
/* 80389AD8 00386A38  83 EB FF FC */	lwz r31, -4(r11)
/* 80389ADC 00386A3C  4E 80 00 20 */	blr

.global __div2u
__div2u:
/* 80389AE0 00386A40  2C 03 00 00 */	cmpwi r3, 0
/* 80389AE4 00386A44  7C 60 00 34 */	cntlzw r0, r3
/* 80389AE8 00386A48  7C 89 00 34 */	cntlzw r9, r4
/* 80389AEC 00386A4C  40 82 00 08 */	bne lbl_80389AF4
/* 80389AF0 00386A50  38 09 00 20 */	addi r0, r9, 0x20
lbl_80389AF4:
/* 80389AF4 00386A54  2C 05 00 00 */	cmpwi r5, 0
/* 80389AF8 00386A58  7C A9 00 34 */	cntlzw r9, r5
/* 80389AFC 00386A5C  7C CA 00 34 */	cntlzw r10, r6
/* 80389B00 00386A60  40 82 00 08 */	bne lbl_80389B08
/* 80389B04 00386A64  39 2A 00 20 */	addi r9, r10, 0x20
lbl_80389B08:
/* 80389B08 00386A68  7C 00 48 00 */	cmpw r0, r9
/* 80389B0C 00386A6C  21 40 00 40 */	subfic r10, r0, 0x40
/* 80389B10 00386A70  41 81 00 B0 */	bgt lbl_80389BC0
/* 80389B14 00386A74  39 29 00 01 */	addi r9, r9, 1
/* 80389B18 00386A78  21 29 00 40 */	subfic r9, r9, 0x40
/* 80389B1C 00386A7C  7C 00 4A 14 */	add r0, r0, r9
/* 80389B20 00386A80  7D 29 50 50 */	subf r9, r9, r10
/* 80389B24 00386A84  7D 29 03 A6 */	mtctr r9
/* 80389B28 00386A88  2C 09 00 20 */	cmpwi r9, 0x20
/* 80389B2C 00386A8C  38 E9 FF E0 */	addi r7, r9, -32
/* 80389B30 00386A90  41 80 00 10 */	blt lbl_80389B40
/* 80389B34 00386A94  7C 68 3C 30 */	srw r8, r3, r7
/* 80389B38 00386A98  38 E0 00 00 */	li r7, 0
/* 80389B3C 00386A9C  48 00 00 18 */	b lbl_80389B54
lbl_80389B40:
/* 80389B40 00386AA0  7C 88 4C 30 */	srw r8, r4, r9
/* 80389B44 00386AA4  20 E9 00 20 */	subfic r7, r9, 0x20
/* 80389B48 00386AA8  7C 67 38 30 */	slw r7, r3, r7
/* 80389B4C 00386AAC  7D 08 3B 78 */	or r8, r8, r7
/* 80389B50 00386AB0  7C 67 4C 30 */	srw r7, r3, r9
lbl_80389B54:
/* 80389B54 00386AB4  2C 00 00 20 */	cmpwi r0, 0x20
/* 80389B58 00386AB8  31 20 FF E0 */	addic r9, r0, -32
/* 80389B5C 00386ABC  41 80 00 10 */	blt lbl_80389B6C
/* 80389B60 00386AC0  7C 83 48 30 */	slw r3, r4, r9
/* 80389B64 00386AC4  38 80 00 00 */	li r4, 0
/* 80389B68 00386AC8  48 00 00 18 */	b lbl_80389B80
lbl_80389B6C:
/* 80389B6C 00386ACC  7C 63 00 30 */	slw r3, r3, r0
/* 80389B70 00386AD0  21 20 00 20 */	subfic r9, r0, 0x20
/* 80389B74 00386AD4  7C 89 4C 30 */	srw r9, r4, r9
/* 80389B78 00386AD8  7C 63 4B 78 */	or r3, r3, r9
/* 80389B7C 00386ADC  7C 84 00 30 */	slw r4, r4, r0
lbl_80389B80:
/* 80389B80 00386AE0  39 40 FF FF */	li r10, -1
/* 80389B84 00386AE4  30 E7 00 00 */	addic r7, r7, 0
lbl_80389B88:
/* 80389B88 00386AE8  7C 84 21 14 */	adde r4, r4, r4
/* 80389B8C 00386AEC  7C 63 19 14 */	adde r3, r3, r3
/* 80389B90 00386AF0  7D 08 41 14 */	adde r8, r8, r8
/* 80389B94 00386AF4  7C E7 39 14 */	adde r7, r7, r7
/* 80389B98 00386AF8  7C 06 40 10 */	subfc r0, r6, r8
/* 80389B9C 00386AFC  7D 25 39 11 */	subfe. r9, r5, r7
/* 80389BA0 00386B00  41 80 00 10 */	blt lbl_80389BB0
/* 80389BA4 00386B04  7C 08 03 78 */	mr r8, r0
/* 80389BA8 00386B08  7D 27 4B 78 */	mr r7, r9
/* 80389BAC 00386B0C  30 0A 00 01 */	addic r0, r10, 1
lbl_80389BB0:
/* 80389BB0 00386B10  42 00 FF D8 */	bdnz lbl_80389B88
/* 80389BB4 00386B14  7C 84 21 14 */	adde r4, r4, r4
/* 80389BB8 00386B18  7C 63 19 14 */	adde r3, r3, r3
/* 80389BBC 00386B1C  4E 80 00 20 */	blr
lbl_80389BC0:
/* 80389BC0 00386B20  38 80 00 00 */	li r4, 0
/* 80389BC4 00386B24  38 60 00 00 */	li r3, 0
/* 80389BC8 00386B28  4E 80 00 20 */	blr

.global __div2i
__div2i:
/* 80389BCC 00386B2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80389BD0 00386B30  54 69 00 01 */	rlwinm. r9, r3, 0, 0, 0
/* 80389BD4 00386B34  41 82 00 0C */	beq lbl_80389BE0
/* 80389BD8 00386B38  20 84 00 00 */	subfic r4, r4, 0
/* 80389BDC 00386B3C  7C 63 01 90 */	subfze r3, r3
lbl_80389BE0:
/* 80389BE0 00386B40  91 21 00 08 */	stw r9, 8(r1)
/* 80389BE4 00386B44  54 AA 00 01 */	rlwinm. r10, r5, 0, 0, 0
/* 80389BE8 00386B48  41 82 00 0C */	beq lbl_80389BF4
/* 80389BEC 00386B4C  20 C6 00 00 */	subfic r6, r6, 0
/* 80389BF0 00386B50  7C A5 01 90 */	subfze r5, r5
lbl_80389BF4:
/* 80389BF4 00386B54  91 41 00 0C */	stw r10, 0xc(r1)
/* 80389BF8 00386B58  2C 03 00 00 */	cmpwi r3, 0
/* 80389BFC 00386B5C  7C 60 00 34 */	cntlzw r0, r3
/* 80389C00 00386B60  7C 89 00 34 */	cntlzw r9, r4
/* 80389C04 00386B64  40 82 00 08 */	bne lbl_80389C0C
/* 80389C08 00386B68  38 09 00 20 */	addi r0, r9, 0x20
lbl_80389C0C:
/* 80389C0C 00386B6C  2C 05 00 00 */	cmpwi r5, 0
/* 80389C10 00386B70  7C A9 00 34 */	cntlzw r9, r5
/* 80389C14 00386B74  7C CA 00 34 */	cntlzw r10, r6
/* 80389C18 00386B78  40 82 00 08 */	bne lbl_80389C20
/* 80389C1C 00386B7C  39 2A 00 20 */	addi r9, r10, 0x20
lbl_80389C20:
/* 80389C20 00386B80  7C 00 48 00 */	cmpw r0, r9
/* 80389C24 00386B84  21 40 00 40 */	subfic r10, r0, 0x40
/* 80389C28 00386B88  41 81 00 CC */	bgt lbl_80389CF4
/* 80389C2C 00386B8C  39 29 00 01 */	addi r9, r9, 1
/* 80389C30 00386B90  21 29 00 40 */	subfic r9, r9, 0x40
/* 80389C34 00386B94  7C 00 4A 14 */	add r0, r0, r9
/* 80389C38 00386B98  7D 29 50 50 */	subf r9, r9, r10
/* 80389C3C 00386B9C  7D 29 03 A6 */	mtctr r9
/* 80389C40 00386BA0  2C 09 00 20 */	cmpwi r9, 0x20
/* 80389C44 00386BA4  38 E9 FF E0 */	addi r7, r9, -32
/* 80389C48 00386BA8  41 80 00 10 */	blt lbl_80389C58
/* 80389C4C 00386BAC  7C 68 3C 30 */	srw r8, r3, r7
/* 80389C50 00386BB0  38 E0 00 00 */	li r7, 0
/* 80389C54 00386BB4  48 00 00 18 */	b lbl_80389C6C
lbl_80389C58:
/* 80389C58 00386BB8  7C 88 4C 30 */	srw r8, r4, r9
/* 80389C5C 00386BBC  20 E9 00 20 */	subfic r7, r9, 0x20
/* 80389C60 00386BC0  7C 67 38 30 */	slw r7, r3, r7
/* 80389C64 00386BC4  7D 08 3B 78 */	or r8, r8, r7
/* 80389C68 00386BC8  7C 67 4C 30 */	srw r7, r3, r9
lbl_80389C6C:
/* 80389C6C 00386BCC  2C 00 00 20 */	cmpwi r0, 0x20
/* 80389C70 00386BD0  31 20 FF E0 */	addic r9, r0, -32
/* 80389C74 00386BD4  41 80 00 10 */	blt lbl_80389C84
/* 80389C78 00386BD8  7C 83 48 30 */	slw r3, r4, r9
/* 80389C7C 00386BDC  38 80 00 00 */	li r4, 0
/* 80389C80 00386BE0  48 00 00 18 */	b lbl_80389C98
lbl_80389C84:
/* 80389C84 00386BE4  7C 63 00 30 */	slw r3, r3, r0
/* 80389C88 00386BE8  21 20 00 20 */	subfic r9, r0, 0x20
/* 80389C8C 00386BEC  7C 89 4C 30 */	srw r9, r4, r9
/* 80389C90 00386BF0  7C 63 4B 78 */	or r3, r3, r9
/* 80389C94 00386BF4  7C 84 00 30 */	slw r4, r4, r0
lbl_80389C98:
/* 80389C98 00386BF8  39 40 FF FF */	li r10, -1
/* 80389C9C 00386BFC  30 E7 00 00 */	addic r7, r7, 0
lbl_80389CA0:
/* 80389CA0 00386C00  7C 84 21 14 */	adde r4, r4, r4
/* 80389CA4 00386C04  7C 63 19 14 */	adde r3, r3, r3
/* 80389CA8 00386C08  7D 08 41 14 */	adde r8, r8, r8
/* 80389CAC 00386C0C  7C E7 39 14 */	adde r7, r7, r7
/* 80389CB0 00386C10  7C 06 40 10 */	subfc r0, r6, r8
/* 80389CB4 00386C14  7D 25 39 11 */	subfe. r9, r5, r7
/* 80389CB8 00386C18  41 80 00 10 */	blt lbl_80389CC8
/* 80389CBC 00386C1C  7C 08 03 78 */	mr r8, r0
/* 80389CC0 00386C20  7D 27 4B 78 */	mr r7, r9
/* 80389CC4 00386C24  30 0A 00 01 */	addic r0, r10, 1
lbl_80389CC8:
/* 80389CC8 00386C28  42 00 FF D8 */	bdnz lbl_80389CA0
/* 80389CCC 00386C2C  7C 84 21 14 */	adde r4, r4, r4
/* 80389CD0 00386C30  7C 63 19 14 */	adde r3, r3, r3
/* 80389CD4 00386C34  81 21 00 08 */	lwz r9, 8(r1)
/* 80389CD8 00386C38  81 41 00 0C */	lwz r10, 0xc(r1)
/* 80389CDC 00386C3C  7D 27 52 79 */	xor. r7, r9, r10
/* 80389CE0 00386C40  41 82 00 1C */	beq lbl_80389CFC
/* 80389CE4 00386C44  2C 09 00 00 */	cmpwi r9, 0
/* 80389CE8 00386C48  20 84 00 00 */	subfic r4, r4, 0
/* 80389CEC 00386C4C  7C 63 01 90 */	subfze r3, r3
/* 80389CF0 00386C50  48 00 00 0C */	b lbl_80389CFC
lbl_80389CF4:
/* 80389CF4 00386C54  38 80 00 00 */	li r4, 0
/* 80389CF8 00386C58  38 60 00 00 */	li r3, 0
lbl_80389CFC:
/* 80389CFC 00386C5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80389D00 00386C60  4E 80 00 20 */	blr

.global __mod2u
__mod2u:
/* 80389D04 00386C64  2C 03 00 00 */	cmpwi r3, 0
/* 80389D08 00386C68  7C 60 00 34 */	cntlzw r0, r3
/* 80389D0C 00386C6C  7C 89 00 34 */	cntlzw r9, r4
/* 80389D10 00386C70  40 82 00 08 */	bne lbl_80389D18
/* 80389D14 00386C74  38 09 00 20 */	addi r0, r9, 0x20
lbl_80389D18:
/* 80389D18 00386C78  2C 05 00 00 */	cmpwi r5, 0
/* 80389D1C 00386C7C  7C A9 00 34 */	cntlzw r9, r5
/* 80389D20 00386C80  7C CA 00 34 */	cntlzw r10, r6
/* 80389D24 00386C84  40 82 00 08 */	bne lbl_80389D2C
/* 80389D28 00386C88  39 2A 00 20 */	addi r9, r10, 0x20
lbl_80389D2C:
/* 80389D2C 00386C8C  7C 00 48 00 */	cmpw r0, r9
/* 80389D30 00386C90  21 40 00 40 */	subfic r10, r0, 0x40
/* 80389D34 00386C94  4D 81 00 20 */	bgtlr
/* 80389D38 00386C98  39 29 00 01 */	addi r9, r9, 1
/* 80389D3C 00386C9C  21 29 00 40 */	subfic r9, r9, 0x40
/* 80389D40 00386CA0  7C 00 4A 14 */	add r0, r0, r9
/* 80389D44 00386CA4  7D 29 50 50 */	subf r9, r9, r10
/* 80389D48 00386CA8  7D 29 03 A6 */	mtctr r9
/* 80389D4C 00386CAC  2C 09 00 20 */	cmpwi r9, 0x20
/* 80389D50 00386CB0  38 E9 FF E0 */	addi r7, r9, -32
/* 80389D54 00386CB4  41 80 00 10 */	blt lbl_80389D64
/* 80389D58 00386CB8  7C 68 3C 30 */	srw r8, r3, r7
/* 80389D5C 00386CBC  38 E0 00 00 */	li r7, 0
/* 80389D60 00386CC0  48 00 00 18 */	b lbl_80389D78
lbl_80389D64:
/* 80389D64 00386CC4  7C 88 4C 30 */	srw r8, r4, r9
/* 80389D68 00386CC8  20 E9 00 20 */	subfic r7, r9, 0x20
/* 80389D6C 00386CCC  7C 67 38 30 */	slw r7, r3, r7
/* 80389D70 00386CD0  7D 08 3B 78 */	or r8, r8, r7
/* 80389D74 00386CD4  7C 67 4C 30 */	srw r7, r3, r9
lbl_80389D78:
/* 80389D78 00386CD8  2C 00 00 20 */	cmpwi r0, 0x20
/* 80389D7C 00386CDC  31 20 FF E0 */	addic r9, r0, -32
/* 80389D80 00386CE0  41 80 00 10 */	blt lbl_80389D90
/* 80389D84 00386CE4  7C 83 48 30 */	slw r3, r4, r9
/* 80389D88 00386CE8  38 80 00 00 */	li r4, 0
/* 80389D8C 00386CEC  48 00 00 18 */	b lbl_80389DA4
lbl_80389D90:
/* 80389D90 00386CF0  7C 63 00 30 */	slw r3, r3, r0
/* 80389D94 00386CF4  21 20 00 20 */	subfic r9, r0, 0x20
/* 80389D98 00386CF8  7C 89 4C 30 */	srw r9, r4, r9
/* 80389D9C 00386CFC  7C 63 4B 78 */	or r3, r3, r9
/* 80389DA0 00386D00  7C 84 00 30 */	slw r4, r4, r0
lbl_80389DA4:
/* 80389DA4 00386D04  39 40 FF FF */	li r10, -1
/* 80389DA8 00386D08  30 E7 00 00 */	addic r7, r7, 0
lbl_80389DAC:
/* 80389DAC 00386D0C  7C 84 21 14 */	adde r4, r4, r4
/* 80389DB0 00386D10  7C 63 19 14 */	adde r3, r3, r3
/* 80389DB4 00386D14  7D 08 41 14 */	adde r8, r8, r8
/* 80389DB8 00386D18  7C E7 39 14 */	adde r7, r7, r7
/* 80389DBC 00386D1C  7C 06 40 10 */	subfc r0, r6, r8
/* 80389DC0 00386D20  7D 25 39 11 */	subfe. r9, r5, r7
/* 80389DC4 00386D24  41 80 00 10 */	blt lbl_80389DD4
/* 80389DC8 00386D28  7C 08 03 78 */	mr r8, r0
/* 80389DCC 00386D2C  7D 27 4B 78 */	mr r7, r9
/* 80389DD0 00386D30  30 0A 00 01 */	addic r0, r10, 1
lbl_80389DD4:
/* 80389DD4 00386D34  42 00 FF D8 */	bdnz lbl_80389DAC
/* 80389DD8 00386D38  7D 04 43 78 */	mr r4, r8
/* 80389DDC 00386D3C  7C E3 3B 78 */	mr r3, r7
/* 80389DE0 00386D40  4E 80 00 20 */	blr

.global sub_80389de4
sub_80389de4:
/* 80389DE4 00386D44  4E 80 00 20 */	blr

.global __mod2i
__mod2i:
/* 80389DE8 00386D48  2F 83 00 00 */	cmpwi cr7, r3, 0
/* 80389DEC 00386D4C  40 9C 00 0C */	bge cr7, lbl_80389DF8
/* 80389DF0 00386D50  20 84 00 00 */	subfic r4, r4, 0
/* 80389DF4 00386D54  7C 63 01 90 */	subfze r3, r3
lbl_80389DF8:
/* 80389DF8 00386D58  2C 05 00 00 */	cmpwi r5, 0
/* 80389DFC 00386D5C  40 80 00 0C */	bge lbl_80389E08
/* 80389E00 00386D60  20 C6 00 00 */	subfic r6, r6, 0
/* 80389E04 00386D64  7C A5 01 90 */	subfze r5, r5
lbl_80389E08:
/* 80389E08 00386D68  2C 03 00 00 */	cmpwi r3, 0
/* 80389E0C 00386D6C  7C 60 00 34 */	cntlzw r0, r3
/* 80389E10 00386D70  7C 89 00 34 */	cntlzw r9, r4
/* 80389E14 00386D74  40 82 00 08 */	bne lbl_80389E1C
/* 80389E18 00386D78  38 09 00 20 */	addi r0, r9, 0x20
lbl_80389E1C:
/* 80389E1C 00386D7C  2C 05 00 00 */	cmpwi r5, 0
/* 80389E20 00386D80  7C A9 00 34 */	cntlzw r9, r5
/* 80389E24 00386D84  7C CA 00 34 */	cntlzw r10, r6
/* 80389E28 00386D88  40 82 00 08 */	bne lbl_80389E30
/* 80389E2C 00386D8C  39 2A 00 20 */	addi r9, r10, 0x20
lbl_80389E30:
/* 80389E30 00386D90  7C 00 48 00 */	cmpw r0, r9
/* 80389E34 00386D94  21 40 00 40 */	subfic r10, r0, 0x40
/* 80389E38 00386D98  41 81 00 AC */	bgt lbl_80389EE4
/* 80389E3C 00386D9C  39 29 00 01 */	addi r9, r9, 1
/* 80389E40 00386DA0  21 29 00 40 */	subfic r9, r9, 0x40
/* 80389E44 00386DA4  7C 00 4A 14 */	add r0, r0, r9
/* 80389E48 00386DA8  7D 29 50 50 */	subf r9, r9, r10
/* 80389E4C 00386DAC  7D 29 03 A6 */	mtctr r9
/* 80389E50 00386DB0  2C 09 00 20 */	cmpwi r9, 0x20
/* 80389E54 00386DB4  38 E9 FF E0 */	addi r7, r9, -32
/* 80389E58 00386DB8  41 80 00 10 */	blt lbl_80389E68
/* 80389E5C 00386DBC  7C 68 3C 30 */	srw r8, r3, r7
/* 80389E60 00386DC0  38 E0 00 00 */	li r7, 0
/* 80389E64 00386DC4  48 00 00 18 */	b lbl_80389E7C
lbl_80389E68:
/* 80389E68 00386DC8  7C 88 4C 30 */	srw r8, r4, r9
/* 80389E6C 00386DCC  20 E9 00 20 */	subfic r7, r9, 0x20
/* 80389E70 00386DD0  7C 67 38 30 */	slw r7, r3, r7
/* 80389E74 00386DD4  7D 08 3B 78 */	or r8, r8, r7
/* 80389E78 00386DD8  7C 67 4C 30 */	srw r7, r3, r9
lbl_80389E7C:
/* 80389E7C 00386DDC  2C 00 00 20 */	cmpwi r0, 0x20
/* 80389E80 00386DE0  31 20 FF E0 */	addic r9, r0, -32
/* 80389E84 00386DE4  41 80 00 10 */	blt lbl_80389E94
/* 80389E88 00386DE8  7C 83 48 30 */	slw r3, r4, r9
/* 80389E8C 00386DEC  38 80 00 00 */	li r4, 0
/* 80389E90 00386DF0  48 00 00 18 */	b lbl_80389EA8
lbl_80389E94:
/* 80389E94 00386DF4  7C 63 00 30 */	slw r3, r3, r0
/* 80389E98 00386DF8  21 20 00 20 */	subfic r9, r0, 0x20
/* 80389E9C 00386DFC  7C 89 4C 30 */	srw r9, r4, r9
/* 80389EA0 00386E00  7C 63 4B 78 */	or r3, r3, r9
/* 80389EA4 00386E04  7C 84 00 30 */	slw r4, r4, r0
lbl_80389EA8:
/* 80389EA8 00386E08  39 40 FF FF */	li r10, -1
/* 80389EAC 00386E0C  30 E7 00 00 */	addic r7, r7, 0
lbl_80389EB0:
/* 80389EB0 00386E10  7C 84 21 14 */	adde r4, r4, r4
/* 80389EB4 00386E14  7C 63 19 14 */	adde r3, r3, r3
/* 80389EB8 00386E18  7D 08 41 14 */	adde r8, r8, r8
/* 80389EBC 00386E1C  7C E7 39 14 */	adde r7, r7, r7
/* 80389EC0 00386E20  7C 06 40 10 */	subfc r0, r6, r8
/* 80389EC4 00386E24  7D 25 39 11 */	subfe. r9, r5, r7
/* 80389EC8 00386E28  41 80 00 10 */	blt lbl_80389ED8
/* 80389ECC 00386E2C  7C 08 03 78 */	mr r8, r0
/* 80389ED0 00386E30  7D 27 4B 78 */	mr r7, r9
/* 80389ED4 00386E34  30 0A 00 01 */	addic r0, r10, 1
lbl_80389ED8:
/* 80389ED8 00386E38  42 00 FF D8 */	bdnz lbl_80389EB0
/* 80389EDC 00386E3C  7D 04 43 78 */	mr r4, r8
/* 80389EE0 00386E40  7C E3 3B 78 */	mr r3, r7
lbl_80389EE4:
/* 80389EE4 00386E44  4C 9C 00 20 */	bgelr cr7
/* 80389EE8 00386E48  20 84 00 00 */	subfic r4, r4, 0
/* 80389EEC 00386E4C  7C 63 01 90 */	subfze r3, r3
/* 80389EF0 00386E50  4E 80 00 20 */	blr

.global __shl2i
__shl2i:
/* 80389EF4 00386E54  21 05 00 20 */	subfic r8, r5, 0x20
/* 80389EF8 00386E58  31 25 FF E0 */	addic r9, r5, -32
/* 80389EFC 00386E5C  7C 63 28 30 */	slw r3, r3, r5
/* 80389F00 00386E60  7C 8A 44 30 */	srw r10, r4, r8
/* 80389F04 00386E64  7C 63 53 78 */	or r3, r3, r10
/* 80389F08 00386E68  7C 8A 48 30 */	slw r10, r4, r9
/* 80389F0C 00386E6C  7C 63 53 78 */	or r3, r3, r10
/* 80389F10 00386E70  7C 84 28 30 */	slw r4, r4, r5
/* 80389F14 00386E74  4E 80 00 20 */	blr

.global __shr2u
__shr2u:
/* 80389F18 00386E78  21 05 00 20 */	subfic r8, r5, 0x20
/* 80389F1C 00386E7C  31 25 FF E0 */	addic r9, r5, -32
/* 80389F20 00386E80  7C 84 2C 30 */	srw r4, r4, r5
/* 80389F24 00386E84  7C 6A 40 30 */	slw r10, r3, r8
/* 80389F28 00386E88  7C 84 53 78 */	or r4, r4, r10
/* 80389F2C 00386E8C  7C 6A 4C 30 */	srw r10, r3, r9
/* 80389F30 00386E90  7C 84 53 78 */	or r4, r4, r10
/* 80389F34 00386E94  7C 63 2C 30 */	srw r3, r3, r5
/* 80389F38 00386E98  4E 80 00 20 */	blr

.global __shr2i
__shr2i:
/* 80389F3C 00386E9C  21 05 00 20 */	subfic r8, r5, 0x20
/* 80389F40 00386EA0  35 25 FF E0 */	addic. r9, r5, -32
/* 80389F44 00386EA4  7C 84 2C 30 */	srw r4, r4, r5
/* 80389F48 00386EA8  7C 6A 40 30 */	slw r10, r3, r8
/* 80389F4C 00386EAC  7C 84 53 78 */	or r4, r4, r10
/* 80389F50 00386EB0  7C 6A 4E 30 */	sraw r10, r3, r9
/* 80389F54 00386EB4  40 81 00 08 */	ble lbl_80389F5C
/* 80389F58 00386EB8  7C 84 53 78 */	or r4, r4, r10
lbl_80389F5C:
/* 80389F5C 00386EBC  7C 63 2E 30 */	sraw r3, r3, r5
/* 80389F60 00386EC0  4E 80 00 20 */	blr

.global __cvt_sll_flt
__cvt_sll_flt:
/* 80389F64 00386EC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80389F68 00386EC8  54 65 00 01 */	rlwinm. r5, r3, 0, 0, 0
/* 80389F6C 00386ECC  41 82 00 0C */	beq lbl_80389F78
/* 80389F70 00386ED0  20 84 00 00 */	subfic r4, r4, 0
/* 80389F74 00386ED4  7C 63 01 90 */	subfze r3, r3
lbl_80389F78:
/* 80389F78 00386ED8  7C 67 23 79 */	or. r7, r3, r4
/* 80389F7C 00386EDC  38 C0 00 00 */	li r6, 0
/* 80389F80 00386EE0  41 82 00 80 */	beq lbl_8038A000
/* 80389F84 00386EE4  7C 67 00 34 */	cntlzw r7, r3
/* 80389F88 00386EE8  7C 88 00 34 */	cntlzw r8, r4
/* 80389F8C 00386EEC  54 E9 D0 08 */	rlwinm r9, r7, 0x1a, 0, 4
/* 80389F90 00386EF0  7D 29 FE 70 */	srawi r9, r9, 0x1f
/* 80389F94 00386EF4  7D 29 40 38 */	and r9, r9, r8
/* 80389F98 00386EF8  7C E7 4A 14 */	add r7, r7, r9
/* 80389F9C 00386EFC  21 07 00 20 */	subfic r8, r7, 0x20
/* 80389FA0 00386F00  31 27 FF E0 */	addic r9, r7, -32
/* 80389FA4 00386F04  7C 63 38 30 */	slw r3, r3, r7
/* 80389FA8 00386F08  7C 8A 44 30 */	srw r10, r4, r8
/* 80389FAC 00386F0C  7C 63 53 78 */	or r3, r3, r10
/* 80389FB0 00386F10  7C 8A 48 30 */	slw r10, r4, r9
/* 80389FB4 00386F14  7C 63 53 78 */	or r3, r3, r10
/* 80389FB8 00386F18  7C 84 38 30 */	slw r4, r4, r7
/* 80389FBC 00386F1C  7C C7 30 50 */	subf r6, r7, r6
/* 80389FC0 00386F20  54 87 05 7E */	clrlwi r7, r4, 0x15
/* 80389FC4 00386F24  2C 07 04 00 */	cmpwi r7, 0x400
/* 80389FC8 00386F28  38 C6 04 3E */	addi r6, r6, 0x43e
/* 80389FCC 00386F2C  41 80 00 1C */	blt lbl_80389FE8
/* 80389FD0 00386F30  41 81 00 0C */	bgt lbl_80389FDC
/* 80389FD4 00386F34  54 87 05 29 */	rlwinm. r7, r4, 0, 0x14, 0x14
/* 80389FD8 00386F38  41 82 00 10 */	beq lbl_80389FE8
lbl_80389FDC:
/* 80389FDC 00386F3C  30 84 08 00 */	addic r4, r4, 0x800
/* 80389FE0 00386F40  7C 63 01 94 */	addze r3, r3
/* 80389FE4 00386F44  7C C6 01 94 */	addze r6, r6
lbl_80389FE8:
/* 80389FE8 00386F48  54 84 A8 3E */	rotlwi r4, r4, 0x15
/* 80389FEC 00386F4C  50 64 A8 14 */	rlwimi r4, r3, 0x15, 0, 0xa
/* 80389FF0 00386F50  54 63 AB 3E */	rlwinm r3, r3, 0x15, 0xc, 0x1f
/* 80389FF4 00386F54  54 C6 A0 16 */	slwi r6, r6, 0x14
/* 80389FF8 00386F58  7C C3 1B 78 */	or r3, r6, r3
/* 80389FFC 00386F5C  7C A3 1B 78 */	or r3, r5, r3
lbl_8038A000:
/* 8038A000 00386F60  90 61 00 08 */	stw r3, 8(r1)
/* 8038A004 00386F64  90 81 00 0C */	stw r4, 0xc(r1)
/* 8038A008 00386F68  C8 21 00 08 */	lfd f1, 8(r1)
/* 8038A00C 00386F6C  FC 20 08 18 */	frsp f1, f1
/* 8038A010 00386F70  38 21 00 10 */	addi r1, r1, 0x10
/* 8038A014 00386F74  4E 80 00 20 */	blr

.global __cvt_dbl_usll
__cvt_dbl_usll:
/* 8038A018 00386F78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8038A01C 00386F7C  D8 21 00 08 */	stfd f1, 8(r1)
/* 8038A020 00386F80  80 61 00 08 */	lwz r3, 8(r1)
/* 8038A024 00386F84  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8038A028 00386F88  54 65 65 7E */	rlwinm r5, r3, 0xc, 0x15, 0x1f
/* 8038A02C 00386F8C  28 05 03 FF */	cmplwi r5, 0x3ff
/* 8038A030 00386F90  40 80 00 10 */	bge lbl_8038A040
/* 8038A034 00386F94  38 60 00 00 */	li r3, 0
/* 8038A038 00386F98  38 80 00 00 */	li r4, 0
/* 8038A03C 00386F9C  48 00 00 A0 */	b lbl_8038A0DC
lbl_8038A040:
/* 8038A040 00386FA0  7C 66 1B 78 */	mr r6, r3
/* 8038A044 00386FA4  54 63 03 3E */	clrlwi r3, r3, 0xc
/* 8038A048 00386FA8  64 63 00 10 */	oris r3, r3, 0x10
/* 8038A04C 00386FAC  38 A5 FB CD */	addi r5, r5, -1075
/* 8038A050 00386FB0  2C 05 00 00 */	cmpwi r5, 0
/* 8038A054 00386FB4  40 80 00 2C */	bge lbl_8038A080
/* 8038A058 00386FB8  7C A5 00 D0 */	neg r5, r5
/* 8038A05C 00386FBC  21 05 00 20 */	subfic r8, r5, 0x20
/* 8038A060 00386FC0  31 25 FF E0 */	addic r9, r5, -32
/* 8038A064 00386FC4  7C 84 2C 30 */	srw r4, r4, r5
/* 8038A068 00386FC8  7C 6A 40 30 */	slw r10, r3, r8
/* 8038A06C 00386FCC  7C 84 53 78 */	or r4, r4, r10
/* 8038A070 00386FD0  7C 6A 4C 30 */	srw r10, r3, r9
/* 8038A074 00386FD4  7C 84 53 78 */	or r4, r4, r10
/* 8038A078 00386FD8  7C 63 2C 30 */	srw r3, r3, r5
/* 8038A07C 00386FDC  48 00 00 50 */	b lbl_8038A0CC
lbl_8038A080:
/* 8038A080 00386FE0  2C 05 00 0A */	cmpwi r5, 0xa
/* 8038A084 00386FE4  40 A1 00 28 */	ble+ lbl_8038A0AC
/* 8038A088 00386FE8  54 C6 00 01 */	rlwinm. r6, r6, 0, 0, 0
/* 8038A08C 00386FEC  41 82 00 10 */	beq lbl_8038A09C
/* 8038A090 00386FF0  3C 60 80 00 */	lis r3, 0x8000
/* 8038A094 00386FF4  38 80 00 00 */	li r4, 0
/* 8038A098 00386FF8  48 00 00 44 */	b lbl_8038A0DC
lbl_8038A09C:
/* 8038A09C 00386FFC  3C 60 7F FF */	lis r3, 0x7FFFFFFF@h
/* 8038A0A0 00387000  60 63 FF FF */	ori r3, r3, 0x7FFFFFFF@l
/* 8038A0A4 00387004  38 80 FF FF */	li r4, -1
/* 8038A0A8 00387008  48 00 00 34 */	b lbl_8038A0DC
lbl_8038A0AC:
/* 8038A0AC 0038700C  21 05 00 20 */	subfic r8, r5, 0x20
/* 8038A0B0 00387010  31 25 FF E0 */	addic r9, r5, -32
/* 8038A0B4 00387014  7C 63 28 30 */	slw r3, r3, r5
/* 8038A0B8 00387018  7C 8A 44 30 */	srw r10, r4, r8
/* 8038A0BC 0038701C  7C 63 53 78 */	or r3, r3, r10
/* 8038A0C0 00387020  7C 8A 48 30 */	slw r10, r4, r9
/* 8038A0C4 00387024  7C 63 53 78 */	or r3, r3, r10
/* 8038A0C8 00387028  7C 84 28 30 */	slw r4, r4, r5
lbl_8038A0CC:
/* 8038A0CC 0038702C  54 C6 00 01 */	rlwinm. r6, r6, 0, 0, 0
/* 8038A0D0 00387030  41 82 00 0C */	beq lbl_8038A0DC
/* 8038A0D4 00387034  20 84 00 00 */	subfic r4, r4, 0
/* 8038A0D8 00387038  7C 63 01 90 */	subfze r3, r3
lbl_8038A0DC:
/* 8038A0DC 0038703C  38 21 00 10 */	addi r1, r1, 0x10
/* 8038A0E0 00387040  4E 80 00 20 */	blr
