.include "macros.inc"

.section .text, "ax"

.global sndAuxCallbackDelay
sndAuxCallbackDelay:
/* 803B6904 003B3864  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B6908 003B3868  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 803B690C 003B386C  2C 00 00 01 */	cmpwi r0, 1
/* 803B6910 003B3870  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B6914 003B3874  41 82 01 4C */	beq lbl_803B6A60
/* 803B6918 003B3878  40 80 01 48 */	bge lbl_803B6A60
/* 803B691C 003B387C  2C 00 00 00 */	cmpwi r0, 0
/* 803B6920 003B3880  40 80 00 08 */	bge lbl_803B6928
/* 803B6924 003B3884  48 00 01 3C */	b lbl_803B6A60
lbl_803B6928:
/* 803B6928 003B3888  80 E5 00 0C */	lwz r7, 0xc(r5)
/* 803B692C 003B388C  38 00 00 A0 */	li r0, 0xa0
/* 803B6930 003B3890  80 65 00 10 */	lwz r3, 0x10(r5)
/* 803B6934 003B3894  80 C5 00 14 */	lwz r6, 0x14(r5)
/* 803B6938 003B3898  1C E7 02 80 */	mulli r7, r7, 0x280
/* 803B693C 003B389C  81 05 00 30 */	lwz r8, 0x30(r5)
/* 803B6940 003B38A0  81 85 00 34 */	lwz r12, 0x34(r5)
/* 803B6944 003B38A4  1D 23 02 80 */	mulli r9, r3, 0x280
/* 803B6948 003B38A8  81 65 00 38 */	lwz r11, 0x38(r5)
/* 803B694C 003B38AC  7C 68 3A 14 */	add r3, r8, r7
/* 803B6950 003B38B0  80 E4 00 00 */	lwz r7, 0(r4)
/* 803B6954 003B38B4  81 04 00 04 */	lwz r8, 4(r4)
/* 803B6958 003B38B8  1D 46 02 80 */	mulli r10, r6, 0x280
/* 803B695C 003B38BC  7C CC 4A 14 */	add r6, r12, r9
/* 803B6960 003B38C0  81 24 00 08 */	lwz r9, 8(r4)
/* 803B6964 003B38C4  7C 8B 52 14 */	add r4, r11, r10
/* 803B6968 003B38C8  7C 09 03 A6 */	mtctr r0
lbl_803B696C:
/* 803B696C 003B38CC  81 83 00 00 */	lwz r12, 0(r3)
/* 803B6970 003B38D0  80 05 00 18 */	lwz r0, 0x18(r5)
/* 803B6974 003B38D4  81 67 00 00 */	lwz r11, 0(r7)
/* 803B6978 003B38D8  7D 4C 01 D6 */	mullw r10, r12, r0
/* 803B697C 003B38DC  83 E6 00 00 */	lwz r31, 0(r6)
/* 803B6980 003B38E0  80 04 00 00 */	lwz r0, 0(r4)
/* 803B6984 003B38E4  7D 4A 3E 70 */	srawi r10, r10, 7
/* 803B6988 003B38E8  7D 4B 52 14 */	add r10, r11, r10
/* 803B698C 003B38EC  91 43 00 00 */	stw r10, 0(r3)
/* 803B6990 003B38F0  38 63 00 04 */	addi r3, r3, 4
/* 803B6994 003B38F4  81 45 00 1C */	lwz r10, 0x1c(r5)
/* 803B6998 003B38F8  81 68 00 00 */	lwz r11, 0(r8)
/* 803B699C 003B38FC  7D 5F 51 D6 */	mullw r10, r31, r10
/* 803B69A0 003B3900  7D 4A 3E 70 */	srawi r10, r10, 7
/* 803B69A4 003B3904  7D 4B 52 14 */	add r10, r11, r10
/* 803B69A8 003B3908  91 46 00 00 */	stw r10, 0(r6)
/* 803B69AC 003B390C  38 C6 00 04 */	addi r6, r6, 4
/* 803B69B0 003B3910  81 45 00 20 */	lwz r10, 0x20(r5)
/* 803B69B4 003B3914  81 69 00 00 */	lwz r11, 0(r9)
/* 803B69B8 003B3918  7D 40 51 D6 */	mullw r10, r0, r10
/* 803B69BC 003B391C  7D 4A 3E 70 */	srawi r10, r10, 7
/* 803B69C0 003B3920  7D 4B 52 14 */	add r10, r11, r10
/* 803B69C4 003B3924  91 44 00 00 */	stw r10, 0(r4)
/* 803B69C8 003B3928  38 84 00 04 */	addi r4, r4, 4
/* 803B69CC 003B392C  81 45 00 24 */	lwz r10, 0x24(r5)
/* 803B69D0 003B3930  7D 4C 51 D6 */	mullw r10, r12, r10
/* 803B69D4 003B3934  7D 4A 3E 70 */	srawi r10, r10, 7
/* 803B69D8 003B3938  91 47 00 00 */	stw r10, 0(r7)
/* 803B69DC 003B393C  38 E7 00 04 */	addi r7, r7, 4
/* 803B69E0 003B3940  81 45 00 28 */	lwz r10, 0x28(r5)
/* 803B69E4 003B3944  7D 5F 51 D6 */	mullw r10, r31, r10
/* 803B69E8 003B3948  7D 4A 3E 70 */	srawi r10, r10, 7
/* 803B69EC 003B394C  91 48 00 00 */	stw r10, 0(r8)
/* 803B69F0 003B3950  39 08 00 04 */	addi r8, r8, 4
/* 803B69F4 003B3954  81 45 00 2C */	lwz r10, 0x2c(r5)
/* 803B69F8 003B3958  7C 00 51 D6 */	mullw r0, r0, r10
/* 803B69FC 003B395C  7C 00 3E 70 */	srawi r0, r0, 7
/* 803B6A00 003B3960  90 09 00 00 */	stw r0, 0(r9)
/* 803B6A04 003B3964  39 29 00 04 */	addi r9, r9, 4
/* 803B6A08 003B3968  42 00 FF 64 */	bdnz lbl_803B696C
/* 803B6A0C 003B396C  80 85 00 0C */	lwz r4, 0xc(r5)
/* 803B6A10 003B3970  80 65 00 00 */	lwz r3, 0(r5)
/* 803B6A14 003B3974  38 84 00 01 */	addi r4, r4, 1
/* 803B6A18 003B3978  7C 04 1B 96 */	divwu r0, r4, r3
/* 803B6A1C 003B397C  7C 00 19 D6 */	mullw r0, r0, r3
/* 803B6A20 003B3980  7C 00 20 50 */	subf r0, r0, r4
/* 803B6A24 003B3984  90 05 00 0C */	stw r0, 0xc(r5)
/* 803B6A28 003B3988  80 85 00 10 */	lwz r4, 0x10(r5)
/* 803B6A2C 003B398C  80 65 00 04 */	lwz r3, 4(r5)
/* 803B6A30 003B3990  38 84 00 01 */	addi r4, r4, 1
/* 803B6A34 003B3994  7C 04 1B 96 */	divwu r0, r4, r3
/* 803B6A38 003B3998  7C 00 19 D6 */	mullw r0, r0, r3
/* 803B6A3C 003B399C  7C 00 20 50 */	subf r0, r0, r4
/* 803B6A40 003B39A0  90 05 00 10 */	stw r0, 0x10(r5)
/* 803B6A44 003B39A4  80 85 00 14 */	lwz r4, 0x14(r5)
/* 803B6A48 003B39A8  80 65 00 08 */	lwz r3, 8(r5)
/* 803B6A4C 003B39AC  38 84 00 01 */	addi r4, r4, 1
/* 803B6A50 003B39B0  7C 04 1B 96 */	divwu r0, r4, r3
/* 803B6A54 003B39B4  7C 00 19 D6 */	mullw r0, r0, r3
/* 803B6A58 003B39B8  7C 00 20 50 */	subf r0, r0, r4
/* 803B6A5C 003B39BC  90 05 00 14 */	stw r0, 0x14(r5)
lbl_803B6A60:
/* 803B6A60 003B39C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B6A64 003B39C4  38 21 00 10 */	addi r1, r1, 0x10
/* 803B6A68 003B39C8  4E 80 00 20 */	blr 

.global sndAuxCallbackUpdateSettingsDelay
sndAuxCallbackUpdateSettingsDelay:
/* 803B6A6C 003B39CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B6A70 003B39D0  7C 08 02 A6 */	mflr r0
/* 803B6A74 003B39D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B6A78 003B39D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B6A7C 003B39DC  7C 7F 1B 78 */	mr r31, r3
/* 803B6A80 003B39E0  48 00 01 E5 */	bl sndAuxCallbackShutdownDelay
/* 803B6A84 003B39E4  80 DF 00 3C */	lwz r6, 0x3c(r31)
/* 803B6A88 003B39E8  3C 80 CC CD */	lis r4, 0xCCCCCCCD@ha
/* 803B6A8C 003B39EC  3C A0 51 EC */	lis r5, 0x51EB851F@ha
/* 803B6A90 003B39F0  38 60 00 00 */	li r3, 0
/* 803B6A94 003B39F4  38 06 FF FB */	addi r0, r6, -5
/* 803B6A98 003B39F8  38 84 CC CD */	addi r4, r4, 0xCCCCCCCD@l
/* 803B6A9C 003B39FC  54 06 28 34 */	slwi r6, r0, 5
/* 803B6AA0 003B3A00  38 05 85 1F */	addi r0, r5, 0x51EB851F@l
/* 803B6AA4 003B3A04  38 A6 00 9F */	addi r5, r6, 0x9f
/* 803B6AA8 003B3A08  7C A4 28 16 */	mulhwu r5, r4, r5
/* 803B6AAC 003B3A0C  54 A5 C9 FE */	srwi r5, r5, 7
/* 803B6AB0 003B3A10  90 BF 00 00 */	stw r5, 0(r31)
/* 803B6AB4 003B3A14  90 7F 00 0C */	stw r3, 0xc(r31)
/* 803B6AB8 003B3A18  80 BF 00 48 */	lwz r5, 0x48(r31)
/* 803B6ABC 003B3A1C  54 A5 38 30 */	slwi r5, r5, 7
/* 803B6AC0 003B3A20  7C A0 28 16 */	mulhwu r5, r0, r5
/* 803B6AC4 003B3A24  54 A5 D9 7E */	srwi r5, r5, 5
/* 803B6AC8 003B3A28  90 BF 00 18 */	stw r5, 0x18(r31)
/* 803B6ACC 003B3A2C  80 BF 00 54 */	lwz r5, 0x54(r31)
/* 803B6AD0 003B3A30  54 A5 38 30 */	slwi r5, r5, 7
/* 803B6AD4 003B3A34  7C A0 28 16 */	mulhwu r5, r0, r5
/* 803B6AD8 003B3A38  54 A5 D9 7E */	srwi r5, r5, 5
/* 803B6ADC 003B3A3C  90 BF 00 24 */	stw r5, 0x24(r31)
/* 803B6AE0 003B3A40  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 803B6AE4 003B3A44  38 A5 FF FB */	addi r5, r5, -5
/* 803B6AE8 003B3A48  54 A5 28 34 */	slwi r5, r5, 5
/* 803B6AEC 003B3A4C  38 A5 00 9F */	addi r5, r5, 0x9f
/* 803B6AF0 003B3A50  7C A4 28 16 */	mulhwu r5, r4, r5
/* 803B6AF4 003B3A54  54 A5 C9 FE */	srwi r5, r5, 7
/* 803B6AF8 003B3A58  90 BF 00 04 */	stw r5, 4(r31)
/* 803B6AFC 003B3A5C  90 7F 00 10 */	stw r3, 0x10(r31)
/* 803B6B00 003B3A60  80 BF 00 4C */	lwz r5, 0x4c(r31)
/* 803B6B04 003B3A64  54 A5 38 30 */	slwi r5, r5, 7
/* 803B6B08 003B3A68  7C A0 28 16 */	mulhwu r5, r0, r5
/* 803B6B0C 003B3A6C  54 A5 D9 7E */	srwi r5, r5, 5
/* 803B6B10 003B3A70  90 BF 00 1C */	stw r5, 0x1c(r31)
/* 803B6B14 003B3A74  80 BF 00 58 */	lwz r5, 0x58(r31)
/* 803B6B18 003B3A78  54 A5 38 30 */	slwi r5, r5, 7
/* 803B6B1C 003B3A7C  7C A0 28 16 */	mulhwu r5, r0, r5
/* 803B6B20 003B3A80  54 A5 D9 7E */	srwi r5, r5, 5
/* 803B6B24 003B3A84  90 BF 00 28 */	stw r5, 0x28(r31)
/* 803B6B28 003B3A88  80 BF 00 44 */	lwz r5, 0x44(r31)
/* 803B6B2C 003B3A8C  38 A5 FF FB */	addi r5, r5, -5
/* 803B6B30 003B3A90  54 A5 28 34 */	slwi r5, r5, 5
/* 803B6B34 003B3A94  38 A5 00 9F */	addi r5, r5, 0x9f
/* 803B6B38 003B3A98  7C 84 28 16 */	mulhwu r4, r4, r5
/* 803B6B3C 003B3A9C  54 84 C9 FE */	srwi r4, r4, 7
/* 803B6B40 003B3AA0  90 9F 00 08 */	stw r4, 8(r31)
/* 803B6B44 003B3AA4  90 7F 00 14 */	stw r3, 0x14(r31)
/* 803B6B48 003B3AA8  80 7F 00 50 */	lwz r3, 0x50(r31)
/* 803B6B4C 003B3AAC  54 63 38 30 */	slwi r3, r3, 7
/* 803B6B50 003B3AB0  7C 60 18 16 */	mulhwu r3, r0, r3
/* 803B6B54 003B3AB4  54 63 D9 7E */	srwi r3, r3, 5
/* 803B6B58 003B3AB8  90 7F 00 20 */	stw r3, 0x20(r31)
/* 803B6B5C 003B3ABC  80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 803B6B60 003B3AC0  54 63 38 30 */	slwi r3, r3, 7
/* 803B6B64 003B3AC4  7C 00 18 16 */	mulhwu r0, r0, r3
/* 803B6B68 003B3AC8  54 00 D9 7E */	srwi r0, r0, 5
/* 803B6B6C 003B3ACC  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 803B6B70 003B3AD0  80 1F 00 00 */	lwz r0, 0(r31)
/* 803B6B74 003B3AD4  1C 60 02 80 */	mulli r3, r0, 0x280
/* 803B6B78 003B3AD8  4B FF E5 BD */	bl salMalloc
/* 803B6B7C 003B3ADC  90 7F 00 30 */	stw r3, 0x30(r31)
/* 803B6B80 003B3AE0  80 1F 00 04 */	lwz r0, 4(r31)
/* 803B6B84 003B3AE4  1C 60 02 80 */	mulli r3, r0, 0x280
/* 803B6B88 003B3AE8  4B FF E5 AD */	bl salMalloc
/* 803B6B8C 003B3AEC  90 7F 00 34 */	stw r3, 0x34(r31)
/* 803B6B90 003B3AF0  80 1F 00 08 */	lwz r0, 8(r31)
/* 803B6B94 003B3AF4  1C 60 02 80 */	mulli r3, r0, 0x280
/* 803B6B98 003B3AF8  4B FF E5 9D */	bl salMalloc
/* 803B6B9C 003B3AFC  90 7F 00 38 */	stw r3, 0x38(r31)
/* 803B6BA0 003B3B00  38 80 00 00 */	li r4, 0
/* 803B6BA4 003B3B04  38 60 00 00 */	li r3, 0
/* 803B6BA8 003B3B08  80 BF 00 30 */	lwz r5, 0x30(r31)
/* 803B6BAC 003B3B0C  80 DF 00 34 */	lwz r6, 0x34(r31)
/* 803B6BB0 003B3B10  80 FF 00 38 */	lwz r7, 0x38(r31)
/* 803B6BB4 003B3B14  48 00 00 10 */	b lbl_803B6BC4
lbl_803B6BB8:
/* 803B6BB8 003B3B18  90 65 00 00 */	stw r3, 0(r5)
/* 803B6BBC 003B3B1C  38 A5 00 04 */	addi r5, r5, 4
/* 803B6BC0 003B3B20  38 84 00 01 */	addi r4, r4, 1
lbl_803B6BC4:
/* 803B6BC4 003B3B24  80 1F 00 00 */	lwz r0, 0(r31)
/* 803B6BC8 003B3B28  1C 00 00 A0 */	mulli r0, r0, 0xa0
/* 803B6BCC 003B3B2C  7C 04 00 40 */	cmplw r4, r0
/* 803B6BD0 003B3B30  41 80 FF E8 */	blt lbl_803B6BB8
/* 803B6BD4 003B3B34  38 80 00 00 */	li r4, 0
/* 803B6BD8 003B3B38  7C 83 23 78 */	mr r3, r4
/* 803B6BDC 003B3B3C  48 00 00 10 */	b lbl_803B6BEC
lbl_803B6BE0:
/* 803B6BE0 003B3B40  90 66 00 00 */	stw r3, 0(r6)
/* 803B6BE4 003B3B44  38 C6 00 04 */	addi r6, r6, 4
/* 803B6BE8 003B3B48  38 84 00 01 */	addi r4, r4, 1
lbl_803B6BEC:
/* 803B6BEC 003B3B4C  80 1F 00 04 */	lwz r0, 4(r31)
/* 803B6BF0 003B3B50  1C 00 00 A0 */	mulli r0, r0, 0xa0
/* 803B6BF4 003B3B54  7C 04 00 40 */	cmplw r4, r0
/* 803B6BF8 003B3B58  41 80 FF E8 */	blt lbl_803B6BE0
/* 803B6BFC 003B3B5C  38 80 00 00 */	li r4, 0
/* 803B6C00 003B3B60  7C 83 23 78 */	mr r3, r4
/* 803B6C04 003B3B64  48 00 00 10 */	b lbl_803B6C14
lbl_803B6C08:
/* 803B6C08 003B3B68  90 67 00 00 */	stw r3, 0(r7)
/* 803B6C0C 003B3B6C  38 E7 00 04 */	addi r7, r7, 4
/* 803B6C10 003B3B70  38 84 00 01 */	addi r4, r4, 1
lbl_803B6C14:
/* 803B6C14 003B3B74  80 1F 00 08 */	lwz r0, 8(r31)
/* 803B6C18 003B3B78  1C 00 00 A0 */	mulli r0, r0, 0xa0
/* 803B6C1C 003B3B7C  7C 04 00 40 */	cmplw r4, r0
/* 803B6C20 003B3B80  41 80 FF E8 */	blt lbl_803B6C08
/* 803B6C24 003B3B84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B6C28 003B3B88  38 60 00 01 */	li r3, 1
/* 803B6C2C 003B3B8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B6C30 003B3B90  7C 08 03 A6 */	mtlr r0
/* 803B6C34 003B3B94  38 21 00 10 */	addi r1, r1, 0x10
/* 803B6C38 003B3B98  4E 80 00 20 */	blr 

.global sndAuxCallbackPrepareDelay
sndAuxCallbackPrepareDelay:
/* 803B6C3C 003B3B9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B6C40 003B3BA0  7C 08 02 A6 */	mflr r0
/* 803B6C44 003B3BA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B6C48 003B3BA8  38 00 00 00 */	li r0, 0
/* 803B6C4C 003B3BAC  90 03 00 30 */	stw r0, 0x30(r3)
/* 803B6C50 003B3BB0  4B FF FE 1D */	bl sndAuxCallbackUpdateSettingsDelay
/* 803B6C54 003B3BB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B6C58 003B3BB8  7C 08 03 A6 */	mtlr r0
/* 803B6C5C 003B3BBC  38 21 00 10 */	addi r1, r1, 0x10
/* 803B6C60 003B3BC0  4E 80 00 20 */	blr 

.global sndAuxCallbackShutdownDelay
sndAuxCallbackShutdownDelay:
/* 803B6C64 003B3BC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B6C68 003B3BC8  7C 08 02 A6 */	mflr r0
/* 803B6C6C 003B3BCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B6C70 003B3BD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B6C74 003B3BD4  7C 7F 1B 78 */	mr r31, r3
/* 803B6C78 003B3BD8  80 63 00 30 */	lwz r3, 0x30(r3)
/* 803B6C7C 003B3BDC  28 03 00 00 */	cmplwi r3, 0
/* 803B6C80 003B3BE0  41 82 00 18 */	beq lbl_803B6C98
/* 803B6C84 003B3BE4  4B FF E4 D9 */	bl salFree
/* 803B6C88 003B3BE8  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 803B6C8C 003B3BEC  4B FF E4 D1 */	bl salFree
/* 803B6C90 003B3BF0  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 803B6C94 003B3BF4  4B FF E4 C9 */	bl salFree
lbl_803B6C98:
/* 803B6C98 003B3BF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B6C9C 003B3BFC  38 60 00 01 */	li r3, 1
/* 803B6CA0 003B3C00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B6CA4 003B3C04  7C 08 03 A6 */	mtlr r0
/* 803B6CA8 003B3C08  38 21 00 10 */	addi r1, r1, 0x10
/* 803B6CAC 003B3C0C  4E 80 00 20 */	blr 