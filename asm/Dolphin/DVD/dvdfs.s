.include "macros.inc"

.section .text, "ax"

.global __DVDFSInit
__DVDFSInit:
/* 803712E4 0036E244  3C 60 80 00 */	lis r3, 0x80000038@ha
/* 803712E8 0036E248  90 6D AB F0 */	stw r3, lbl_805A97B0@sda21(r13)
/* 803712EC 0036E24C  80 03 00 38 */	lwz r0, 0x80000038@l(r3)
/* 803712F0 0036E250  90 0D AB F4 */	stw r0, lbl_805A97B4@sda21(r13)
/* 803712F4 0036E254  80 6D AB F4 */	lwz r3, lbl_805A97B4@sda21(r13)
/* 803712F8 0036E258  28 03 00 00 */	cmplwi r3, 0
/* 803712FC 0036E25C  4D 82 00 20 */	beqlr 
/* 80371300 0036E260  80 03 00 08 */	lwz r0, 8(r3)
/* 80371304 0036E264  90 0D AB FC */	stw r0, lbl_805A97BC@sda21(r13)
/* 80371308 0036E268  80 0D AB FC */	lwz r0, lbl_805A97BC@sda21(r13)
/* 8037130C 0036E26C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80371310 0036E270  7C 03 02 14 */	add r0, r3, r0
/* 80371314 0036E274  90 0D AB F8 */	stw r0, lbl_805A97B8@sda21(r13)
/* 80371318 0036E278  4E 80 00 20 */	blr 

.global DVDConvertPathToEntrynum
DVDConvertPathToEntrynum:
/* 8037131C 0036E27C  7C 08 02 A6 */	mflr r0
/* 80371320 0036E280  90 01 00 04 */	stw r0, 4(r1)
/* 80371324 0036E284  94 21 FF B8 */	stwu r1, -0x48(r1)
/* 80371328 0036E288  BE 81 00 18 */	stmw r20, 0x18(r1)
/* 8037132C 0036E28C  7C 77 1B 78 */	mr r23, r3
/* 80371330 0036E290  3C 60 80 3F */	lis r3, lbl_803EFB90@ha
/* 80371334 0036E294  3B 37 00 00 */	addi r25, r23, 0
/* 80371338 0036E298  3B E3 FB 90 */	addi r31, r3, lbl_803EFB90@l
/* 8037133C 0036E29C  83 4D AC 00 */	lwz r26, lbl_805A97C0@sda21(r13)
lbl_80371340:
/* 80371340 0036E2A0  88 77 00 00 */	lbz r3, 0(r23)
/* 80371344 0036E2A4  7C 60 07 75 */	extsb. r0, r3
/* 80371348 0036E2A8  40 82 00 0C */	bne lbl_80371354
/* 8037134C 0036E2AC  7F 43 D3 78 */	mr r3, r26
/* 80371350 0036E2B0  48 00 02 AC */	b lbl_803715FC
lbl_80371354:
/* 80371354 0036E2B4  7C 60 07 74 */	extsb r0, r3
/* 80371358 0036E2B8  2C 00 00 2F */	cmpwi r0, 0x2f
/* 8037135C 0036E2BC  40 82 00 10 */	bne lbl_8037136C
/* 80371360 0036E2C0  3B 40 00 00 */	li r26, 0
/* 80371364 0036E2C4  3A F7 00 01 */	addi r23, r23, 1
/* 80371368 0036E2C8  4B FF FF D8 */	b lbl_80371340
lbl_8037136C:
/* 8037136C 0036E2CC  2C 00 00 2E */	cmpwi r0, 0x2e
/* 80371370 0036E2D0  40 82 00 74 */	bne lbl_803713E4
/* 80371374 0036E2D4  88 77 00 01 */	lbz r3, 1(r23)
/* 80371378 0036E2D8  7C 60 07 74 */	extsb r0, r3
/* 8037137C 0036E2DC  2C 00 00 2E */	cmpwi r0, 0x2e
/* 80371380 0036E2E0  40 82 00 44 */	bne lbl_803713C4
/* 80371384 0036E2E4  88 77 00 02 */	lbz r3, 2(r23)
/* 80371388 0036E2E8  2C 03 00 2F */	cmpwi r3, 0x2f
/* 8037138C 0036E2EC  40 82 00 1C */	bne lbl_803713A8
/* 80371390 0036E2F0  1C 7A 00 0C */	mulli r3, r26, 0xc
/* 80371394 0036E2F4  80 8D AB F4 */	lwz r4, lbl_805A97B4@sda21(r13)
/* 80371398 0036E2F8  38 03 00 04 */	addi r0, r3, 4
/* 8037139C 0036E2FC  7F 44 00 2E */	lwzx r26, r4, r0
/* 803713A0 0036E300  3A F7 00 03 */	addi r23, r23, 3
/* 803713A4 0036E304  4B FF FF 9C */	b lbl_80371340
lbl_803713A8:
/* 803713A8 0036E308  7C 60 07 75 */	extsb. r0, r3
/* 803713AC 0036E30C  40 82 00 38 */	bne lbl_803713E4
/* 803713B0 0036E310  1C 1A 00 0C */	mulli r0, r26, 0xc
/* 803713B4 0036E314  80 6D AB F4 */	lwz r3, lbl_805A97B4@sda21(r13)
/* 803713B8 0036E318  7C 63 02 14 */	add r3, r3, r0
/* 803713BC 0036E31C  80 63 00 04 */	lwz r3, 4(r3)
/* 803713C0 0036E320  48 00 02 3C */	b lbl_803715FC
lbl_803713C4:
/* 803713C4 0036E324  2C 00 00 2F */	cmpwi r0, 0x2f
/* 803713C8 0036E328  40 82 00 0C */	bne lbl_803713D4
/* 803713CC 0036E32C  3A F7 00 02 */	addi r23, r23, 2
/* 803713D0 0036E330  4B FF FF 70 */	b lbl_80371340
lbl_803713D4:
/* 803713D4 0036E334  7C 60 07 75 */	extsb. r0, r3
/* 803713D8 0036E338  40 82 00 0C */	bne lbl_803713E4
/* 803713DC 0036E33C  7F 43 D3 78 */	mr r3, r26
/* 803713E0 0036E340  48 00 02 1C */	b lbl_803715FC
lbl_803713E4:
/* 803713E4 0036E344  80 0D AC 04 */	lwz r0, lbl_805A97C4@sda21(r13)
/* 803713E8 0036E348  28 00 00 00 */	cmplwi r0, 0
/* 803713EC 0036E34C  40 82 00 AC */	bne lbl_80371498
/* 803713F0 0036E350  3B 97 00 00 */	addi r28, r23, 0
/* 803713F4 0036E354  38 A0 00 00 */	li r5, 0
/* 803713F8 0036E358  38 80 00 00 */	li r4, 0
/* 803713FC 0036E35C  48 00 00 48 */	b lbl_80371444
lbl_80371400:
/* 80371400 0036E360  7C 60 07 74 */	extsb r0, r3
/* 80371404 0036E364  2C 00 00 2E */	cmpwi r0, 0x2e
/* 80371408 0036E368  40 82 00 2C */	bne lbl_80371434
/* 8037140C 0036E36C  7C 17 E0 50 */	subf r0, r23, r28
/* 80371410 0036E370  2C 00 00 08 */	cmpwi r0, 8
/* 80371414 0036E374  41 81 00 0C */	bgt lbl_80371420
/* 80371418 0036E378  2C 05 00 01 */	cmpwi r5, 1
/* 8037141C 0036E37C  40 82 00 0C */	bne lbl_80371428
lbl_80371420:
/* 80371420 0036E380  38 80 00 01 */	li r4, 1
/* 80371424 0036E384  48 00 00 38 */	b lbl_8037145C
lbl_80371428:
/* 80371428 0036E388  3B 1C 00 01 */	addi r24, r28, 1
/* 8037142C 0036E38C  38 A0 00 01 */	li r5, 1
/* 80371430 0036E390  48 00 00 10 */	b lbl_80371440
lbl_80371434:
/* 80371434 0036E394  2C 00 00 20 */	cmpwi r0, 0x20
/* 80371438 0036E398  40 82 00 08 */	bne lbl_80371440
/* 8037143C 0036E39C  38 80 00 01 */	li r4, 1
lbl_80371440:
/* 80371440 0036E3A0  3B 9C 00 01 */	addi r28, r28, 1
lbl_80371444:
/* 80371444 0036E3A4  88 7C 00 00 */	lbz r3, 0(r28)
/* 80371448 0036E3A8  7C 60 07 75 */	extsb. r0, r3
/* 8037144C 0036E3AC  41 82 00 10 */	beq lbl_8037145C
/* 80371450 0036E3B0  7C 60 07 74 */	extsb r0, r3
/* 80371454 0036E3B4  2C 00 00 2F */	cmpwi r0, 0x2f
/* 80371458 0036E3B8  40 82 FF A8 */	bne lbl_80371400
lbl_8037145C:
/* 8037145C 0036E3BC  2C 05 00 01 */	cmpwi r5, 1
/* 80371460 0036E3C0  40 82 00 14 */	bne lbl_80371474
/* 80371464 0036E3C4  7C 18 E0 50 */	subf r0, r24, r28
/* 80371468 0036E3C8  2C 00 00 03 */	cmpwi r0, 3
/* 8037146C 0036E3CC  40 81 00 08 */	ble lbl_80371474
/* 80371470 0036E3D0  38 80 00 01 */	li r4, 1
lbl_80371474:
/* 80371474 0036E3D4  2C 04 00 00 */	cmpwi r4, 0
/* 80371478 0036E3D8  41 82 00 44 */	beq lbl_803714BC
/* 8037147C 0036E3DC  38 BF 00 00 */	addi r5, r31, 0
/* 80371480 0036E3E0  4C C6 31 82 */	crclr 6
/* 80371484 0036E3E4  38 D9 00 00 */	addi r6, r25, 0
/* 80371488 0036E3E8  38 6D 9E D0 */	addi r3, r13, lbl_805A8A90@sda21
/* 8037148C 0036E3EC  38 80 01 7B */	li r4, 0x17b
/* 80371490 0036E3F0  48 00 E5 9D */	bl OSPanic
/* 80371494 0036E3F4  48 00 00 28 */	b lbl_803714BC
lbl_80371498:
/* 80371498 0036E3F8  7E FC BB 78 */	mr r28, r23
/* 8037149C 0036E3FC  48 00 00 08 */	b lbl_803714A4
lbl_803714A0:
/* 803714A0 0036E400  3B 9C 00 01 */	addi r28, r28, 1
lbl_803714A4:
/* 803714A4 0036E404  88 7C 00 00 */	lbz r3, 0(r28)
/* 803714A8 0036E408  7C 60 07 75 */	extsb. r0, r3
/* 803714AC 0036E40C  41 82 00 10 */	beq lbl_803714BC
/* 803714B0 0036E410  7C 60 07 74 */	extsb r0, r3
/* 803714B4 0036E414  2C 00 00 2F */	cmpwi r0, 0x2f
/* 803714B8 0036E418  40 82 FF E8 */	bne lbl_803714A0
lbl_803714BC:
/* 803714BC 0036E41C  88 1C 00 00 */	lbz r0, 0(r28)
/* 803714C0 0036E420  7C 00 07 75 */	extsb. r0, r0
/* 803714C4 0036E424  40 82 00 0C */	bne lbl_803714D0
/* 803714C8 0036E428  3B C0 00 00 */	li r30, 0
/* 803714CC 0036E42C  48 00 00 08 */	b lbl_803714D4
lbl_803714D0:
/* 803714D0 0036E430  3B C0 00 01 */	li r30, 1
lbl_803714D4:
/* 803714D4 0036E434  1F BA 00 0C */	mulli r29, r26, 0xc
/* 803714D8 0036E438  7F 77 E0 50 */	subf r27, r23, r28
/* 803714DC 0036E43C  3B 5A 00 01 */	addi r26, r26, 1
/* 803714E0 0036E440  48 00 00 E4 */	b lbl_803715C4
lbl_803714E4:
/* 803714E4 0036E444  1F 9A 00 0C */	mulli r28, r26, 0xc
/* 803714E8 0036E448  7C 83 E0 2E */	lwzx r4, r3, r28
/* 803714EC 0036E44C  54 80 00 0F */	rlwinm. r0, r4, 0, 0, 7
/* 803714F0 0036E450  40 82 00 0C */	bne lbl_803714FC
/* 803714F4 0036E454  38 00 00 00 */	li r0, 0
/* 803714F8 0036E458  48 00 00 08 */	b lbl_80371500
lbl_803714FC:
/* 803714FC 0036E45C  38 00 00 01 */	li r0, 1
lbl_80371500:
/* 80371500 0036E460  2C 00 00 00 */	cmpwi r0, 0
/* 80371504 0036E464  40 82 00 0C */	bne lbl_80371510
/* 80371508 0036E468  2C 1E 00 01 */	cmpwi r30, 1
/* 8037150C 0036E46C  41 82 00 80 */	beq lbl_8037158C
lbl_80371510:
/* 80371510 0036E470  80 6D AB F8 */	lwz r3, lbl_805A97B8@sda21(r13)
/* 80371514 0036E474  54 80 02 3E */	clrlwi r0, r4, 8
/* 80371518 0036E478  3A B7 00 00 */	addi r21, r23, 0
/* 8037151C 0036E47C  7E 83 02 14 */	add r20, r3, r0
/* 80371520 0036E480  48 00 00 38 */	b lbl_80371558
lbl_80371524:
/* 80371524 0036E484  88 14 00 00 */	lbz r0, 0(r20)
/* 80371528 0036E488  3A 94 00 01 */	addi r20, r20, 1
/* 8037152C 0036E48C  7C 03 07 74 */	extsb r3, r0
/* 80371530 0036E490  48 01 B9 F5 */	bl tolower
/* 80371534 0036E494  88 15 00 00 */	lbz r0, 0(r21)
/* 80371538 0036E498  3A C3 00 00 */	addi r22, r3, 0
/* 8037153C 0036E49C  3A B5 00 01 */	addi r21, r21, 1
/* 80371540 0036E4A0  7C 03 07 74 */	extsb r3, r0
/* 80371544 0036E4A4  48 01 B9 E1 */	bl tolower
/* 80371548 0036E4A8  7C 03 B0 00 */	cmpw r3, r22
/* 8037154C 0036E4AC  41 82 00 0C */	beq lbl_80371558
/* 80371550 0036E4B0  38 00 00 00 */	li r0, 0
/* 80371554 0036E4B4  48 00 00 30 */	b lbl_80371584
lbl_80371558:
/* 80371558 0036E4B8  88 14 00 00 */	lbz r0, 0(r20)
/* 8037155C 0036E4BC  7C 00 07 75 */	extsb. r0, r0
/* 80371560 0036E4C0  40 82 FF C4 */	bne lbl_80371524
/* 80371564 0036E4C4  88 75 00 00 */	lbz r3, 0(r21)
/* 80371568 0036E4C8  2C 03 00 2F */	cmpwi r3, 0x2f
/* 8037156C 0036E4CC  41 82 00 0C */	beq lbl_80371578
/* 80371570 0036E4D0  7C 60 07 75 */	extsb. r0, r3
/* 80371574 0036E4D4  40 82 00 0C */	bne lbl_80371580
lbl_80371578:
/* 80371578 0036E4D8  38 00 00 01 */	li r0, 1
/* 8037157C 0036E4DC  48 00 00 08 */	b lbl_80371584
lbl_80371580:
/* 80371580 0036E4E0  38 00 00 00 */	li r0, 0
lbl_80371584:
/* 80371584 0036E4E4  2C 00 00 01 */	cmpwi r0, 1
/* 80371588 0036E4E8  41 82 00 58 */	beq lbl_803715E0
lbl_8037158C:
/* 8037158C 0036E4EC  80 0D AB F4 */	lwz r0, lbl_805A97B4@sda21(r13)
/* 80371590 0036E4F0  7C 60 E2 14 */	add r3, r0, r28
/* 80371594 0036E4F4  80 03 00 00 */	lwz r0, 0(r3)
/* 80371598 0036E4F8  54 00 00 0F */	rlwinm. r0, r0, 0, 0, 7
/* 8037159C 0036E4FC  40 82 00 0C */	bne lbl_803715A8
/* 803715A0 0036E500  38 00 00 00 */	li r0, 0
/* 803715A4 0036E504  48 00 00 08 */	b lbl_803715AC
lbl_803715A8:
/* 803715A8 0036E508  38 00 00 01 */	li r0, 1
lbl_803715AC:
/* 803715AC 0036E50C  2C 00 00 00 */	cmpwi r0, 0
/* 803715B0 0036E510  41 82 00 0C */	beq lbl_803715BC
/* 803715B4 0036E514  80 03 00 08 */	lwz r0, 8(r3)
/* 803715B8 0036E518  48 00 00 08 */	b lbl_803715C0
lbl_803715BC:
/* 803715BC 0036E51C  38 1A 00 01 */	addi r0, r26, 1
lbl_803715C0:
/* 803715C0 0036E520  7C 1A 03 78 */	mr r26, r0
lbl_803715C4:
/* 803715C4 0036E524  80 6D AB F4 */	lwz r3, lbl_805A97B4@sda21(r13)
/* 803715C8 0036E528  38 03 00 08 */	addi r0, r3, 8
/* 803715CC 0036E52C  7C 1D 00 2E */	lwzx r0, r29, r0
/* 803715D0 0036E530  7C 1A 00 40 */	cmplw r26, r0
/* 803715D4 0036E534  41 80 FF 10 */	blt lbl_803714E4
/* 803715D8 0036E538  38 60 FF FF */	li r3, -1
/* 803715DC 0036E53C  48 00 00 20 */	b lbl_803715FC
lbl_803715E0:
/* 803715E0 0036E540  2C 1E 00 00 */	cmpwi r30, 0
/* 803715E4 0036E544  40 82 00 0C */	bne lbl_803715F0
/* 803715E8 0036E548  7F 43 D3 78 */	mr r3, r26
/* 803715EC 0036E54C  48 00 00 10 */	b lbl_803715FC
lbl_803715F0:
/* 803715F0 0036E550  7E FB BA 14 */	add r23, r27, r23
/* 803715F4 0036E554  3A F7 00 01 */	addi r23, r23, 1
/* 803715F8 0036E558  4B FF FD 48 */	b lbl_80371340
lbl_803715FC:
/* 803715FC 0036E55C  BA 81 00 18 */	lmw r20, 0x18(r1)
/* 80371600 0036E560  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80371604 0036E564  38 21 00 48 */	addi r1, r1, 0x48
/* 80371608 0036E568  7C 08 03 A6 */	mtlr r0
/* 8037160C 0036E56C  4E 80 00 20 */	blr 

.global DVDFastOpen
DVDFastOpen:
/* 80371610 0036E570  2C 03 00 00 */	cmpwi r3, 0
/* 80371614 0036E574  41 80 00 38 */	blt lbl_8037164C
/* 80371618 0036E578  80 0D AB FC */	lwz r0, lbl_805A97BC@sda21(r13)
/* 8037161C 0036E57C  7C 03 00 40 */	cmplw r3, r0
/* 80371620 0036E580  40 80 00 2C */	bge lbl_8037164C
/* 80371624 0036E584  1C C3 00 0C */	mulli r6, r3, 0xc
/* 80371628 0036E588  80 6D AB F4 */	lwz r3, lbl_805A97B4@sda21(r13)
/* 8037162C 0036E58C  7C 03 30 2E */	lwzx r0, r3, r6
/* 80371630 0036E590  54 00 00 0F */	rlwinm. r0, r0, 0, 0, 7
/* 80371634 0036E594  40 82 00 0C */	bne lbl_80371640
/* 80371638 0036E598  38 00 00 00 */	li r0, 0
/* 8037163C 0036E59C  48 00 00 08 */	b lbl_80371644
lbl_80371640:
/* 80371640 0036E5A0  38 00 00 01 */	li r0, 1
lbl_80371644:
/* 80371644 0036E5A4  2C 00 00 00 */	cmpwi r0, 0
/* 80371648 0036E5A8  41 82 00 0C */	beq lbl_80371654
lbl_8037164C:
/* 8037164C 0036E5AC  38 60 00 00 */	li r3, 0
/* 80371650 0036E5B0  4E 80 00 20 */	blr 
lbl_80371654:
/* 80371654 0036E5B4  7C 63 32 14 */	add r3, r3, r6
/* 80371658 0036E5B8  80 A3 00 04 */	lwz r5, 4(r3)
/* 8037165C 0036E5BC  38 00 00 00 */	li r0, 0
/* 80371660 0036E5C0  38 60 00 01 */	li r3, 1
/* 80371664 0036E5C4  90 A4 00 30 */	stw r5, 0x30(r4)
/* 80371668 0036E5C8  80 AD AB F4 */	lwz r5, lbl_805A97B4@sda21(r13)
/* 8037166C 0036E5CC  7C A5 32 14 */	add r5, r5, r6
/* 80371670 0036E5D0  80 A5 00 08 */	lwz r5, 8(r5)
/* 80371674 0036E5D4  90 A4 00 34 */	stw r5, 0x34(r4)
/* 80371678 0036E5D8  90 04 00 38 */	stw r0, 0x38(r4)
/* 8037167C 0036E5DC  90 04 00 0C */	stw r0, 0xc(r4)
/* 80371680 0036E5E0  4E 80 00 20 */	blr 

.global DVDOpen
DVDOpen:
/* 80371684 0036E5E4  7C 08 02 A6 */	mflr r0
/* 80371688 0036E5E8  90 01 00 04 */	stw r0, 4(r1)
/* 8037168C 0036E5EC  94 21 FF 68 */	stwu r1, -0x98(r1)
/* 80371690 0036E5F0  93 E1 00 94 */	stw r31, 0x94(r1)
/* 80371694 0036E5F4  3B E4 00 00 */	addi r31, r4, 0
/* 80371698 0036E5F8  93 C1 00 90 */	stw r30, 0x90(r1)
/* 8037169C 0036E5FC  3B C3 00 00 */	addi r30, r3, 0
/* 803716A0 0036E600  4B FF FC 7D */	bl DVDConvertPathToEntrynum
/* 803716A4 0036E604  2C 03 00 00 */	cmpwi r3, 0
/* 803716A8 0036E608  40 80 00 30 */	bge lbl_803716D8
/* 803716AC 0036E60C  38 61 00 10 */	addi r3, r1, 0x10
/* 803716B0 0036E610  38 80 00 80 */	li r4, 0x80
/* 803716B4 0036E614  48 00 02 1D */	bl DVDGetCurrentDir
/* 803716B8 0036E618  3C 60 80 3F */	lis r3, lbl_803EFC58@ha
/* 803716BC 0036E61C  4C C6 31 82 */	crclr 6
/* 803716C0 0036E620  38 63 FC 58 */	addi r3, r3, lbl_803EFC58@l
/* 803716C4 0036E624  38 9E 00 00 */	addi r4, r30, 0
/* 803716C8 0036E628  38 A1 00 10 */	addi r5, r1, 0x10
/* 803716CC 0036E62C  48 00 E2 E1 */	bl OSReport
/* 803716D0 0036E630  38 60 00 00 */	li r3, 0
/* 803716D4 0036E634  48 00 00 60 */	b lbl_80371734
lbl_803716D8:
/* 803716D8 0036E638  1C A3 00 0C */	mulli r5, r3, 0xc
/* 803716DC 0036E63C  80 6D AB F4 */	lwz r3, lbl_805A97B4@sda21(r13)
/* 803716E0 0036E640  7C 03 28 2E */	lwzx r0, r3, r5
/* 803716E4 0036E644  54 00 00 0F */	rlwinm. r0, r0, 0, 0, 7
/* 803716E8 0036E648  40 82 00 0C */	bne lbl_803716F4
/* 803716EC 0036E64C  38 00 00 00 */	li r0, 0
/* 803716F0 0036E650  48 00 00 08 */	b lbl_803716F8
lbl_803716F4:
/* 803716F4 0036E654  38 00 00 01 */	li r0, 1
lbl_803716F8:
/* 803716F8 0036E658  2C 00 00 00 */	cmpwi r0, 0
/* 803716FC 0036E65C  41 82 00 0C */	beq lbl_80371708
/* 80371700 0036E660  38 60 00 00 */	li r3, 0
/* 80371704 0036E664  48 00 00 30 */	b lbl_80371734
lbl_80371708:
/* 80371708 0036E668  7C 63 2A 14 */	add r3, r3, r5
/* 8037170C 0036E66C  80 83 00 04 */	lwz r4, 4(r3)
/* 80371710 0036E670  38 00 00 00 */	li r0, 0
/* 80371714 0036E674  38 60 00 01 */	li r3, 1
/* 80371718 0036E678  90 9F 00 30 */	stw r4, 0x30(r31)
/* 8037171C 0036E67C  80 8D AB F4 */	lwz r4, lbl_805A97B4@sda21(r13)
/* 80371720 0036E680  7C 84 2A 14 */	add r4, r4, r5
/* 80371724 0036E684  80 84 00 08 */	lwz r4, 8(r4)
/* 80371728 0036E688  90 9F 00 34 */	stw r4, 0x34(r31)
/* 8037172C 0036E68C  90 1F 00 38 */	stw r0, 0x38(r31)
/* 80371730 0036E690  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_80371734:
/* 80371734 0036E694  80 01 00 9C */	lwz r0, 0x9c(r1)
/* 80371738 0036E698  83 E1 00 94 */	lwz r31, 0x94(r1)
/* 8037173C 0036E69C  83 C1 00 90 */	lwz r30, 0x90(r1)
/* 80371740 0036E6A0  38 21 00 98 */	addi r1, r1, 0x98
/* 80371744 0036E6A4  7C 08 03 A6 */	mtlr r0
/* 80371748 0036E6A8  4E 80 00 20 */	blr 

.global DVDClose
DVDClose:
/* 8037174C 0036E6AC  7C 08 02 A6 */	mflr r0
/* 80371750 0036E6B0  90 01 00 04 */	stw r0, 4(r1)
/* 80371754 0036E6B4  94 21 FF F8 */	stwu r1, -8(r1)
/* 80371758 0036E6B8  48 00 2D 25 */	bl DVDCancel
/* 8037175C 0036E6BC  38 60 00 01 */	li r3, 1
/* 80371760 0036E6C0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80371764 0036E6C4  38 21 00 08 */	addi r1, r1, 8
/* 80371768 0036E6C8  7C 08 03 A6 */	mtlr r0
/* 8037176C 0036E6CC  4E 80 00 20 */	blr 

.global entryToPath
entryToPath:
/* 80371770 0036E6D0  7C 08 02 A6 */	mflr r0
/* 80371774 0036E6D4  28 03 00 00 */	cmplwi r3, 0
/* 80371778 0036E6D8  90 01 00 04 */	stw r0, 4(r1)
/* 8037177C 0036E6DC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80371780 0036E6E0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80371784 0036E6E4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80371788 0036E6E8  3B C5 00 00 */	addi r30, r5, 0
/* 8037178C 0036E6EC  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80371790 0036E6F0  3B A4 00 00 */	addi r29, r4, 0
/* 80371794 0036E6F4  93 81 00 20 */	stw r28, 0x20(r1)
/* 80371798 0036E6F8  40 82 00 0C */	bne lbl_803717A4
/* 8037179C 0036E6FC  38 60 00 00 */	li r3, 0
/* 803717A0 0036E700  48 00 01 10 */	b lbl_803718B0
lbl_803717A4:
/* 803717A4 0036E704  80 8D AB F4 */	lwz r4, lbl_805A97B4@sda21(r13)
/* 803717A8 0036E708  1C 63 00 0C */	mulli r3, r3, 0xc
/* 803717AC 0036E70C  80 CD AB F8 */	lwz r6, lbl_805A97B8@sda21(r13)
/* 803717B0 0036E710  38 A4 00 04 */	addi r5, r4, 4
/* 803717B4 0036E714  7C 04 18 2E */	lwzx r0, r4, r3
/* 803717B8 0036E718  7C 65 18 2E */	lwzx r3, r5, r3
/* 803717BC 0036E71C  54 00 02 3E */	clrlwi r0, r0, 8
/* 803717C0 0036E720  28 03 00 00 */	cmplwi r3, 0
/* 803717C4 0036E724  7F E6 02 14 */	add r31, r6, r0
/* 803717C8 0036E728  40 82 00 0C */	bne lbl_803717D4
/* 803717CC 0036E72C  38 60 00 00 */	li r3, 0
/* 803717D0 0036E730  48 00 00 80 */	b lbl_80371850
lbl_803717D4:
/* 803717D4 0036E734  1C 63 00 0C */	mulli r3, r3, 0xc
/* 803717D8 0036E738  7C 04 18 2E */	lwzx r0, r4, r3
/* 803717DC 0036E73C  7F A4 EB 78 */	mr r4, r29
/* 803717E0 0036E740  7C 65 18 2E */	lwzx r3, r5, r3
/* 803717E4 0036E744  38 BE 00 00 */	addi r5, r30, 0
/* 803717E8 0036E748  54 00 02 3E */	clrlwi r0, r0, 8
/* 803717EC 0036E74C  7F 86 02 14 */	add r28, r6, r0
/* 803717F0 0036E750  4B FF FF 81 */	bl entryToPath
/* 803717F4 0036E754  7C 03 F0 40 */	cmplw r3, r30
/* 803717F8 0036E758  40 82 00 08 */	bne lbl_80371800
/* 803717FC 0036E75C  48 00 00 54 */	b lbl_80371850
lbl_80371800:
/* 80371800 0036E760  38 03 00 00 */	addi r0, r3, 0
/* 80371804 0036E764  38 63 00 01 */	addi r3, r3, 1
/* 80371808 0036E768  38 80 00 2F */	li r4, 0x2f
/* 8037180C 0036E76C  7C C3 F0 50 */	subf r6, r3, r30
/* 80371810 0036E770  7C 9D 01 AE */	stbx r4, r29, r0
/* 80371814 0036E774  38 86 00 00 */	addi r4, r6, 0
/* 80371818 0036E778  7C BD 1A 14 */	add r5, r29, r3
/* 8037181C 0036E77C  48 00 00 18 */	b lbl_80371834
lbl_80371820:
/* 80371820 0036E780  88 1C 00 00 */	lbz r0, 0(r28)
/* 80371824 0036E784  3B 9C 00 01 */	addi r28, r28, 1
/* 80371828 0036E788  38 84 FF FF */	addi r4, r4, -1
/* 8037182C 0036E78C  98 05 00 00 */	stb r0, 0(r5)
/* 80371830 0036E790  38 A5 00 01 */	addi r5, r5, 1
lbl_80371834:
/* 80371834 0036E794  28 04 00 00 */	cmplwi r4, 0
/* 80371838 0036E798  41 82 00 10 */	beq lbl_80371848
/* 8037183C 0036E79C  88 1C 00 00 */	lbz r0, 0(r28)
/* 80371840 0036E7A0  7C 00 07 75 */	extsb. r0, r0
/* 80371844 0036E7A4  40 82 FF DC */	bne lbl_80371820
lbl_80371848:
/* 80371848 0036E7A8  7C 04 30 50 */	subf r0, r4, r6
/* 8037184C 0036E7AC  7C 63 02 14 */	add r3, r3, r0
lbl_80371850:
/* 80371850 0036E7B0  7C 03 F0 40 */	cmplw r3, r30
/* 80371854 0036E7B4  40 82 00 08 */	bne lbl_8037185C
/* 80371858 0036E7B8  48 00 00 58 */	b lbl_803718B0
lbl_8037185C:
/* 8037185C 0036E7BC  38 03 00 00 */	addi r0, r3, 0
/* 80371860 0036E7C0  38 63 00 01 */	addi r3, r3, 1
/* 80371864 0036E7C4  38 80 00 2F */	li r4, 0x2f
/* 80371868 0036E7C8  7C E3 F0 50 */	subf r7, r3, r30
/* 8037186C 0036E7CC  7C 9D 01 AE */	stbx r4, r29, r0
/* 80371870 0036E7D0  38 DF 00 00 */	addi r6, r31, 0
/* 80371874 0036E7D4  38 87 00 00 */	addi r4, r7, 0
/* 80371878 0036E7D8  7C BD 1A 14 */	add r5, r29, r3
/* 8037187C 0036E7DC  48 00 00 18 */	b lbl_80371894
lbl_80371880:
/* 80371880 0036E7E0  88 06 00 00 */	lbz r0, 0(r6)
/* 80371884 0036E7E4  38 C6 00 01 */	addi r6, r6, 1
/* 80371888 0036E7E8  38 84 FF FF */	addi r4, r4, -1
/* 8037188C 0036E7EC  98 05 00 00 */	stb r0, 0(r5)
/* 80371890 0036E7F0  38 A5 00 01 */	addi r5, r5, 1
lbl_80371894:
/* 80371894 0036E7F4  28 04 00 00 */	cmplwi r4, 0
/* 80371898 0036E7F8  41 82 00 10 */	beq lbl_803718A8
/* 8037189C 0036E7FC  88 06 00 00 */	lbz r0, 0(r6)
/* 803718A0 0036E800  7C 00 07 75 */	extsb. r0, r0
/* 803718A4 0036E804  40 82 FF DC */	bne lbl_80371880
lbl_803718A8:
/* 803718A8 0036E808  7C 04 38 50 */	subf r0, r4, r7
/* 803718AC 0036E80C  7C 63 02 14 */	add r3, r3, r0
lbl_803718B0:
/* 803718B0 0036E810  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803718B4 0036E814  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 803718B8 0036E818  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 803718BC 0036E81C  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 803718C0 0036E820  83 81 00 20 */	lwz r28, 0x20(r1)
/* 803718C4 0036E824  38 21 00 30 */	addi r1, r1, 0x30
/* 803718C8 0036E828  7C 08 03 A6 */	mtlr r0
/* 803718CC 0036E82C  4E 80 00 20 */	blr 

.global DVDGetCurrentDir
DVDGetCurrentDir:
/* 803718D0 0036E830  7C 08 02 A6 */	mflr r0
/* 803718D4 0036E834  90 01 00 04 */	stw r0, 4(r1)
/* 803718D8 0036E838  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803718DC 0036E83C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803718E0 0036E840  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803718E4 0036E844  3B C4 00 00 */	addi r30, r4, 0
/* 803718E8 0036E848  38 BE 00 00 */	addi r5, r30, 0
/* 803718EC 0036E84C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803718F0 0036E850  3B A3 00 00 */	addi r29, r3, 0
/* 803718F4 0036E854  38 9D 00 00 */	addi r4, r29, 0
/* 803718F8 0036E858  83 ED AC 00 */	lwz r31, lbl_805A97C0@sda21(r13)
/* 803718FC 0036E85C  38 7F 00 00 */	addi r3, r31, 0
/* 80371900 0036E860  4B FF FE 71 */	bl entryToPath
/* 80371904 0036E864  7C 03 F0 40 */	cmplw r3, r30
/* 80371908 0036E868  40 82 00 14 */	bne lbl_8037191C
/* 8037190C 0036E86C  38 00 00 00 */	li r0, 0
/* 80371910 0036E870  7C 7D F2 14 */	add r3, r29, r30
/* 80371914 0036E874  98 03 FF FF */	stb r0, -1(r3)
/* 80371918 0036E878  48 00 00 5C */	b lbl_80371974
lbl_8037191C:
/* 8037191C 0036E87C  1C 1F 00 0C */	mulli r0, r31, 0xc
/* 80371920 0036E880  80 8D AB F4 */	lwz r4, lbl_805A97B4@sda21(r13)
/* 80371924 0036E884  7C 04 00 2E */	lwzx r0, r4, r0
/* 80371928 0036E888  54 00 00 0F */	rlwinm. r0, r0, 0, 0, 7
/* 8037192C 0036E88C  40 82 00 0C */	bne lbl_80371938
/* 80371930 0036E890  38 00 00 00 */	li r0, 0
/* 80371934 0036E894  48 00 00 08 */	b lbl_8037193C
lbl_80371938:
/* 80371938 0036E898  38 00 00 01 */	li r0, 1
lbl_8037193C:
/* 8037193C 0036E89C  2C 00 00 00 */	cmpwi r0, 0
/* 80371940 0036E8A0  41 82 00 28 */	beq lbl_80371968
/* 80371944 0036E8A4  38 1E FF FF */	addi r0, r30, -1
/* 80371948 0036E8A8  7C 03 00 40 */	cmplw r3, r0
/* 8037194C 0036E8AC  40 82 00 10 */	bne lbl_8037195C
/* 80371950 0036E8B0  38 00 00 00 */	li r0, 0
/* 80371954 0036E8B4  7C 1D 19 AE */	stbx r0, r29, r3
/* 80371958 0036E8B8  48 00 00 1C */	b lbl_80371974
lbl_8037195C:
/* 8037195C 0036E8BC  38 00 00 2F */	li r0, 0x2f
/* 80371960 0036E8C0  7C 1D 19 AE */	stbx r0, r29, r3
/* 80371964 0036E8C4  38 63 00 01 */	addi r3, r3, 1
lbl_80371968:
/* 80371968 0036E8C8  38 00 00 00 */	li r0, 0
/* 8037196C 0036E8CC  7C 1D 19 AE */	stbx r0, r29, r3
/* 80371970 0036E8D0  38 00 00 01 */	li r0, 1
lbl_80371974:
/* 80371974 0036E8D4  7C 03 03 78 */	mr r3, r0
/* 80371978 0036E8D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8037197C 0036E8DC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80371980 0036E8E0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80371984 0036E8E4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80371988 0036E8E8  38 21 00 20 */	addi r1, r1, 0x20
/* 8037198C 0036E8EC  7C 08 03 A6 */	mtlr r0
/* 80371990 0036E8F0  4E 80 00 20 */	blr 

.global DVDReadAsyncPrio
DVDReadAsyncPrio:
/* 80371994 0036E8F4  7C 08 02 A6 */	mflr r0
/* 80371998 0036E8F8  90 01 00 04 */	stw r0, 4(r1)
/* 8037199C 0036E8FC  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 803719A0 0036E900  BF 41 00 20 */	stmw r26, 0x20(r1)
/* 803719A4 0036E904  7C DD 33 79 */	or. r29, r6, r6
/* 803719A8 0036E908  3B 43 00 00 */	addi r26, r3, 0
/* 803719AC 0036E90C  3B 64 00 00 */	addi r27, r4, 0
/* 803719B0 0036E910  3B 85 00 00 */	addi r28, r5, 0
/* 803719B4 0036E914  3B C7 00 00 */	addi r30, r7, 0
/* 803719B8 0036E918  3B E8 00 00 */	addi r31, r8, 0
/* 803719BC 0036E91C  41 80 00 10 */	blt lbl_803719CC
/* 803719C0 0036E920  80 1A 00 34 */	lwz r0, 0x34(r26)
/* 803719C4 0036E924  7C 1D 00 40 */	cmplw r29, r0
/* 803719C8 0036E928  41 80 00 1C */	blt lbl_803719E4
lbl_803719CC:
/* 803719CC 0036E92C  3C 60 80 3F */	lis r3, lbl_803EFC90@ha
/* 803719D0 0036E930  4C C6 31 82 */	crclr 6
/* 803719D4 0036E934  38 A3 FC 90 */	addi r5, r3, lbl_803EFC90@l
/* 803719D8 0036E938  38 6D 9E D0 */	addi r3, r13, lbl_805A8A90@sda21
/* 803719DC 0036E93C  38 80 02 E6 */	li r4, 0x2e6
/* 803719E0 0036E940  48 00 E0 4D */	bl OSPanic
lbl_803719E4:
/* 803719E4 0036E944  7C 9D E2 15 */	add. r4, r29, r28
/* 803719E8 0036E948  41 80 00 14 */	blt lbl_803719FC
/* 803719EC 0036E94C  80 7A 00 34 */	lwz r3, 0x34(r26)
/* 803719F0 0036E950  38 03 00 20 */	addi r0, r3, 0x20
/* 803719F4 0036E954  7C 04 00 40 */	cmplw r4, r0
/* 803719F8 0036E958  41 80 00 1C */	blt lbl_80371A14
lbl_803719FC:
/* 803719FC 0036E95C  3C 60 80 3F */	lis r3, lbl_803EFC90@ha
/* 80371A00 0036E960  4C C6 31 82 */	crclr 6
/* 80371A04 0036E964  38 A3 FC 90 */	addi r5, r3, lbl_803EFC90@l
/* 80371A08 0036E968  38 6D 9E D0 */	addi r3, r13, lbl_805A8A90@sda21
/* 80371A0C 0036E96C  38 80 02 EC */	li r4, 0x2ec
/* 80371A10 0036E970  48 00 E0 1D */	bl OSPanic
lbl_80371A14:
/* 80371A14 0036E974  93 DA 00 38 */	stw r30, 0x38(r26)
/* 80371A18 0036E978  3C 60 80 37 */	lis r3, cbForReadAsync@ha
/* 80371A1C 0036E97C  38 E3 1A 54 */	addi r7, r3, cbForReadAsync@l
/* 80371A20 0036E980  80 1A 00 30 */	lwz r0, 0x30(r26)
/* 80371A24 0036E984  38 7A 00 00 */	addi r3, r26, 0
/* 80371A28 0036E988  38 9B 00 00 */	addi r4, r27, 0
/* 80371A2C 0036E98C  38 BC 00 00 */	addi r5, r28, 0
/* 80371A30 0036E990  39 1F 00 00 */	addi r8, r31, 0
/* 80371A34 0036E994  7C C0 EA 14 */	add r6, r0, r29
/* 80371A38 0036E998  48 00 1E BD */	bl DVDReadAbsAsyncPrio
/* 80371A3C 0036E99C  BB 41 00 20 */	lmw r26, 0x20(r1)
/* 80371A40 0036E9A0  38 60 00 01 */	li r3, 1
/* 80371A44 0036E9A4  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80371A48 0036E9A8  38 21 00 38 */	addi r1, r1, 0x38
/* 80371A4C 0036E9AC  7C 08 03 A6 */	mtlr r0
/* 80371A50 0036E9B0  4E 80 00 20 */	blr 

.global cbForReadAsync
cbForReadAsync:
/* 80371A54 0036E9B4  7C 08 02 A6 */	mflr r0
/* 80371A58 0036E9B8  90 01 00 04 */	stw r0, 4(r1)
/* 80371A5C 0036E9BC  94 21 FF F8 */	stwu r1, -8(r1)
/* 80371A60 0036E9C0  81 84 00 38 */	lwz r12, 0x38(r4)
/* 80371A64 0036E9C4  28 0C 00 00 */	cmplwi r12, 0
/* 80371A68 0036E9C8  41 82 00 0C */	beq lbl_80371A74
/* 80371A6C 0036E9CC  7D 88 03 A6 */	mtlr r12
/* 80371A70 0036E9D0  4E 80 00 21 */	blrl 
lbl_80371A74:
/* 80371A74 0036E9D4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80371A78 0036E9D8  38 21 00 08 */	addi r1, r1, 8
/* 80371A7C 0036E9DC  7C 08 03 A6 */	mtlr r0
/* 80371A80 0036E9E0  4E 80 00 20 */	blr 

.global DVDPrepareStreamAsync
DVDPrepareStreamAsync:
/* 80371A84 0036E9E4  7C 08 02 A6 */	mflr r0
/* 80371A88 0036E9E8  90 01 00 04 */	stw r0, 4(r1)
/* 80371A8C 0036E9EC  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 80371A90 0036E9F0  BF 61 00 24 */	stmw r27, 0x24(r1)
/* 80371A94 0036E9F4  3B A5 00 00 */	addi r29, r5, 0
/* 80371A98 0036E9F8  7C 7B 1B 78 */	mr r27, r3
/* 80371A9C 0036E9FC  3B 84 00 00 */	addi r28, r4, 0
/* 80371AA0 0036EA00  3B C6 00 00 */	addi r30, r6, 0
/* 80371AA4 0036EA04  80 E3 00 30 */	lwz r7, 0x30(r3)
/* 80371AA8 0036EA08  3C 60 80 3F */	lis r3, lbl_803EFB90@ha
/* 80371AAC 0036EA0C  3B E3 FB 90 */	addi r31, r3, lbl_803EFB90@l
/* 80371AB0 0036EA10  7C 07 EA 14 */	add r0, r7, r29
/* 80371AB4 0036EA14  54 00 04 7F */	clrlwi. r0, r0, 0x11
/* 80371AB8 0036EA18  41 82 00 20 */	beq lbl_80371AD8
/* 80371ABC 0036EA1C  38 C7 00 00 */	addi r6, r7, 0
/* 80371AC0 0036EA20  4C C6 31 82 */	crclr 6
/* 80371AC4 0036EA24  38 FD 00 00 */	addi r7, r29, 0
/* 80371AC8 0036EA28  38 BF 01 C8 */	addi r5, r31, 0x1c8
/* 80371ACC 0036EA2C  38 6D 9E D0 */	addi r3, r13, lbl_805A8A90@sda21
/* 80371AD0 0036EA30  38 80 04 A5 */	li r4, 0x4a5
/* 80371AD4 0036EA34  48 00 DF 59 */	bl OSPanic
lbl_80371AD8:
/* 80371AD8 0036EA38  28 1C 00 00 */	cmplwi r28, 0
/* 80371ADC 0036EA3C  40 82 00 0C */	bne lbl_80371AE8
/* 80371AE0 0036EA40  80 1B 00 34 */	lwz r0, 0x34(r27)
/* 80371AE4 0036EA44  7F 9D 00 50 */	subf r28, r29, r0
lbl_80371AE8:
/* 80371AE8 0036EA48  57 80 04 7F */	clrlwi. r0, r28, 0x11
/* 80371AEC 0036EA4C  41 82 00 1C */	beq lbl_80371B08
/* 80371AF0 0036EA50  38 DC 00 00 */	addi r6, r28, 0
/* 80371AF4 0036EA54  4C C6 31 82 */	crclr 6
/* 80371AF8 0036EA58  38 BF 02 30 */	addi r5, r31, 0x230
/* 80371AFC 0036EA5C  38 6D 9E D0 */	addi r3, r13, lbl_805A8A90@sda21
/* 80371B00 0036EA60  38 80 04 AF */	li r4, 0x4af
/* 80371B04 0036EA64  48 00 DF 29 */	bl OSPanic
lbl_80371B08:
/* 80371B08 0036EA68  80 7B 00 34 */	lwz r3, 0x34(r27)
/* 80371B0C 0036EA6C  7C 1D 18 40 */	cmplw r29, r3
/* 80371B10 0036EA70  40 80 00 10 */	bge lbl_80371B20
/* 80371B14 0036EA74  7C 1D E2 14 */	add r0, r29, r28
/* 80371B18 0036EA78  7C 00 18 40 */	cmplw r0, r3
/* 80371B1C 0036EA7C  40 81 00 20 */	ble lbl_80371B3C
lbl_80371B20:
/* 80371B20 0036EA80  38 DD 00 00 */	addi r6, r29, 0
/* 80371B24 0036EA84  4C C6 31 82 */	crclr 6
/* 80371B28 0036EA88  38 FC 00 00 */	addi r7, r28, 0
/* 80371B2C 0036EA8C  38 BF 02 88 */	addi r5, r31, 0x288
/* 80371B30 0036EA90  38 6D 9E D0 */	addi r3, r13, lbl_805A8A90@sda21
/* 80371B34 0036EA94  38 80 04 B7 */	li r4, 0x4b7
/* 80371B38 0036EA98  48 00 DE F5 */	bl OSPanic
lbl_80371B3C:
/* 80371B3C 0036EA9C  93 DB 00 38 */	stw r30, 0x38(r27)
/* 80371B40 0036EAA0  3C 60 80 37 */	lis r3, cbForPrepareStreamAsync@ha
/* 80371B44 0036EAA4  38 C3 1B 70 */	addi r6, r3, cbForPrepareStreamAsync@l
/* 80371B48 0036EAA8  80 1B 00 30 */	lwz r0, 0x30(r27)
/* 80371B4C 0036EAAC  38 7B 00 00 */	addi r3, r27, 0
/* 80371B50 0036EAB0  38 9C 00 00 */	addi r4, r28, 0
/* 80371B54 0036EAB4  7C A0 EA 14 */	add r5, r0, r29
/* 80371B58 0036EAB8  48 00 20 1D */	bl sub_80373b74
/* 80371B5C 0036EABC  BB 61 00 24 */	lmw r27, 0x24(r1)
/* 80371B60 0036EAC0  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80371B64 0036EAC4  38 21 00 38 */	addi r1, r1, 0x38
/* 80371B68 0036EAC8  7C 08 03 A6 */	mtlr r0
/* 80371B6C 0036EACC  4E 80 00 20 */	blr 

.global cbForPrepareStreamAsync
cbForPrepareStreamAsync:
/* 80371B70 0036EAD0  7C 08 02 A6 */	mflr r0
/* 80371B74 0036EAD4  90 01 00 04 */	stw r0, 4(r1)
/* 80371B78 0036EAD8  94 21 FF F8 */	stwu r1, -8(r1)
/* 80371B7C 0036EADC  81 84 00 38 */	lwz r12, 0x38(r4)
/* 80371B80 0036EAE0  28 0C 00 00 */	cmplwi r12, 0
/* 80371B84 0036EAE4  41 82 00 0C */	beq lbl_80371B90
/* 80371B88 0036EAE8  7D 88 03 A6 */	mtlr r12
/* 80371B8C 0036EAEC  4E 80 00 21 */	blrl 
lbl_80371B90:
/* 80371B90 0036EAF0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80371B94 0036EAF4  38 21 00 08 */	addi r1, r1, 8
/* 80371B98 0036EAF8  7C 08 03 A6 */	mtlr r0
/* 80371B9C 0036EAFC  4E 80 00 20 */	blr 

.global nullsub_62
nullsub_62:
/* 80371BA0 0036EB00  4E 80 00 20 */	blr 
