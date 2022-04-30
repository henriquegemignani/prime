.include "macros.inc"

.section .data

.global lbl_803EF5C8
lbl_803EF5C8:
	# ROM: 0x3EC5C8
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0x0000000F
	.4byte 0x0000001F
	.4byte 0x0000003F
	.4byte 0x0000007F
	.4byte 0x000000FF
	.4byte 0x000001FF
	.4byte 0x000003FF
	.4byte 0x000007FF
	.4byte 0x00000FFF
	.4byte 0x00001FFF
	.4byte 0x00003FFF
	.4byte 0x00007FFF
	.4byte 0x0000FFFF
	.4byte 0

.section .text, "ax"  # 0x80003640 - 0x803CB1C0

.global inflate_flush
inflate_flush:
/* 8034440C 0034136C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80344410 00341370  7C 08 02 A6 */	mflr r0
/* 80344414 00341374  90 01 00 24 */	stw r0, 0x24(r1)
/* 80344418 00341378  BF 41 00 08 */	stmw r26, 8(r1)
/* 8034441C 0034137C  7C 7B 1B 78 */	mr r27, r3
/* 80344420 00341380  7C 9C 23 78 */	mr r28, r4
/* 80344424 00341384  7C BD 2B 78 */	mr r29, r5
/* 80344428 00341388  83 C3 00 30 */	lwz r30, 0x30(r3)
/* 8034442C 0034138C  80 03 00 34 */	lwz r0, 0x34(r3)
/* 80344430 00341390  83 E4 00 0C */	lwz r31, 0xc(r4)
/* 80344434 00341394  7C 1E 00 40 */	cmplw r30, r0
/* 80344438 00341398  41 81 00 08 */	bgt lbl_80344440
/* 8034443C 0034139C  48 00 00 08 */	b lbl_80344444
lbl_80344440:
/* 80344440 003413A0  80 1B 00 2C */	lwz r0, 0x2c(r27)
lbl_80344444:
/* 80344444 003413A4  80 7C 00 10 */	lwz r3, 0x10(r28)
/* 80344448 003413A8  7F 5E 00 50 */	subf r26, r30, r0
/* 8034444C 003413AC  7C 1A 18 40 */	cmplw r26, r3
/* 80344450 003413B0  40 81 00 08 */	ble lbl_80344458
/* 80344454 003413B4  7C 7A 1B 78 */	mr r26, r3
lbl_80344458:
/* 80344458 003413B8  28 1A 00 00 */	cmplwi r26, 0
/* 8034445C 003413BC  41 82 00 10 */	beq lbl_8034446C
/* 80344460 003413C0  2C 1D FF FB */	cmpwi r29, -5
/* 80344464 003413C4  40 82 00 08 */	bne lbl_8034446C
/* 80344468 003413C8  3B A0 00 00 */	li r29, 0
lbl_8034446C:
/* 8034446C 003413CC  80 1C 00 10 */	lwz r0, 0x10(r28)
/* 80344470 003413D0  7C 1A 00 50 */	subf r0, r26, r0
/* 80344474 003413D4  90 1C 00 10 */	stw r0, 0x10(r28)
/* 80344478 003413D8  80 1C 00 14 */	lwz r0, 0x14(r28)
/* 8034447C 003413DC  7C 00 D2 14 */	add r0, r0, r26
/* 80344480 003413E0  90 1C 00 14 */	stw r0, 0x14(r28)
/* 80344484 003413E4  81 9B 00 38 */	lwz r12, 0x38(r27)
/* 80344488 003413E8  28 0C 00 00 */	cmplwi r12, 0
/* 8034448C 003413EC  41 82 00 20 */	beq lbl_803444AC
/* 80344490 003413F0  7F C4 F3 78 */	mr r4, r30
/* 80344494 003413F4  7F 45 D3 78 */	mr r5, r26
/* 80344498 003413F8  80 7B 00 3C */	lwz r3, 0x3c(r27)
/* 8034449C 003413FC  7D 89 03 A6 */	mtctr r12
/* 803444A0 00341400  4E 80 04 21 */	bctrl 
/* 803444A4 00341404  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 803444A8 00341408  90 7C 00 30 */	stw r3, 0x30(r28)
lbl_803444AC:
/* 803444AC 0034140C  7F E3 FB 78 */	mr r3, r31
/* 803444B0 00341410  7F C4 F3 78 */	mr r4, r30
/* 803444B4 00341414  7F 45 D3 78 */	mr r5, r26
/* 803444B8 00341418  4B CB EF D9 */	bl memcpy
/* 803444BC 0034141C  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 803444C0 00341420  7F DE D2 14 */	add r30, r30, r26
/* 803444C4 00341424  7F FF D2 14 */	add r31, r31, r26
/* 803444C8 00341428  7C 1E 18 40 */	cmplw r30, r3
/* 803444CC 0034142C  40 82 00 A0 */	bne lbl_8034456C
/* 803444D0 00341430  80 1B 00 34 */	lwz r0, 0x34(r27)
/* 803444D4 00341434  80 9B 00 28 */	lwz r4, 0x28(r27)
/* 803444D8 00341438  7C 00 18 40 */	cmplw r0, r3
/* 803444DC 0034143C  7C 9E 23 78 */	mr r30, r4
/* 803444E0 00341440  40 82 00 08 */	bne lbl_803444E8
/* 803444E4 00341444  90 9B 00 34 */	stw r4, 0x34(r27)
lbl_803444E8:
/* 803444E8 00341448  80 1B 00 34 */	lwz r0, 0x34(r27)
/* 803444EC 0034144C  80 7C 00 10 */	lwz r3, 0x10(r28)
/* 803444F0 00341450  7F 5E 00 50 */	subf r26, r30, r0
/* 803444F4 00341454  7C 1A 18 40 */	cmplw r26, r3
/* 803444F8 00341458  40 81 00 08 */	ble lbl_80344500
/* 803444FC 0034145C  7C 7A 1B 78 */	mr r26, r3
lbl_80344500:
/* 80344500 00341460  28 1A 00 00 */	cmplwi r26, 0
/* 80344504 00341464  41 82 00 10 */	beq lbl_80344514
/* 80344508 00341468  2C 1D FF FB */	cmpwi r29, -5
/* 8034450C 0034146C  40 82 00 08 */	bne lbl_80344514
/* 80344510 00341470  3B A0 00 00 */	li r29, 0
lbl_80344514:
/* 80344514 00341474  80 1C 00 10 */	lwz r0, 0x10(r28)
/* 80344518 00341478  7C 1A 00 50 */	subf r0, r26, r0
/* 8034451C 0034147C  90 1C 00 10 */	stw r0, 0x10(r28)
/* 80344520 00341480  80 1C 00 14 */	lwz r0, 0x14(r28)
/* 80344524 00341484  7C 00 D2 14 */	add r0, r0, r26
/* 80344528 00341488  90 1C 00 14 */	stw r0, 0x14(r28)
/* 8034452C 0034148C  81 9B 00 38 */	lwz r12, 0x38(r27)
/* 80344530 00341490  28 0C 00 00 */	cmplwi r12, 0
/* 80344534 00341494  41 82 00 20 */	beq lbl_80344554
/* 80344538 00341498  7F C4 F3 78 */	mr r4, r30
/* 8034453C 0034149C  7F 45 D3 78 */	mr r5, r26
/* 80344540 003414A0  80 7B 00 3C */	lwz r3, 0x3c(r27)
/* 80344544 003414A4  7D 89 03 A6 */	mtctr r12
/* 80344548 003414A8  4E 80 04 21 */	bctrl 
/* 8034454C 003414AC  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 80344550 003414B0  90 7C 00 30 */	stw r3, 0x30(r28)
lbl_80344554:
/* 80344554 003414B4  7F E3 FB 78 */	mr r3, r31
/* 80344558 003414B8  7F C4 F3 78 */	mr r4, r30
/* 8034455C 003414BC  7F 45 D3 78 */	mr r5, r26
/* 80344560 003414C0  4B CB EF 31 */	bl memcpy
/* 80344564 003414C4  7F FF D2 14 */	add r31, r31, r26
/* 80344568 003414C8  7F DE D2 14 */	add r30, r30, r26
lbl_8034456C:
/* 8034456C 003414CC  93 FC 00 0C */	stw r31, 0xc(r28)
/* 80344570 003414D0  7F A3 EB 78 */	mr r3, r29
/* 80344574 003414D4  93 DB 00 30 */	stw r30, 0x30(r27)
/* 80344578 003414D8  BB 41 00 08 */	lmw r26, 8(r1)
/* 8034457C 003414DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80344580 003414E0  7C 08 03 A6 */	mtlr r0
/* 80344584 003414E4  38 21 00 20 */	addi r1, r1, 0x20
/* 80344588 003414E8  4E 80 00 20 */	blr 

.global zcfree
zcfree:
/* 8034458C 003414EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80344590 003414F0  7C 08 02 A6 */	mflr r0
/* 80344594 003414F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80344598 003414F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8034459C 003414FC  7C 7F 1B 78 */	mr r31, r3
/* 803445A0 00341500  7C 83 23 78 */	mr r3, r4
/* 803445A4 00341504  48 04 5D B5 */	bl sub_8038a358
/* 803445A8 00341508  28 1F 00 00 */	cmplwi r31, 0
/* 803445AC 0034150C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803445B0 00341510  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803445B4 00341514  7C 08 03 A6 */	mtlr r0
/* 803445B8 00341518  38 21 00 10 */	addi r1, r1, 0x10
/* 803445BC 0034151C  4E 80 00 20 */	blr 

.global zcalloc
zcalloc:
/* 803445C0 00341520  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803445C4 00341524  7C 08 02 A6 */	mflr r0
/* 803445C8 00341528  7C 83 23 78 */	mr r3, r4
/* 803445CC 0034152C  7C A4 2B 78 */	mr r4, r5
/* 803445D0 00341530  90 01 00 14 */	stw r0, 0x14(r1)
/* 803445D4 00341534  48 04 5C C1 */	bl calloc
/* 803445D8 00341538  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803445DC 0034153C  7C 08 03 A6 */	mtlr r0
/* 803445E0 00341540  38 21 00 10 */	addi r1, r1, 0x10
/* 803445E4 00341544  4E 80 00 20 */	blr 