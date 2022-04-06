.include "macros.inc"

.section .text, "ax"  # 0x80003640 - 0x803CB1C0

.global ClampStick
ClampStick:
/* 803858B8 00382818  88 03 00 00 */	lbz r0, 0(r3)
/* 803858BC 0038281C  89 84 00 00 */	lbz r12, 0(r4)
/* 803858C0 00382820  7C 00 07 75 */	extsb. r0, r0
/* 803858C4 00382824  7D 8C 07 74 */	extsb r12, r12
/* 803858C8 00382828  7C 0B 03 78 */	mr r11, r0
/* 803858CC 0038282C  41 80 00 0C */	blt lbl_803858D8
/* 803858D0 00382830  38 00 00 01 */	li r0, 1
/* 803858D4 00382834  48 00 00 0C */	b lbl_803858E0
lbl_803858D8:
/* 803858D8 00382838  38 00 FF FF */	li r0, -1
/* 803858DC 0038283C  7D 6B 00 D0 */	neg r11, r11
lbl_803858E0:
/* 803858E0 00382840  2C 0C 00 00 */	cmpwi r12, 0
/* 803858E4 00382844  41 80 00 0C */	blt lbl_803858F0
/* 803858E8 00382848  39 00 00 01 */	li r8, 1
/* 803858EC 0038284C  48 00 00 0C */	b lbl_803858F8
lbl_803858F0:
/* 803858F0 00382850  39 00 FF FF */	li r8, -1
/* 803858F4 00382854  7D 8C 00 D0 */	neg r12, r12
lbl_803858F8:
/* 803858F8 00382858  7C E7 07 74 */	extsb r7, r7
/* 803858FC 0038285C  7C 0B 38 00 */	cmpw r11, r7
/* 80385900 00382860  41 81 00 0C */	bgt lbl_8038590C
/* 80385904 00382864  39 60 00 00 */	li r11, 0
/* 80385908 00382868  48 00 00 08 */	b lbl_80385910
lbl_8038590C:
/* 8038590C 0038286C  7D 67 58 50 */	subf r11, r7, r11
lbl_80385910:
/* 80385910 00382870  7C 0C 38 00 */	cmpw r12, r7
/* 80385914 00382874  41 81 00 0C */	bgt lbl_80385920
/* 80385918 00382878  39 80 00 00 */	li r12, 0
/* 8038591C 0038287C  48 00 00 08 */	b lbl_80385924
lbl_80385920:
/* 80385920 00382880  7D 87 60 50 */	subf r12, r7, r12
lbl_80385924:
/* 80385924 00382884  2C 0B 00 00 */	cmpwi r11, 0
/* 80385928 00382888  40 82 00 1C */	bne lbl_80385944
/* 8038592C 0038288C  2C 0C 00 00 */	cmpwi r12, 0
/* 80385930 00382890  40 82 00 14 */	bne lbl_80385944
/* 80385934 00382894  38 00 00 00 */	li r0, 0
/* 80385938 00382898  98 04 00 00 */	stb r0, 0(r4)
/* 8038593C 0038289C  98 03 00 00 */	stb r0, 0(r3)
/* 80385940 003828A0  4E 80 00 20 */	blr 
lbl_80385944:
/* 80385944 003828A4  7C C6 07 74 */	extsb r6, r6
/* 80385948 003828A8  7D 26 61 D6 */	mullw r9, r6, r12
/* 8038594C 003828AC  7C E6 59 D6 */	mullw r7, r6, r11
/* 80385950 003828B0  7C 09 38 00 */	cmpw r9, r7
/* 80385954 003828B4  41 81 00 44 */	bgt lbl_80385998
/* 80385958 003828B8  7C A9 07 74 */	extsb r9, r5
/* 8038595C 003828BC  7C A6 48 50 */	subf r5, r6, r9
/* 80385960 003828C0  7C AC 29 D6 */	mullw r5, r12, r5
/* 80385964 003828C4  7D 26 49 D6 */	mullw r9, r6, r9
/* 80385968 003828C8  7C E7 2A 14 */	add r7, r7, r5
/* 8038596C 003828CC  7C 09 38 00 */	cmpw r9, r7
/* 80385970 003828D0  40 80 00 64 */	bge lbl_803859D4
/* 80385974 003828D4  7C CB 49 D6 */	mullw r6, r11, r9
/* 80385978 003828D8  7C AC 49 D6 */	mullw r5, r12, r9
/* 8038597C 003828DC  7C C6 3B D6 */	divw r6, r6, r7
/* 80385980 003828E0  7C A5 3B D6 */	divw r5, r5, r7
/* 80385984 003828E4  7C C6 07 74 */	extsb r6, r6
/* 80385988 003828E8  7C A5 07 74 */	extsb r5, r5
/* 8038598C 003828EC  39 66 00 00 */	addi r11, r6, 0
/* 80385990 003828F0  39 85 00 00 */	addi r12, r5, 0
/* 80385994 003828F4  48 00 00 40 */	b lbl_803859D4
lbl_80385998:
/* 80385998 003828F8  7C A7 07 74 */	extsb r7, r5
/* 8038599C 003828FC  7C A6 38 50 */	subf r5, r6, r7
/* 803859A0 00382900  7C AB 29 D6 */	mullw r5, r11, r5
/* 803859A4 00382904  7D 46 39 D6 */	mullw r10, r6, r7
/* 803859A8 00382908  7C E9 2A 14 */	add r7, r9, r5
/* 803859AC 0038290C  7C 0A 38 00 */	cmpw r10, r7
/* 803859B0 00382910  40 80 00 24 */	bge lbl_803859D4
/* 803859B4 00382914  7C CB 51 D6 */	mullw r6, r11, r10
/* 803859B8 00382918  7C AC 51 D6 */	mullw r5, r12, r10
/* 803859BC 0038291C  7C C6 3B D6 */	divw r6, r6, r7
/* 803859C0 00382920  7C A5 3B D6 */	divw r5, r5, r7
/* 803859C4 00382924  7C C6 07 74 */	extsb r6, r6
/* 803859C8 00382928  7C A5 07 74 */	extsb r5, r5
/* 803859CC 0038292C  39 66 00 00 */	addi r11, r6, 0
/* 803859D0 00382930  39 85 00 00 */	addi r12, r5, 0
lbl_803859D4:
/* 803859D4 00382934  7C A0 59 D6 */	mullw r5, r0, r11
/* 803859D8 00382938  7C 08 61 D6 */	mullw r0, r8, r12
/* 803859DC 0038293C  98 A3 00 00 */	stb r5, 0(r3)
/* 803859E0 00382940  98 04 00 00 */	stb r0, 0(r4)
/* 803859E4 00382944  4E 80 00 20 */	blr 

.global PADClamp
PADClamp:
/* 803859E8 00382948  7C 08 02 A6 */	mflr r0
/* 803859EC 0038294C  3C 80 80 3E */	lis r4, lbl_803D8588@ha
/* 803859F0 00382950  90 01 00 04 */	stw r0, 4(r1)
/* 803859F4 00382954  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803859F8 00382958  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803859FC 0038295C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80385A00 00382960  3B C0 00 00 */	li r30, 0
/* 80385A04 00382964  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80385A08 00382968  3B A3 00 00 */	addi r29, r3, 0
/* 80385A0C 0038296C  93 81 00 10 */	stw r28, 0x10(r1)
/* 80385A10 00382970  3B 84 85 88 */	addi r28, r4, lbl_803D8588@l
/* 80385A14 00382974  3B FC 00 01 */	addi r31, r28, 1
lbl_80385A18:
/* 80385A18 00382978  88 1D 00 0A */	lbz r0, 0xa(r29)
/* 80385A1C 0038297C  7C 00 07 75 */	extsb. r0, r0
/* 80385A20 00382980  40 82 00 AC */	bne lbl_80385ACC
/* 80385A24 00382984  88 BC 00 03 */	lbz r5, 3(r28)
/* 80385A28 00382988  38 7D 00 02 */	addi r3, r29, 2
/* 80385A2C 0038298C  88 DC 00 04 */	lbz r6, 4(r28)
/* 80385A30 00382990  38 9D 00 03 */	addi r4, r29, 3
/* 80385A34 00382994  88 FC 00 02 */	lbz r7, 2(r28)
/* 80385A38 00382998  4B FF FE 81 */	bl ClampStick
/* 80385A3C 0038299C  88 BC 00 06 */	lbz r5, 6(r28)
/* 80385A40 003829A0  38 7D 00 04 */	addi r3, r29, 4
/* 80385A44 003829A4  88 DC 00 07 */	lbz r6, 7(r28)
/* 80385A48 003829A8  38 9D 00 05 */	addi r4, r29, 5
/* 80385A4C 003829AC  88 FC 00 05 */	lbz r7, 5(r28)
/* 80385A50 003829B0  4B FF FE 69 */	bl ClampStick
/* 80385A54 003829B4  88 9D 00 06 */	lbz r4, 6(r29)
/* 80385A58 003829B8  88 1C 00 00 */	lbz r0, 0(r28)
/* 80385A5C 003829BC  88 7F 00 00 */	lbz r3, 0(r31)
/* 80385A60 003829C0  7C 04 00 40 */	cmplw r4, r0
/* 80385A64 003829C4  41 81 00 10 */	bgt lbl_80385A74
/* 80385A68 003829C8  38 00 00 00 */	li r0, 0
/* 80385A6C 003829CC  98 1D 00 06 */	stb r0, 6(r29)
/* 80385A70 003829D0  48 00 00 20 */	b lbl_80385A90
lbl_80385A74:
/* 80385A74 003829D4  7C 03 20 40 */	cmplw r3, r4
/* 80385A78 003829D8  40 80 00 08 */	bge lbl_80385A80
/* 80385A7C 003829DC  98 7D 00 06 */	stb r3, 6(r29)
lbl_80385A80:
/* 80385A80 003829E0  88 7C 00 00 */	lbz r3, 0(r28)
/* 80385A84 003829E4  88 1D 00 06 */	lbz r0, 6(r29)
/* 80385A88 003829E8  7C 03 00 50 */	subf r0, r3, r0
/* 80385A8C 003829EC  98 1D 00 06 */	stb r0, 6(r29)
lbl_80385A90:
/* 80385A90 003829F0  88 9D 00 07 */	lbz r4, 7(r29)
/* 80385A94 003829F4  88 1C 00 00 */	lbz r0, 0(r28)
/* 80385A98 003829F8  88 7F 00 00 */	lbz r3, 0(r31)
/* 80385A9C 003829FC  7C 04 00 40 */	cmplw r4, r0
/* 80385AA0 00382A00  41 81 00 10 */	bgt lbl_80385AB0
/* 80385AA4 00382A04  38 00 00 00 */	li r0, 0
/* 80385AA8 00382A08  98 1D 00 07 */	stb r0, 7(r29)
/* 80385AAC 00382A0C  48 00 00 20 */	b lbl_80385ACC
lbl_80385AB0:
/* 80385AB0 00382A10  7C 03 20 40 */	cmplw r3, r4
/* 80385AB4 00382A14  40 80 00 08 */	bge lbl_80385ABC
/* 80385AB8 00382A18  98 7D 00 07 */	stb r3, 7(r29)
lbl_80385ABC:
/* 80385ABC 00382A1C  88 7C 00 00 */	lbz r3, 0(r28)
/* 80385AC0 00382A20  88 1D 00 07 */	lbz r0, 7(r29)
/* 80385AC4 00382A24  7C 03 00 50 */	subf r0, r3, r0
/* 80385AC8 00382A28  98 1D 00 07 */	stb r0, 7(r29)
lbl_80385ACC:
/* 80385ACC 00382A2C  3B DE 00 01 */	addi r30, r30, 1
/* 80385AD0 00382A30  2C 1E 00 04 */	cmpwi r30, 4
/* 80385AD4 00382A34  3B BD 00 0C */	addi r29, r29, 0xc
/* 80385AD8 00382A38  41 80 FF 40 */	blt lbl_80385A18
/* 80385ADC 00382A3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80385AE0 00382A40  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80385AE4 00382A44  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80385AE8 00382A48  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80385AEC 00382A4C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80385AF0 00382A50  38 21 00 20 */	addi r1, r1, 0x20
/* 80385AF4 00382A54  7C 08 03 A6 */	mtlr r0
/* 80385AF8 00382A58  4E 80 00 20 */	blr 