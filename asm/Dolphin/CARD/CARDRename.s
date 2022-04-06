.include "macros.inc"

.section .text, "ax"

.global CARDRenameAsync
CARDRenameAsync:
/* 803BE3EC 003BB34C  7C 08 02 A6 */	mflr r0
/* 803BE3F0 003BB350  90 01 00 04 */	stw r0, 4(r1)
/* 803BE3F4 003BB354  94 21 FF B8 */	stwu r1, -0x48(r1)
/* 803BE3F8 003BB358  BE E1 00 24 */	stmw r23, 0x24(r1)
/* 803BE3FC 003BB35C  7C 9D 23 78 */	mr r29, r4
/* 803BE400 003BB360  3B 83 00 00 */	addi r28, r3, 0
/* 803BE404 003BB364  3B C5 00 00 */	addi r30, r5, 0
/* 803BE408 003BB368  3B E6 00 00 */	addi r31, r6, 0
/* 803BE40C 003BB36C  88 84 00 00 */	lbz r4, 0(r4)
/* 803BE410 003BB370  7C 80 07 74 */	extsb r0, r4
/* 803BE414 003BB374  2C 00 00 FF */	cmpwi r0, 0xff
/* 803BE418 003BB378  41 82 00 24 */	beq lbl_803BE43C
/* 803BE41C 003BB37C  88 7E 00 00 */	lbz r3, 0(r30)
/* 803BE420 003BB380  7C 60 07 74 */	extsb r0, r3
/* 803BE424 003BB384  2C 00 00 FF */	cmpwi r0, 0xff
/* 803BE428 003BB388  41 82 00 14 */	beq lbl_803BE43C
/* 803BE42C 003BB38C  7C 80 07 75 */	extsb. r0, r4
/* 803BE430 003BB390  41 82 00 0C */	beq lbl_803BE43C
/* 803BE434 003BB394  7C 60 07 75 */	extsb. r0, r3
/* 803BE438 003BB398  40 82 00 0C */	bne lbl_803BE444
lbl_803BE43C:
/* 803BE43C 003BB39C  38 60 FF 80 */	li r3, -128
/* 803BE440 003BB3A0  48 00 01 94 */	b lbl_803BE5D4
lbl_803BE444:
/* 803BE444 003BB3A4  7F A3 EB 78 */	mr r3, r29
/* 803BE448 003BB3A8  4B FD 1D 79 */	bl strlen
/* 803BE44C 003BB3AC  28 03 00 20 */	cmplwi r3, 0x20
/* 803BE450 003BB3B0  41 81 00 14 */	bgt lbl_803BE464
/* 803BE454 003BB3B4  7F C3 F3 78 */	mr r3, r30
/* 803BE458 003BB3B8  4B FD 1D 69 */	bl strlen
/* 803BE45C 003BB3BC  28 03 00 20 */	cmplwi r3, 0x20
/* 803BE460 003BB3C0  40 81 00 0C */	ble lbl_803BE46C
lbl_803BE464:
/* 803BE464 003BB3C4  38 60 FF F4 */	li r3, -12
/* 803BE468 003BB3C8  48 00 01 6C */	b lbl_803BE5D4
lbl_803BE46C:
/* 803BE46C 003BB3CC  38 7C 00 00 */	addi r3, r28, 0
/* 803BE470 003BB3D0  38 81 00 18 */	addi r4, r1, 0x18
/* 803BE474 003BB3D4  4B FF A9 2D */	bl __CARDGetControlBlock
/* 803BE478 003BB3D8  2C 03 00 00 */	cmpwi r3, 0
/* 803BE47C 003BB3DC  40 80 00 08 */	bge lbl_803BE484
/* 803BE480 003BB3E0  48 00 01 54 */	b lbl_803BE5D4
lbl_803BE484:
/* 803BE484 003BB3E4  80 61 00 18 */	lwz r3, 0x18(r1)
/* 803BE488 003BB3E8  3A E0 FF FF */	li r23, -1
/* 803BE48C 003BB3EC  3B 00 FF FF */	li r24, -1
/* 803BE490 003BB3F0  4B FF C4 E1 */	bl __CARDGetDirBlock
/* 803BE494 003BB3F4  3B 43 00 00 */	addi r26, r3, 0
/* 803BE498 003BB3F8  3B 7A 00 00 */	addi r27, r26, 0
/* 803BE49C 003BB3FC  3B 20 00 00 */	li r25, 0
lbl_803BE4A0:
/* 803BE4A0 003BB400  88 1B 00 00 */	lbz r0, 0(r27)
/* 803BE4A4 003BB404  28 00 00 FF */	cmplwi r0, 0xff
/* 803BE4A8 003BB408  41 82 00 70 */	beq lbl_803BE518
/* 803BE4AC 003BB40C  80 81 00 18 */	lwz r4, 0x18(r1)
/* 803BE4B0 003BB410  38 7B 00 00 */	addi r3, r27, 0
/* 803BE4B4 003BB414  38 A0 00 04 */	li r5, 4
/* 803BE4B8 003BB418  80 84 01 0C */	lwz r4, 0x10c(r4)
/* 803BE4BC 003BB41C  4B FC F3 C1 */	bl memcmp
/* 803BE4C0 003BB420  2C 03 00 00 */	cmpwi r3, 0
/* 803BE4C4 003BB424  40 82 00 54 */	bne lbl_803BE518
/* 803BE4C8 003BB428  80 81 00 18 */	lwz r4, 0x18(r1)
/* 803BE4CC 003BB42C  38 7B 00 04 */	addi r3, r27, 4
/* 803BE4D0 003BB430  38 A0 00 02 */	li r5, 2
/* 803BE4D4 003BB434  80 84 01 0C */	lwz r4, 0x10c(r4)
/* 803BE4D8 003BB438  38 84 00 04 */	addi r4, r4, 4
/* 803BE4DC 003BB43C  4B FC F3 A1 */	bl memcmp
/* 803BE4E0 003BB440  2C 03 00 00 */	cmpwi r3, 0
/* 803BE4E4 003BB444  40 82 00 34 */	bne lbl_803BE518
/* 803BE4E8 003BB448  38 7B 00 00 */	addi r3, r27, 0
/* 803BE4EC 003BB44C  38 9D 00 00 */	addi r4, r29, 0
/* 803BE4F0 003BB450  4B FF E8 7D */	bl __CARDCompareFileName
/* 803BE4F4 003BB454  2C 03 00 00 */	cmpwi r3, 0
/* 803BE4F8 003BB458  41 82 00 08 */	beq lbl_803BE500
/* 803BE4FC 003BB45C  7F 37 CB 78 */	mr r23, r25
lbl_803BE500:
/* 803BE500 003BB460  38 7B 00 00 */	addi r3, r27, 0
/* 803BE504 003BB464  38 9E 00 00 */	addi r4, r30, 0
/* 803BE508 003BB468  4B FF E8 65 */	bl __CARDCompareFileName
/* 803BE50C 003BB46C  2C 03 00 00 */	cmpwi r3, 0
/* 803BE510 003BB470  41 82 00 08 */	beq lbl_803BE518
/* 803BE514 003BB474  7F 38 CB 78 */	mr r24, r25
lbl_803BE518:
/* 803BE518 003BB478  3B 39 00 01 */	addi r25, r25, 1
/* 803BE51C 003BB47C  2C 19 00 7F */	cmpwi r25, 0x7f
/* 803BE520 003BB480  3B 7B 00 40 */	addi r27, r27, 0x40
/* 803BE524 003BB484  41 80 FF 7C */	blt lbl_803BE4A0
/* 803BE528 003BB488  2C 17 FF FF */	cmpwi r23, -1
/* 803BE52C 003BB48C  40 82 00 14 */	bne lbl_803BE540
/* 803BE530 003BB490  80 61 00 18 */	lwz r3, 0x18(r1)
/* 803BE534 003BB494  38 80 FF FC */	li r4, -4
/* 803BE538 003BB498  4B FF A9 21 */	bl __CARDPutControlBlock
/* 803BE53C 003BB49C  48 00 00 98 */	b lbl_803BE5D4
lbl_803BE540:
/* 803BE540 003BB4A0  2C 18 FF FF */	cmpwi r24, -1
/* 803BE544 003BB4A4  41 82 00 14 */	beq lbl_803BE558
/* 803BE548 003BB4A8  80 61 00 18 */	lwz r3, 0x18(r1)
/* 803BE54C 003BB4AC  38 80 FF F9 */	li r4, -7
/* 803BE550 003BB4B0  4B FF A9 09 */	bl __CARDPutControlBlock
/* 803BE554 003BB4B4  48 00 00 80 */	b lbl_803BE5D4
lbl_803BE558:
/* 803BE558 003BB4B8  56 E0 30 32 */	slwi r0, r23, 6
/* 803BE55C 003BB4BC  80 61 00 18 */	lwz r3, 0x18(r1)
/* 803BE560 003BB4C0  7F 7A 02 14 */	add r27, r26, r0
/* 803BE564 003BB4C4  38 9B 00 00 */	addi r4, r27, 0
/* 803BE568 003BB4C8  4B FF E8 6D */	bl __CARDAccess
/* 803BE56C 003BB4CC  7C 64 1B 79 */	or. r4, r3, r3
/* 803BE570 003BB4D0  40 80 00 10 */	bge lbl_803BE580
/* 803BE574 003BB4D4  80 61 00 18 */	lwz r3, 0x18(r1)
/* 803BE578 003BB4D8  4B FF A8 E1 */	bl __CARDPutControlBlock
/* 803BE57C 003BB4DC  48 00 00 58 */	b lbl_803BE5D4
lbl_803BE580:
/* 803BE580 003BB4E0  38 9E 00 00 */	addi r4, r30, 0
/* 803BE584 003BB4E4  38 7B 00 08 */	addi r3, r27, 8
/* 803BE588 003BB4E8  38 A0 00 20 */	li r5, 0x20
/* 803BE58C 003BB4EC  4B FD 1B 39 */	bl strncpy
/* 803BE590 003BB4F0  3C 60 80 00 */	lis r3, 0x800000F8@ha
/* 803BE594 003BB4F4  80 03 00 F8 */	lwz r0, 0x800000F8@l(r3)
/* 803BE598 003BB4F8  54 1D F0 BE */	srwi r29, r0, 2
/* 803BE59C 003BB4FC  4B FC 6E 0D */	bl OSGetTime
/* 803BE5A0 003BB500  38 DD 00 00 */	addi r6, r29, 0
/* 803BE5A4 003BB504  38 A0 00 00 */	li r5, 0
/* 803BE5A8 003BB508  4B FC B6 25 */	bl __div2i
/* 803BE5AC 003BB50C  90 9B 00 28 */	stw r4, 0x28(r27)
/* 803BE5B0 003BB510  38 7C 00 00 */	addi r3, r28, 0
/* 803BE5B4 003BB514  38 9F 00 00 */	addi r4, r31, 0
/* 803BE5B8 003BB518  4B FF C5 59 */	bl __CARDUpdateDir
/* 803BE5BC 003BB51C  7C 7B 1B 79 */	or. r27, r3, r3
/* 803BE5C0 003BB520  40 80 00 10 */	bge lbl_803BE5D0
/* 803BE5C4 003BB524  80 61 00 18 */	lwz r3, 0x18(r1)
/* 803BE5C8 003BB528  7F 64 DB 78 */	mr r4, r27
/* 803BE5CC 003BB52C  4B FF A8 8D */	bl __CARDPutControlBlock
lbl_803BE5D0:
/* 803BE5D0 003BB530  7F 63 DB 78 */	mr r3, r27
lbl_803BE5D4:
/* 803BE5D4 003BB534  BA E1 00 24 */	lmw r23, 0x24(r1)
/* 803BE5D8 003BB538  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 803BE5DC 003BB53C  38 21 00 48 */	addi r1, r1, 0x48
/* 803BE5E0 003BB540  7C 08 03 A6 */	mtlr r0
/* 803BE5E4 003BB544  4E 80 00 20 */	blr 