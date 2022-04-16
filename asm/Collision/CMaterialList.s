.include "macros.inc"

.section .text, "ax"  # 0x80003640 - 0x803CB1C0

.global BitPosition__13CMaterialListFUx
BitPosition__13CMaterialListFUx:
/* 802CFC08 002CCB68  38 00 00 08 */	li r0, 8
/* 802CFC0C 002CCB6C  39 20 00 00 */	li r9, 0
/* 802CFC10 002CCB70  39 40 00 00 */	li r10, 0
/* 802CFC14 002CCB74  39 00 00 01 */	li r8, 1
/* 802CFC18 002CCB78  38 E0 00 00 */	li r7, 0
/* 802CFC1C 002CCB7C  7C 09 03 A6 */	mtctr r0
lbl_802CFC20:
/* 802CFC20 002CCB80  7C 86 40 38 */	and r6, r4, r8
/* 802CFC24 002CCB84  7C 65 38 38 */	and r5, r3, r7
/* 802CFC28 002CCB88  7C C6 3A 78 */	xor r6, r6, r7
/* 802CFC2C 002CCB8C  7C A5 3A 78 */	xor r5, r5, r7
/* 802CFC30 002CCB90  7C C5 2B 79 */	or. r5, r6, r5
/* 802CFC34 002CCB94  41 82 00 0C */	beq lbl_802CFC40
/* 802CFC38 002CCB98  7D 23 4B 78 */	mr r3, r9
/* 802CFC3C 002CCB9C  4E 80 00 20 */	blr 
lbl_802CFC40:
/* 802CFC40 002CCBA0  54 84 F8 3E */	rotlwi r4, r4, 0x1f
/* 802CFC44 002CCBA4  54 60 F8 7E */	srwi r0, r3, 1
/* 802CFC48 002CCBA8  50 64 F8 00 */	rlwimi r4, r3, 0x1f, 0, 0
/* 802CFC4C 002CCBAC  39 29 00 01 */	addi r9, r9, 1
/* 802CFC50 002CCBB0  7C 86 40 38 */	and r6, r4, r8
/* 802CFC54 002CCBB4  7C 05 38 38 */	and r5, r0, r7
/* 802CFC58 002CCBB8  7C C6 3A 78 */	xor r6, r6, r7
/* 802CFC5C 002CCBBC  7C A5 3A 78 */	xor r5, r5, r7
/* 802CFC60 002CCBC0  7C C5 2B 79 */	or. r5, r6, r5
/* 802CFC64 002CCBC4  41 82 00 0C */	beq lbl_802CFC70
/* 802CFC68 002CCBC8  7D 23 4B 78 */	mr r3, r9
/* 802CFC6C 002CCBCC  4E 80 00 20 */	blr 
lbl_802CFC70:
/* 802CFC70 002CCBD0  54 84 F8 3E */	rotlwi r4, r4, 0x1f
/* 802CFC74 002CCBD4  39 29 00 01 */	addi r9, r9, 1
/* 802CFC78 002CCBD8  50 04 F8 00 */	rlwimi r4, r0, 0x1f, 0, 0
/* 802CFC7C 002CCBDC  54 00 F8 7E */	srwi r0, r0, 1
/* 802CFC80 002CCBE0  7C 86 40 38 */	and r6, r4, r8
/* 802CFC84 002CCBE4  7C 05 38 38 */	and r5, r0, r7
/* 802CFC88 002CCBE8  7C C6 3A 78 */	xor r6, r6, r7
/* 802CFC8C 002CCBEC  7C A5 3A 78 */	xor r5, r5, r7
/* 802CFC90 002CCBF0  7C C5 2B 79 */	or. r5, r6, r5
/* 802CFC94 002CCBF4  41 82 00 0C */	beq lbl_802CFCA0
/* 802CFC98 002CCBF8  7D 23 4B 78 */	mr r3, r9
/* 802CFC9C 002CCBFC  4E 80 00 20 */	blr 
lbl_802CFCA0:
/* 802CFCA0 002CCC00  54 84 F8 3E */	rotlwi r4, r4, 0x1f
/* 802CFCA4 002CCC04  39 29 00 01 */	addi r9, r9, 1
/* 802CFCA8 002CCC08  50 04 F8 00 */	rlwimi r4, r0, 0x1f, 0, 0
/* 802CFCAC 002CCC0C  54 00 F8 7E */	srwi r0, r0, 1
/* 802CFCB0 002CCC10  7C 86 40 38 */	and r6, r4, r8
/* 802CFCB4 002CCC14  7C 05 38 38 */	and r5, r0, r7
/* 802CFCB8 002CCC18  7C C6 3A 78 */	xor r6, r6, r7
/* 802CFCBC 002CCC1C  7C A5 3A 78 */	xor r5, r5, r7
/* 802CFCC0 002CCC20  7C C5 2B 79 */	or. r5, r6, r5
/* 802CFCC4 002CCC24  41 82 00 0C */	beq lbl_802CFCD0
/* 802CFCC8 002CCC28  7D 23 4B 78 */	mr r3, r9
/* 802CFCCC 002CCC2C  4E 80 00 20 */	blr 
lbl_802CFCD0:
/* 802CFCD0 002CCC30  54 84 F8 3E */	rotlwi r4, r4, 0x1f
/* 802CFCD4 002CCC34  39 29 00 01 */	addi r9, r9, 1
/* 802CFCD8 002CCC38  50 04 F8 00 */	rlwimi r4, r0, 0x1f, 0, 0
/* 802CFCDC 002CCC3C  54 00 F8 7E */	srwi r0, r0, 1
/* 802CFCE0 002CCC40  7C 03 03 78 */	mr r3, r0
/* 802CFCE4 002CCC44  39 4A 00 03 */	addi r10, r10, 3
/* 802CFCE8 002CCC48  42 00 FF 38 */	bdnz lbl_802CFC20
/* 802CFCEC 002CCC4C  38 60 FF FF */	li r3, -1
/* 802CFCF0 002CCC50  4E 80 00 20 */	blr