.include "macros.inc"

.section .data
.balign 8

.global lbl_803E5C60
lbl_803E5C60:
	# ROM: 0x3E2C60
	.4byte 0
	.4byte 0
	.4byte __dt__8CABSIdleFv
	.4byte ApplyHeadTracking__18CAdditiveBodyStateCFv
	.4byte CanShoot__18CAdditiveBodyStateCFv
	.4byte Start__8CABSIdleFR15CBodyControllerR13CStateManager
	.4byte UpdateBody__8CABSIdleFfR15CBodyControllerR13CStateManager
	.4byte Shutdown__8CABSIdleFR15CBodyController

.section .text, "ax"

.global __dt__8CABSIdleFv
__dt__8CABSIdleFv:
/* 801D9934 001D6894  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D9938 001D6898  7C 08 02 A6 */	mflr r0
/* 801D993C 001D689C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D9940 001D68A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D9944 001D68A4  7C 7F 1B 79 */	or. r31, r3, r3
/* 801D9948 001D68A8  41 82 00 30 */	beq lbl_801D9978
/* 801D994C 001D68AC  3C 60 80 3E */	lis r3, lbl_803E5C60@ha
/* 801D9950 001D68B0  38 03 5C 60 */	addi r0, r3, lbl_803E5C60@l
/* 801D9954 001D68B4  90 1F 00 00 */	stw r0, 0(r31)
/* 801D9958 001D68B8  41 82 00 10 */	beq lbl_801D9968
/* 801D995C 001D68BC  3C 60 80 3E */	lis r3, lbl_803E1350@ha
/* 801D9960 001D68C0  38 03 13 50 */	addi r0, r3, lbl_803E1350@l
/* 801D9964 001D68C4  90 1F 00 00 */	stw r0, 0(r31)
lbl_801D9968:
/* 801D9968 001D68C8  7C 80 07 35 */	extsh. r0, r4
/* 801D996C 001D68CC  40 81 00 0C */	ble lbl_801D9978
/* 801D9970 001D68D0  7F E3 FB 78 */	mr r3, r31
/* 801D9974 001D68D4  48 13 BF BD */	bl Free__7CMemoryFPCv
lbl_801D9978:
/* 801D9978 001D68D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D997C 001D68DC  7F E3 FB 78 */	mr r3, r31
/* 801D9980 001D68E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D9984 001D68E4  7C 08 03 A6 */	mtlr r0
/* 801D9988 001D68E8  38 21 00 10 */	addi r1, r1, 0x10
/* 801D998C 001D68EC  4E 80 00 20 */	blr

.global Start__8CABSIdleFR15CBodyControllerR13CStateManager
Start__8CABSIdleFR15CBodyControllerR13CStateManager:
/* 801D9990 001D68F0  4E 80 00 20 */	blr

.global Shutdown__8CABSIdleFR15CBodyController
Shutdown__8CABSIdleFR15CBodyController:
/* 801D9994 001D68F4  4E 80 00 20 */	blr

.global GetBodyStateTransition__8CABSIdleFfR15CBodyController
GetBodyStateTransition__8CABSIdleFfR15CBodyController:
/* 801D9998 001D68F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D999C 001D68FC  7C 08 02 A6 */	mflr r0
/* 801D99A0 001D6900  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D99A4 001D6904  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D99A8 001D6908  3B E4 00 04 */	addi r31, r4, 4
/* 801D99AC 001D690C  38 80 00 1A */	li r4, 0x1a
/* 801D99B0 001D6910  7F E3 FB 78 */	mr r3, r31
/* 801D99B4 001D6914  4B F5 7A 9D */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801D99B8 001D6918  28 03 00 00 */	cmplwi r3, 0
/* 801D99BC 001D691C  41 82 00 0C */	beq lbl_801D99C8
/* 801D99C0 001D6920  38 60 00 18 */	li r3, 0x18
/* 801D99C4 001D6924  48 00 00 3C */	b lbl_801D9A00
lbl_801D99C8:
/* 801D99C8 001D6928  7F E3 FB 78 */	mr r3, r31
/* 801D99CC 001D692C  38 80 00 19 */	li r4, 0x19
/* 801D99D0 001D6930  4B F5 7A 81 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801D99D4 001D6934  28 03 00 00 */	cmplwi r3, 0
/* 801D99D8 001D6938  41 82 00 0C */	beq lbl_801D99E4
/* 801D99DC 001D693C  38 60 00 17 */	li r3, 0x17
/* 801D99E0 001D6940  48 00 00 20 */	b lbl_801D9A00
lbl_801D99E4:
/* 801D99E4 001D6944  7F E3 FB 78 */	mr r3, r31
/* 801D99E8 001D6948  38 80 00 18 */	li r4, 0x18
/* 801D99EC 001D694C  4B F5 7A 65 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801D99F0 001D6950  28 03 00 00 */	cmplwi r3, 0
/* 801D99F4 001D6954  38 60 FF FF */	li r3, -1
/* 801D99F8 001D6958  41 82 00 08 */	beq lbl_801D9A00
/* 801D99FC 001D695C  38 60 00 16 */	li r3, 0x16
lbl_801D9A00:
/* 801D9A00 001D6960  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D9A04 001D6964  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D9A08 001D6968  7C 08 03 A6 */	mtlr r0
/* 801D9A0C 001D696C  38 21 00 10 */	addi r1, r1, 0x10
/* 801D9A10 001D6970  4E 80 00 20 */	blr

.global UpdateBody__8CABSIdleFfR15CBodyControllerR13CStateManager
UpdateBody__8CABSIdleFfR15CBodyControllerR13CStateManager:
/* 801D9A14 001D6974  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D9A18 001D6978  7C 08 02 A6 */	mflr r0
/* 801D9A1C 001D697C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D9A20 001D6980  4B FF FF 79 */	bl GetBodyStateTransition__8CABSIdleFfR15CBodyController
/* 801D9A24 001D6984  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D9A28 001D6988  7C 08 03 A6 */	mtlr r0
/* 801D9A2C 001D698C  38 21 00 10 */	addi r1, r1, 0x10
/* 801D9A30 001D6990  4E 80 00 20 */	blr
