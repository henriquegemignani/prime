.include "macros.inc"

.section .text, "ax"

FormatCallback:
/* 803BC588 003B94E8  7C 08 02 A6 */	mflr r0
/* 803BC58C 003B94EC  90 01 00 04 */	stw r0, 4(r1)
/* 803BC590 003B94F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803BC594 003B94F4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803BC598 003B94F8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803BC59C 003B94FC  3B C3 00 00 */	addi r30, r3, 0
/* 803BC5A0 003B9500  3C 60 80 57 */	lis r3, lbl_80569A58@ha
/* 803BC5A4 003B9504  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803BC5A8 003B9508  1C BE 01 10 */	mulli r5, r30, 0x110
/* 803BC5AC 003B950C  93 81 00 10 */	stw r28, 0x10(r1)
/* 803BC5B0 003B9510  38 03 9A 58 */	addi r0, r3, lbl_80569A58@l
/* 803BC5B4 003B9514  7C 9C 23 79 */	or. r28, r4, r4
/* 803BC5B8 003B9518  7F E0 2A 14 */	add r31, r0, r5
/* 803BC5BC 003B951C  41 80 00 C4 */	blt lbl_803BC680
/* 803BC5C0 003B9520  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 803BC5C4 003B9524  38 03 00 01 */	addi r0, r3, 1
/* 803BC5C8 003B9528  90 1F 00 28 */	stw r0, 0x28(r31)
/* 803BC5CC 003B952C  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 803BC5D0 003B9530  2C 04 00 05 */	cmpwi r4, 5
/* 803BC5D4 003B9534  40 80 00 28 */	bge lbl_803BC5FC
/* 803BC5D8 003B9538  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 803BC5DC 003B953C  3C 60 80 3C */	lis r3, FormatCallback@ha
/* 803BC5E0 003B9540  38 A3 C5 88 */	addi r5, r3, FormatCallback@l
/* 803BC5E4 003B9544  7C 80 21 D6 */	mullw r4, r0, r4
/* 803BC5E8 003B9548  38 7E 00 00 */	addi r3, r30, 0
/* 803BC5EC 003B954C  4B FF C5 E9 */	bl __CARDEraseSector
/* 803BC5F0 003B9550  7C 7C 1B 79 */	or. r28, r3, r3
/* 803BC5F4 003B9554  41 80 00 8C */	blt lbl_803BC680
/* 803BC5F8 003B9558  48 00 00 B4 */	b lbl_803BC6AC
lbl_803BC5FC:
/* 803BC5FC 003B955C  2C 04 00 0A */	cmpwi r4, 0xa
/* 803BC600 003B9560  40 80 00 3C */	bge lbl_803BC63C
/* 803BC604 003B9564  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 803BC608 003B9568  38 C4 FF FB */	addi r6, r4, -5
/* 803BC60C 003B956C  3C 60 80 3C */	lis r3, FormatCallback@ha
/* 803BC610 003B9570  80 BF 00 80 */	lwz r5, 0x80(r31)
/* 803BC614 003B9574  7C 80 31 D6 */	mullw r4, r0, r6
/* 803BC618 003B9578  54 C0 68 24 */	slwi r0, r6, 0xd
/* 803BC61C 003B957C  38 E3 C5 88 */	addi r7, r3, FormatCallback@l
/* 803BC620 003B9580  7C C5 02 14 */	add r6, r5, r0
/* 803BC624 003B9584  38 7E 00 00 */	addi r3, r30, 0
/* 803BC628 003B9588  38 A0 20 00 */	li r5, 0x2000
/* 803BC62C 003B958C  4B FF DE DD */	bl __CARDWrite
/* 803BC630 003B9590  7C 7C 1B 79 */	or. r28, r3, r3
/* 803BC634 003B9594  41 80 00 4C */	blt lbl_803BC680
/* 803BC638 003B9598  48 00 00 74 */	b lbl_803BC6AC
lbl_803BC63C:
/* 803BC63C 003B959C  80 7F 00 80 */	lwz r3, 0x80(r31)
/* 803BC640 003B95A0  38 A0 20 00 */	li r5, 0x2000
/* 803BC644 003B95A4  38 03 20 00 */	addi r0, r3, 0x2000
/* 803BC648 003B95A8  90 1F 00 84 */	stw r0, 0x84(r31)
/* 803BC64C 003B95AC  80 9F 00 80 */	lwz r4, 0x80(r31)
/* 803BC650 003B95B0  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 803BC654 003B95B4  38 84 40 00 */	addi r4, r4, 0x4000
/* 803BC658 003B95B8  4B C4 6E 39 */	bl memcpy
/* 803BC65C 003B95BC  80 7F 00 80 */	lwz r3, 0x80(r31)
/* 803BC660 003B95C0  38 A0 20 00 */	li r5, 0x2000
/* 803BC664 003B95C4  38 03 60 00 */	addi r0, r3, 0x6000
/* 803BC668 003B95C8  90 1F 00 88 */	stw r0, 0x88(r31)
/* 803BC66C 003B95CC  80 9F 00 80 */	lwz r4, 0x80(r31)
/* 803BC670 003B95D0  80 7F 00 88 */	lwz r3, 0x88(r31)
/* 803BC674 003B95D4  3C 84 00 01 */	addis r4, r4, 1
/* 803BC678 003B95D8  38 84 80 00 */	addi r4, r4, -32768
/* 803BC67C 003B95DC  4B C4 6E 15 */	bl memcpy
lbl_803BC680:
/* 803BC680 003B95E0  83 BF 00 D0 */	lwz r29, 0xd0(r31)
/* 803BC684 003B95E4  38 00 00 00 */	li r0, 0
/* 803BC688 003B95E8  38 7F 00 00 */	addi r3, r31, 0
/* 803BC68C 003B95EC  90 1F 00 D0 */	stw r0, 0xd0(r31)
/* 803BC690 003B95F0  7F 84 E3 78 */	mr r4, r28
/* 803BC694 003B95F4  4B FF C7 C5 */	bl __CARDPutControlBlock
/* 803BC698 003B95F8  39 9D 00 00 */	addi r12, r29, 0
/* 803BC69C 003B95FC  7D 88 03 A6 */	mtlr r12
/* 803BC6A0 003B9600  38 7E 00 00 */	addi r3, r30, 0
/* 803BC6A4 003B9604  38 9C 00 00 */	addi r4, r28, 0
/* 803BC6A8 003B9608  4E 80 00 21 */	blrl 
lbl_803BC6AC:
/* 803BC6AC 003B960C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803BC6B0 003B9610  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803BC6B4 003B9614  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803BC6B8 003B9618  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803BC6BC 003B961C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 803BC6C0 003B9620  38 21 00 20 */	addi r1, r1, 0x20
/* 803BC6C4 003B9624  7C 08 03 A6 */	mtlr r0
/* 803BC6C8 003B9628  4E 80 00 20 */	blr 

.global __CARDFormatRegionAsync
__CARDFormatRegionAsync:
/* 803BC6CC 003B962C  7C 08 02 A6 */	mflr r0
/* 803BC6D0 003B9630  90 01 00 04 */	stw r0, 4(r1)
/* 803BC6D4 003B9634  94 21 FF A8 */	stwu r1, -0x58(r1)
/* 803BC6D8 003B9638  BE 41 00 20 */	stmw r18, 0x20(r1)
/* 803BC6DC 003B963C  3A 84 00 00 */	addi r20, r4, 0
/* 803BC6E0 003B9640  3A C3 00 00 */	addi r22, r3, 0
/* 803BC6E4 003B9644  3A 65 00 00 */	addi r19, r5, 0
/* 803BC6E8 003B9648  38 81 00 18 */	addi r4, r1, 0x18
/* 803BC6EC 003B964C  4B FF C6 B5 */	bl __CARDGetControlBlock
/* 803BC6F0 003B9650  2C 03 00 00 */	cmpwi r3, 0
/* 803BC6F4 003B9654  40 80 00 08 */	bge lbl_803BC6FC
/* 803BC6F8 003B9658  48 00 06 18 */	b lbl_803BCD10
lbl_803BC6FC:
/* 803BC6FC 003B965C  80 61 00 18 */	lwz r3, 0x18(r1)
/* 803BC700 003B9660  38 80 00 FF */	li r4, 0xff
/* 803BC704 003B9664  38 A0 20 00 */	li r5, 0x2000
/* 803BC708 003B9668  83 63 00 80 */	lwz r27, 0x80(r3)
/* 803BC70C 003B966C  7F 63 DB 78 */	mr r3, r27
/* 803BC710 003B9670  4B C4 6C 99 */	bl memset
/* 803BC714 003B9674  3C 60 CC 00 */	lis r3, 0xCC00206E@ha
/* 803BC718 003B9678  A2 43 20 6E */	lhz r18, 0xCC00206E@l(r3)
/* 803BC71C 003B967C  B2 9B 00 24 */	sth r20, 0x24(r27)
/* 803BC720 003B9680  4B FC 73 B5 */	bl __OSLockSram
/* 803BC724 003B9684  80 03 00 0C */	lwz r0, 0xc(r3)
/* 803BC728 003B9688  90 1B 00 14 */	stw r0, 0x14(r27)
/* 803BC72C 003B968C  88 03 00 12 */	lbz r0, 0x12(r3)
/* 803BC730 003B9690  38 60 00 00 */	li r3, 0
/* 803BC734 003B9694  90 1B 00 18 */	stw r0, 0x18(r27)
/* 803BC738 003B9698  4B FC 77 5D */	bl __OSUnlockSram
/* 803BC73C 003B969C  4B FC 8C 6D */	bl OSGetTime
/* 803BC740 003B96A0  3A A4 00 00 */	addi r21, r4, 0
/* 803BC744 003B96A4  3A 83 00 00 */	addi r20, r3, 0
/* 803BC748 003B96A8  3B 55 00 00 */	addi r26, r21, 0
/* 803BC74C 003B96AC  3B D4 00 00 */	addi r30, r20, 0
/* 803BC750 003B96B0  4B FC 73 E1 */	bl __OSLockSramEx
/* 803BC754 003B96B4  1C 16 00 0C */	mulli r0, r22, 0xc
/* 803BC758 003B96B8  7F 23 02 14 */	add r25, r3, r0
/* 803BC75C 003B96BC  3C 60 41 C6 */	lis r3, 0x41C64E6D@ha
/* 803BC760 003B96C0  3B 19 00 00 */	addi r24, r25, 0
/* 803BC764 003B96C4  3B E3 4E 6D */	addi r31, r3, 0x41C64E6D@l
/* 803BC768 003B96C8  3B 80 00 00 */	li r28, 0
/* 803BC76C 003B96CC  3A E0 00 04 */	li r23, 4
/* 803BC770 003B96D0  48 00 03 74 */	b lbl_803BCAE4
lbl_803BC774:
/* 803BC774 003B96D4  7C BE F9 D6 */	mullw r5, r30, r31
/* 803BC778 003B96D8  7C 7A F8 16 */	mulhwu r3, r26, r31
/* 803BC77C 003B96DC  3B C0 00 00 */	li r30, 0
/* 803BC780 003B96E0  7C A5 1A 14 */	add r5, r5, r3
/* 803BC784 003B96E4  7C 7A F1 D6 */	mullw r3, r26, r30
/* 803BC788 003B96E8  7C 1A F9 D6 */	mullw r0, r26, r31
/* 803BC78C 003B96EC  3B A0 30 39 */	li r29, 0x3039
/* 803BC790 003B96F0  7C 80 E8 14 */	addc r4, r0, r29
/* 803BC794 003B96F4  7C 05 1A 14 */	add r0, r5, r3
/* 803BC798 003B96F8  7C 60 F1 14 */	adde r3, r0, r30
/* 803BC79C 003B96FC  38 A0 00 10 */	li r5, 0x10
/* 803BC7A0 003B9700  4B FC D7 9D */	bl __shr2i
/* 803BC7A4 003B9704  7C C3 F9 D6 */	mullw r6, r3, r31
/* 803BC7A8 003B9708  88 18 00 00 */	lbz r0, 0(r24)
/* 803BC7AC 003B970C  7C A4 F8 16 */	mulhwu r5, r4, r31
/* 803BC7B0 003B9710  7C C6 2A 14 */	add r6, r6, r5
/* 803BC7B4 003B9714  7D 04 00 14 */	addc r8, r4, r0
/* 803BC7B8 003B9718  7F 87 07 34 */	extsh r7, r28
/* 803BC7BC 003B971C  7C A4 F1 D6 */	mullw r5, r4, r30
/* 803BC7C0 003B9720  7D 1B 39 AE */	stbx r8, r27, r7
/* 803BC7C4 003B9724  7C 04 F9 D6 */	mullw r0, r4, r31
/* 803BC7C8 003B9728  7C 80 E8 14 */	addc r4, r0, r29
/* 803BC7CC 003B972C  7C 06 2A 14 */	add r0, r6, r5
/* 803BC7D0 003B9730  7C 60 F1 14 */	adde r3, r0, r30
/* 803BC7D4 003B9734  38 A0 00 10 */	li r5, 0x10
/* 803BC7D8 003B9738  4B FC D7 65 */	bl __shr2i
/* 803BC7DC 003B973C  3B 40 7F FF */	li r26, 0x7fff
/* 803BC7E0 003B9740  7C 60 F0 38 */	and r0, r3, r30
/* 803BC7E4 003B9744  7C 84 D0 38 */	and r4, r4, r26
/* 803BC7E8 003B9748  7C A0 F9 D6 */	mullw r5, r0, r31
/* 803BC7EC 003B974C  7C 64 F8 16 */	mulhwu r3, r4, r31
/* 803BC7F0 003B9750  7C A5 1A 14 */	add r5, r5, r3
/* 803BC7F4 003B9754  7C 64 F1 D6 */	mullw r3, r4, r30
/* 803BC7F8 003B9758  7C 04 F9 D6 */	mullw r0, r4, r31
/* 803BC7FC 003B975C  7C 80 E8 14 */	addc r4, r0, r29
/* 803BC800 003B9760  7C 05 1A 14 */	add r0, r5, r3
/* 803BC804 003B9764  7C 60 F1 14 */	adde r3, r0, r30
/* 803BC808 003B9768  38 A0 00 10 */	li r5, 0x10
/* 803BC80C 003B976C  4B FC D7 31 */	bl __shr2i
/* 803BC810 003B9770  7C C3 F9 D6 */	mullw r6, r3, r31
/* 803BC814 003B9774  7C A4 F8 16 */	mulhwu r5, r4, r31
/* 803BC818 003B9778  39 3C 00 01 */	addi r9, r28, 1
/* 803BC81C 003B977C  7D 29 07 34 */	extsh r9, r9
/* 803BC820 003B9780  7C 19 48 AE */	lbzx r0, r25, r9
/* 803BC824 003B9784  7C C6 2A 14 */	add r6, r6, r5
/* 803BC828 003B9788  7C A4 F1 D6 */	mullw r5, r4, r30
/* 803BC82C 003B978C  7C E4 00 14 */	addc r7, r4, r0
/* 803BC830 003B9790  7C 04 F9 D6 */	mullw r0, r4, r31
/* 803BC834 003B9794  7C FB 49 AE */	stbx r7, r27, r9
/* 803BC838 003B9798  7C 80 E8 14 */	addc r4, r0, r29
/* 803BC83C 003B979C  7C 06 2A 14 */	add r0, r6, r5
/* 803BC840 003B97A0  7C 60 F1 14 */	adde r3, r0, r30
/* 803BC844 003B97A4  38 A0 00 10 */	li r5, 0x10
/* 803BC848 003B97A8  4B FC D6 F5 */	bl __shr2i
/* 803BC84C 003B97AC  7C 60 F0 38 */	and r0, r3, r30
/* 803BC850 003B97B0  7C 84 D0 38 */	and r4, r4, r26
/* 803BC854 003B97B4  7C A0 F9 D6 */	mullw r5, r0, r31
/* 803BC858 003B97B8  7C 64 F8 16 */	mulhwu r3, r4, r31
/* 803BC85C 003B97BC  7C A5 1A 14 */	add r5, r5, r3
/* 803BC860 003B97C0  7C 64 F1 D6 */	mullw r3, r4, r30
/* 803BC864 003B97C4  7C 04 F9 D6 */	mullw r0, r4, r31
/* 803BC868 003B97C8  7C 80 E8 14 */	addc r4, r0, r29
/* 803BC86C 003B97CC  7C 05 1A 14 */	add r0, r5, r3
/* 803BC870 003B97D0  7C 60 F1 14 */	adde r3, r0, r30
/* 803BC874 003B97D4  38 A0 00 10 */	li r5, 0x10
/* 803BC878 003B97D8  4B FC D6 C5 */	bl __shr2i
/* 803BC87C 003B97DC  7C C3 F9 D6 */	mullw r6, r3, r31
/* 803BC880 003B97E0  7C A4 F8 16 */	mulhwu r5, r4, r31
/* 803BC884 003B97E4  39 3C 00 02 */	addi r9, r28, 2
/* 803BC888 003B97E8  7D 29 07 34 */	extsh r9, r9
/* 803BC88C 003B97EC  7C 19 48 AE */	lbzx r0, r25, r9
/* 803BC890 003B97F0  7C C6 2A 14 */	add r6, r6, r5
/* 803BC894 003B97F4  7C A4 F1 D6 */	mullw r5, r4, r30
/* 803BC898 003B97F8  7C E4 00 14 */	addc r7, r4, r0
/* 803BC89C 003B97FC  7C 04 F9 D6 */	mullw r0, r4, r31
/* 803BC8A0 003B9800  7C FB 49 AE */	stbx r7, r27, r9
/* 803BC8A4 003B9804  7C 80 E8 14 */	addc r4, r0, r29
/* 803BC8A8 003B9808  7C 06 2A 14 */	add r0, r6, r5
/* 803BC8AC 003B980C  7C 60 F1 14 */	adde r3, r0, r30
/* 803BC8B0 003B9810  38 A0 00 10 */	li r5, 0x10
/* 803BC8B4 003B9814  4B FC D6 89 */	bl __shr2i
/* 803BC8B8 003B9818  7C 60 F0 38 */	and r0, r3, r30
/* 803BC8BC 003B981C  7C 84 D0 38 */	and r4, r4, r26
/* 803BC8C0 003B9820  7C A0 F9 D6 */	mullw r5, r0, r31
/* 803BC8C4 003B9824  7C 64 F8 16 */	mulhwu r3, r4, r31
/* 803BC8C8 003B9828  7C A5 1A 14 */	add r5, r5, r3
/* 803BC8CC 003B982C  7C 64 F1 D6 */	mullw r3, r4, r30
/* 803BC8D0 003B9830  7C 04 F9 D6 */	mullw r0, r4, r31
/* 803BC8D4 003B9834  7C 80 E8 14 */	addc r4, r0, r29
/* 803BC8D8 003B9838  7C 05 1A 14 */	add r0, r5, r3
/* 803BC8DC 003B983C  7C 60 F1 14 */	adde r3, r0, r30
/* 803BC8E0 003B9840  38 A0 00 10 */	li r5, 0x10
/* 803BC8E4 003B9844  4B FC D6 59 */	bl __shr2i
/* 803BC8E8 003B9848  7C C3 F9 D6 */	mullw r6, r3, r31
/* 803BC8EC 003B984C  7C A4 F8 16 */	mulhwu r5, r4, r31
/* 803BC8F0 003B9850  39 3C 00 03 */	addi r9, r28, 3
/* 803BC8F4 003B9854  7D 29 07 34 */	extsh r9, r9
/* 803BC8F8 003B9858  7C 19 48 AE */	lbzx r0, r25, r9
/* 803BC8FC 003B985C  7C C6 2A 14 */	add r6, r6, r5
/* 803BC900 003B9860  7C A4 F1 D6 */	mullw r5, r4, r30
/* 803BC904 003B9864  7C E4 00 14 */	addc r7, r4, r0
/* 803BC908 003B9868  7C 04 F9 D6 */	mullw r0, r4, r31
/* 803BC90C 003B986C  7C FB 49 AE */	stbx r7, r27, r9
/* 803BC910 003B9870  7C 80 E8 14 */	addc r4, r0, r29
/* 803BC914 003B9874  7C 06 2A 14 */	add r0, r6, r5
/* 803BC918 003B9878  7C 60 F1 14 */	adde r3, r0, r30
/* 803BC91C 003B987C  38 A0 00 10 */	li r5, 0x10
/* 803BC920 003B9880  4B FC D6 1D */	bl __shr2i
/* 803BC924 003B9884  7C 60 F0 38 */	and r0, r3, r30
/* 803BC928 003B9888  7C 84 D0 38 */	and r4, r4, r26
/* 803BC92C 003B988C  7C A0 F9 D6 */	mullw r5, r0, r31
/* 803BC930 003B9890  7C 64 F8 16 */	mulhwu r3, r4, r31
/* 803BC934 003B9894  7C A5 1A 14 */	add r5, r5, r3
/* 803BC938 003B9898  7C 64 F1 D6 */	mullw r3, r4, r30
/* 803BC93C 003B989C  7C 04 F9 D6 */	mullw r0, r4, r31
/* 803BC940 003B98A0  7C 80 E8 14 */	addc r4, r0, r29
/* 803BC944 003B98A4  7C 05 1A 14 */	add r0, r5, r3
/* 803BC948 003B98A8  7C 60 F1 14 */	adde r3, r0, r30
/* 803BC94C 003B98AC  38 A0 00 10 */	li r5, 0x10
/* 803BC950 003B98B0  4B FC D5 ED */	bl __shr2i
/* 803BC954 003B98B4  7C C3 F9 D6 */	mullw r6, r3, r31
/* 803BC958 003B98B8  7C A4 F8 16 */	mulhwu r5, r4, r31
/* 803BC95C 003B98BC  39 3C 00 04 */	addi r9, r28, 4
/* 803BC960 003B98C0  7D 29 07 34 */	extsh r9, r9
/* 803BC964 003B98C4  7C 19 48 AE */	lbzx r0, r25, r9
/* 803BC968 003B98C8  7C C6 2A 14 */	add r6, r6, r5
/* 803BC96C 003B98CC  7C A4 F1 D6 */	mullw r5, r4, r30
/* 803BC970 003B98D0  7C E4 00 14 */	addc r7, r4, r0
/* 803BC974 003B98D4  7C 04 F9 D6 */	mullw r0, r4, r31
/* 803BC978 003B98D8  7C FB 49 AE */	stbx r7, r27, r9
/* 803BC97C 003B98DC  7C 80 E8 14 */	addc r4, r0, r29
/* 803BC980 003B98E0  7C 06 2A 14 */	add r0, r6, r5
/* 803BC984 003B98E4  7C 60 F1 14 */	adde r3, r0, r30
/* 803BC988 003B98E8  38 A0 00 10 */	li r5, 0x10
/* 803BC98C 003B98EC  4B FC D5 B1 */	bl __shr2i
/* 803BC990 003B98F0  7C 60 F0 38 */	and r0, r3, r30
/* 803BC994 003B98F4  7C 84 D0 38 */	and r4, r4, r26
/* 803BC998 003B98F8  7C A0 F9 D6 */	mullw r5, r0, r31
/* 803BC99C 003B98FC  7C 64 F8 16 */	mulhwu r3, r4, r31
/* 803BC9A0 003B9900  7C A5 1A 14 */	add r5, r5, r3
/* 803BC9A4 003B9904  7C 64 F1 D6 */	mullw r3, r4, r30
/* 803BC9A8 003B9908  7C 04 F9 D6 */	mullw r0, r4, r31
/* 803BC9AC 003B990C  7C 80 E8 14 */	addc r4, r0, r29
/* 803BC9B0 003B9910  7C 05 1A 14 */	add r0, r5, r3
/* 803BC9B4 003B9914  7C 60 F1 14 */	adde r3, r0, r30
/* 803BC9B8 003B9918  38 A0 00 10 */	li r5, 0x10
/* 803BC9BC 003B991C  4B FC D5 81 */	bl __shr2i
/* 803BC9C0 003B9920  7C C3 F9 D6 */	mullw r6, r3, r31
/* 803BC9C4 003B9924  7C A4 F8 16 */	mulhwu r5, r4, r31
/* 803BC9C8 003B9928  39 3C 00 05 */	addi r9, r28, 5
/* 803BC9CC 003B992C  7D 29 07 34 */	extsh r9, r9
/* 803BC9D0 003B9930  7C 19 48 AE */	lbzx r0, r25, r9
/* 803BC9D4 003B9934  7C C6 2A 14 */	add r6, r6, r5
/* 803BC9D8 003B9938  7C A4 F1 D6 */	mullw r5, r4, r30
/* 803BC9DC 003B993C  7C E4 00 14 */	addc r7, r4, r0
/* 803BC9E0 003B9940  7C 04 F9 D6 */	mullw r0, r4, r31
/* 803BC9E4 003B9944  7C FB 49 AE */	stbx r7, r27, r9
/* 803BC9E8 003B9948  7C 80 E8 14 */	addc r4, r0, r29
/* 803BC9EC 003B994C  7C 06 2A 14 */	add r0, r6, r5
/* 803BC9F0 003B9950  7C 60 F1 14 */	adde r3, r0, r30
/* 803BC9F4 003B9954  38 A0 00 10 */	li r5, 0x10
/* 803BC9F8 003B9958  4B FC D5 45 */	bl __shr2i
/* 803BC9FC 003B995C  7C 60 F0 38 */	and r0, r3, r30
/* 803BCA00 003B9960  7C 84 D0 38 */	and r4, r4, r26
/* 803BCA04 003B9964  7C A0 F9 D6 */	mullw r5, r0, r31
/* 803BCA08 003B9968  7C 64 F8 16 */	mulhwu r3, r4, r31
/* 803BCA0C 003B996C  7C A5 1A 14 */	add r5, r5, r3
/* 803BCA10 003B9970  7C 64 F1 D6 */	mullw r3, r4, r30
/* 803BCA14 003B9974  7C 04 F9 D6 */	mullw r0, r4, r31
/* 803BCA18 003B9978  7C 80 E8 14 */	addc r4, r0, r29
/* 803BCA1C 003B997C  7C 05 1A 14 */	add r0, r5, r3
/* 803BCA20 003B9980  7C 60 F1 14 */	adde r3, r0, r30
/* 803BCA24 003B9984  38 A0 00 10 */	li r5, 0x10
/* 803BCA28 003B9988  4B FC D5 15 */	bl __shr2i
/* 803BCA2C 003B998C  7C C3 F9 D6 */	mullw r6, r3, r31
/* 803BCA30 003B9990  7C A4 F8 16 */	mulhwu r5, r4, r31
/* 803BCA34 003B9994  39 3C 00 06 */	addi r9, r28, 6
/* 803BCA38 003B9998  7D 29 07 34 */	extsh r9, r9
/* 803BCA3C 003B999C  7C 19 48 AE */	lbzx r0, r25, r9
/* 803BCA40 003B99A0  7C C6 2A 14 */	add r6, r6, r5
/* 803BCA44 003B99A4  7C A4 F1 D6 */	mullw r5, r4, r30
/* 803BCA48 003B99A8  7C E4 00 14 */	addc r7, r4, r0
/* 803BCA4C 003B99AC  7C 04 F9 D6 */	mullw r0, r4, r31
/* 803BCA50 003B99B0  7C FB 49 AE */	stbx r7, r27, r9
/* 803BCA54 003B99B4  7C 80 E8 14 */	addc r4, r0, r29
/* 803BCA58 003B99B8  7C 06 2A 14 */	add r0, r6, r5
/* 803BCA5C 003B99BC  7C 60 F1 14 */	adde r3, r0, r30
/* 803BCA60 003B99C0  38 A0 00 10 */	li r5, 0x10
/* 803BCA64 003B99C4  4B FC D4 D9 */	bl __shr2i
/* 803BCA68 003B99C8  7C 60 F0 38 */	and r0, r3, r30
/* 803BCA6C 003B99CC  7C 84 D0 38 */	and r4, r4, r26
/* 803BCA70 003B99D0  7C A0 F9 D6 */	mullw r5, r0, r31
/* 803BCA74 003B99D4  7C 64 F8 16 */	mulhwu r3, r4, r31
/* 803BCA78 003B99D8  7C A5 1A 14 */	add r5, r5, r3
/* 803BCA7C 003B99DC  7C 64 F1 D6 */	mullw r3, r4, r30
/* 803BCA80 003B99E0  7C 04 F9 D6 */	mullw r0, r4, r31
/* 803BCA84 003B99E4  7C 80 E8 14 */	addc r4, r0, r29
/* 803BCA88 003B99E8  7C 05 1A 14 */	add r0, r5, r3
/* 803BCA8C 003B99EC  7C 60 F1 14 */	adde r3, r0, r30
/* 803BCA90 003B99F0  38 A0 00 10 */	li r5, 0x10
/* 803BCA94 003B99F4  4B FC D4 A9 */	bl __shr2i
/* 803BCA98 003B99F8  7C C3 F9 D6 */	mullw r6, r3, r31
/* 803BCA9C 003B99FC  7C A4 F8 16 */	mulhwu r5, r4, r31
/* 803BCAA0 003B9A00  39 3C 00 07 */	addi r9, r28, 7
/* 803BCAA4 003B9A04  7D 29 07 34 */	extsh r9, r9
/* 803BCAA8 003B9A08  7C 19 48 AE */	lbzx r0, r25, r9
/* 803BCAAC 003B9A0C  7C C6 2A 14 */	add r6, r6, r5
/* 803BCAB0 003B9A10  7C A4 F1 D6 */	mullw r5, r4, r30
/* 803BCAB4 003B9A14  7C E4 00 14 */	addc r7, r4, r0
/* 803BCAB8 003B9A18  7C 04 F9 D6 */	mullw r0, r4, r31
/* 803BCABC 003B9A1C  7C FB 49 AE */	stbx r7, r27, r9
/* 803BCAC0 003B9A20  7C 80 E8 14 */	addc r4, r0, r29
/* 803BCAC4 003B9A24  7C 06 2A 14 */	add r0, r6, r5
/* 803BCAC8 003B9A28  7C 60 F1 14 */	adde r3, r0, r30
/* 803BCACC 003B9A2C  38 A0 00 10 */	li r5, 0x10
/* 803BCAD0 003B9A30  4B FC D4 6D */	bl __shr2i
/* 803BCAD4 003B9A34  7C 9A D0 38 */	and r26, r4, r26
/* 803BCAD8 003B9A38  7C 7E F0 38 */	and r30, r3, r30
/* 803BCADC 003B9A3C  3B 18 00 08 */	addi r24, r24, 8
/* 803BCAE0 003B9A40  3B 9C 00 08 */	addi r28, r28, 8
lbl_803BCAE4:
/* 803BCAE4 003B9A44  7F 80 07 34 */	extsh r0, r28
/* 803BCAE8 003B9A48  7C 00 B8 00 */	cmpw r0, r23
/* 803BCAEC 003B9A4C  41 80 FC 88 */	blt lbl_803BC774
/* 803BCAF0 003B9A50  48 00 02 18 */	b lbl_803BCD08
lbl_803BCAF4:
/* 803BCAF4 003B9A54  3C 60 41 C6 */	lis r3, 0x41C64E6D@ha
/* 803BCAF8 003B9A58  3B 23 4E 6D */	addi r25, r3, 0x41C64E6D@l
/* 803BCAFC 003B9A5C  48 00 00 80 */	b lbl_803BCB7C
lbl_803BCB00:
/* 803BCB00 003B9A60  7C BE C9 D6 */	mullw r5, r30, r25
/* 803BCB04 003B9A64  7C 7A C8 16 */	mulhwu r3, r26, r25
/* 803BCB08 003B9A68  3B 00 00 00 */	li r24, 0
/* 803BCB0C 003B9A6C  7C A5 1A 14 */	add r5, r5, r3
/* 803BCB10 003B9A70  7C 7A C1 D6 */	mullw r3, r26, r24
/* 803BCB14 003B9A74  7C 1A C9 D6 */	mullw r0, r26, r25
/* 803BCB18 003B9A78  3A E0 30 39 */	li r23, 0x3039
/* 803BCB1C 003B9A7C  7C 80 B8 14 */	addc r4, r0, r23
/* 803BCB20 003B9A80  7C 05 1A 14 */	add r0, r5, r3
/* 803BCB24 003B9A84  7C 60 C1 14 */	adde r3, r0, r24
/* 803BCB28 003B9A88  38 A0 00 10 */	li r5, 0x10
/* 803BCB2C 003B9A8C  4B FC D4 11 */	bl __shr2i
/* 803BCB30 003B9A90  7C C3 C9 D6 */	mullw r6, r3, r25
/* 803BCB34 003B9A94  88 1D 00 00 */	lbz r0, 0(r29)
/* 803BCB38 003B9A98  7C A4 C8 16 */	mulhwu r5, r4, r25
/* 803BCB3C 003B9A9C  7C C6 2A 14 */	add r6, r6, r5
/* 803BCB40 003B9AA0  7D 04 00 14 */	addc r8, r4, r0
/* 803BCB44 003B9AA4  7F 87 07 34 */	extsh r7, r28
/* 803BCB48 003B9AA8  7C A4 C1 D6 */	mullw r5, r4, r24
/* 803BCB4C 003B9AAC  7D 1B 39 AE */	stbx r8, r27, r7
/* 803BCB50 003B9AB0  7C 04 C9 D6 */	mullw r0, r4, r25
/* 803BCB54 003B9AB4  7C 80 B8 14 */	addc r4, r0, r23
/* 803BCB58 003B9AB8  7C 06 2A 14 */	add r0, r6, r5
/* 803BCB5C 003B9ABC  7C 60 C1 14 */	adde r3, r0, r24
/* 803BCB60 003B9AC0  38 A0 00 10 */	li r5, 0x10
/* 803BCB64 003B9AC4  4B FC D3 D9 */	bl __shr2i
/* 803BCB68 003B9AC8  38 00 7F FF */	li r0, 0x7fff
/* 803BCB6C 003B9ACC  7C 9A 00 38 */	and r26, r4, r0
/* 803BCB70 003B9AD0  7C 7E C0 38 */	and r30, r3, r24
/* 803BCB74 003B9AD4  3B BD 00 01 */	addi r29, r29, 1
/* 803BCB78 003B9AD8  3B 9C 00 01 */	addi r28, r28, 1
lbl_803BCB7C:
/* 803BCB7C 003B9ADC  7F 80 07 34 */	extsh r0, r28
/* 803BCB80 003B9AE0  2C 00 00 0C */	cmpwi r0, 0xc
/* 803BCB84 003B9AE4  41 80 FF 7C */	blt lbl_803BCB00
/* 803BCB88 003B9AE8  38 60 00 00 */	li r3, 0
/* 803BCB8C 003B9AEC  4B FC 73 2D */	bl __OSUnlockSramEx
/* 803BCB90 003B9AF0  92 5B 00 1C */	stw r18, 0x1c(r27)
/* 803BCB94 003B9AF4  3A 40 00 00 */	li r18, 0
/* 803BCB98 003B9AF8  38 7B 00 00 */	addi r3, r27, 0
/* 803BCB9C 003B9AFC  92 BB 00 10 */	stw r21, 0x10(r27)
/* 803BCBA0 003B9B00  38 BB 01 FC */	addi r5, r27, 0x1fc
/* 803BCBA4 003B9B04  38 DB 01 FE */	addi r6, r27, 0x1fe
/* 803BCBA8 003B9B08  92 9B 00 0C */	stw r20, 0xc(r27)
/* 803BCBAC 003B9B0C  38 80 01 FC */	li r4, 0x1fc
/* 803BCBB0 003B9B10  B2 5B 00 20 */	sth r18, 0x20(r27)
/* 803BCBB4 003B9B14  80 E1 00 18 */	lwz r7, 0x18(r1)
/* 803BCBB8 003B9B18  A0 07 00 08 */	lhz r0, 8(r7)
/* 803BCBBC 003B9B1C  B0 1B 00 22 */	sth r0, 0x22(r27)
/* 803BCBC0 003B9B20  4B FF E0 15 */	bl __CARDCheckSum
/* 803BCBC4 003B9B24  48 00 00 4C */	b lbl_803BCC10
lbl_803BCBC8:
/* 803BCBC8 003B9B28  80 81 00 18 */	lwz r4, 0x18(r1)
/* 803BCBCC 003B9B2C  7E 43 07 34 */	extsh r3, r18
/* 803BCBD0 003B9B30  38 03 00 01 */	addi r0, r3, 1
/* 803BCBD4 003B9B34  80 64 00 80 */	lwz r3, 0x80(r4)
/* 803BCBD8 003B9B38  54 00 68 24 */	slwi r0, r0, 0xd
/* 803BCBDC 003B9B3C  38 80 00 FF */	li r4, 0xff
/* 803BCBE0 003B9B40  7E 83 02 14 */	add r20, r3, r0
/* 803BCBE4 003B9B44  38 74 00 00 */	addi r3, r20, 0
/* 803BCBE8 003B9B48  38 A0 20 00 */	li r5, 0x2000
/* 803BCBEC 003B9B4C  4B C4 67 BD */	bl memset
/* 803BCBF0 003B9B50  38 94 1F C0 */	addi r4, r20, 0x1fc0
/* 803BCBF4 003B9B54  B2 54 1F FA */	sth r18, 0x1ffa(r20)
/* 803BCBF8 003B9B58  38 74 00 00 */	addi r3, r20, 0
/* 803BCBFC 003B9B5C  38 A4 00 3C */	addi r5, r4, 0x3c
/* 803BCC00 003B9B60  38 C4 00 3E */	addi r6, r4, 0x3e
/* 803BCC04 003B9B64  38 80 1F FC */	li r4, 0x1ffc
/* 803BCC08 003B9B68  4B FF DF CD */	bl __CARDCheckSum
/* 803BCC0C 003B9B6C  3A 52 00 01 */	addi r18, r18, 1
lbl_803BCC10:
/* 803BCC10 003B9B70  7E 40 07 34 */	extsh r0, r18
/* 803BCC14 003B9B74  2C 00 00 02 */	cmpwi r0, 2
/* 803BCC18 003B9B78  41 80 FF B0 */	blt lbl_803BCBC8
/* 803BCC1C 003B9B7C  3A 40 00 00 */	li r18, 0
/* 803BCC20 003B9B80  48 00 00 60 */	b lbl_803BCC80
lbl_803BCC24:
/* 803BCC24 003B9B84  80 81 00 18 */	lwz r4, 0x18(r1)
/* 803BCC28 003B9B88  7E 43 07 34 */	extsh r3, r18
/* 803BCC2C 003B9B8C  38 03 00 03 */	addi r0, r3, 3
/* 803BCC30 003B9B90  80 64 00 80 */	lwz r3, 0x80(r4)
/* 803BCC34 003B9B94  54 00 68 24 */	slwi r0, r0, 0xd
/* 803BCC38 003B9B98  38 80 00 00 */	li r4, 0
/* 803BCC3C 003B9B9C  7E 83 02 14 */	add r20, r3, r0
/* 803BCC40 003B9BA0  38 74 00 00 */	addi r3, r20, 0
/* 803BCC44 003B9BA4  38 A0 20 00 */	li r5, 0x2000
/* 803BCC48 003B9BA8  4B C4 67 61 */	bl memset
/* 803BCC4C 003B9BAC  B2 54 00 04 */	sth r18, 4(r20)
/* 803BCC50 003B9BB0  38 00 00 04 */	li r0, 4
/* 803BCC54 003B9BB4  38 B4 00 00 */	addi r5, r20, 0
/* 803BCC58 003B9BB8  80 81 00 18 */	lwz r4, 0x18(r1)
/* 803BCC5C 003B9BBC  38 74 00 04 */	addi r3, r20, 4
/* 803BCC60 003B9BC0  38 D4 00 02 */	addi r6, r20, 2
/* 803BCC64 003B9BC4  A0 E4 00 10 */	lhz r7, 0x10(r4)
/* 803BCC68 003B9BC8  38 80 1F FC */	li r4, 0x1ffc
/* 803BCC6C 003B9BCC  38 E7 FF FB */	addi r7, r7, -5
/* 803BCC70 003B9BD0  B0 F4 00 06 */	sth r7, 6(r20)
/* 803BCC74 003B9BD4  B0 14 00 08 */	sth r0, 8(r20)
/* 803BCC78 003B9BD8  4B FF DF 5D */	bl __CARDCheckSum
/* 803BCC7C 003B9BDC  3A 52 00 01 */	addi r18, r18, 1
lbl_803BCC80:
/* 803BCC80 003B9BE0  7E 40 07 34 */	extsh r0, r18
/* 803BCC84 003B9BE4  2C 00 00 02 */	cmpwi r0, 2
/* 803BCC88 003B9BE8  41 80 FF 9C */	blt lbl_803BCC24
/* 803BCC8C 003B9BEC  28 13 00 00 */	cmplwi r19, 0
/* 803BCC90 003B9BF0  41 82 00 0C */	beq lbl_803BCC9C
/* 803BCC94 003B9BF4  7E 60 9B 78 */	mr r0, r19
/* 803BCC98 003B9BF8  48 00 00 0C */	b lbl_803BCCA4
lbl_803BCC9C:
/* 803BCC9C 003B9BFC  3C 60 80 3B */	lis r3, __CARDDefaultApiCallback@ha
/* 803BCCA0 003B9C00  38 03 7E 74 */	addi r0, r3, __CARDDefaultApiCallback@l
lbl_803BCCA4:
/* 803BCCA4 003B9C04  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 803BCCA8 003B9C08  3C 60 00 01 */	lis r3, 0x0000A000@ha
/* 803BCCAC 003B9C0C  38 83 A0 00 */	addi r4, r3, 0x0000A000@l
/* 803BCCB0 003B9C10  90 05 00 D0 */	stw r0, 0xd0(r5)
/* 803BCCB4 003B9C14  80 61 00 18 */	lwz r3, 0x18(r1)
/* 803BCCB8 003B9C18  80 63 00 80 */	lwz r3, 0x80(r3)
/* 803BCCBC 003B9C1C  4B FC 1E 25 */	bl DCStoreRange
/* 803BCCC0 003B9C20  80 81 00 18 */	lwz r4, 0x18(r1)
/* 803BCCC4 003B9C24  38 00 00 00 */	li r0, 0
/* 803BCCC8 003B9C28  3C 60 80 3C */	lis r3, FormatCallback@ha
/* 803BCCCC 003B9C2C  90 04 00 28 */	stw r0, 0x28(r4)
/* 803BCCD0 003B9C30  38 A3 C5 88 */	addi r5, r3, FormatCallback@l
/* 803BCCD4 003B9C34  38 76 00 00 */	addi r3, r22, 0
/* 803BCCD8 003B9C38  80 C1 00 18 */	lwz r6, 0x18(r1)
/* 803BCCDC 003B9C3C  80 86 00 0C */	lwz r4, 0xc(r6)
/* 803BCCE0 003B9C40  80 06 00 28 */	lwz r0, 0x28(r6)
/* 803BCCE4 003B9C44  7C 84 01 D6 */	mullw r4, r4, r0
/* 803BCCE8 003B9C48  4B FF BE ED */	bl __CARDEraseSector
/* 803BCCEC 003B9C4C  7C 72 1B 79 */	or. r18, r3, r3
/* 803BCCF0 003B9C50  40 80 00 10 */	bge lbl_803BCD00
/* 803BCCF4 003B9C54  80 61 00 18 */	lwz r3, 0x18(r1)
/* 803BCCF8 003B9C58  7E 44 93 78 */	mr r4, r18
/* 803BCCFC 003B9C5C  4B FF C1 5D */	bl __CARDPutControlBlock
lbl_803BCD00:
/* 803BCD00 003B9C60  7E 43 93 78 */	mr r3, r18
/* 803BCD04 003B9C64  48 00 00 0C */	b lbl_803BCD10
lbl_803BCD08:
/* 803BCD08 003B9C68  7F B9 02 14 */	add r29, r25, r0
/* 803BCD0C 003B9C6C  4B FF FD E8 */	b lbl_803BCAF4
lbl_803BCD10:
/* 803BCD10 003B9C70  BA 41 00 20 */	lmw r18, 0x20(r1)
/* 803BCD14 003B9C74  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 803BCD18 003B9C78  38 21 00 58 */	addi r1, r1, 0x58
/* 803BCD1C 003B9C7C  7C 08 03 A6 */	mtlr r0
/* 803BCD20 003B9C80  4E 80 00 20 */	blr 

.global CARDFormatAsync
CARDFormatAsync:
/* 803BCD24 003B9C84  7C 08 02 A6 */	mflr r0
/* 803BCD28 003B9C88  90 01 00 04 */	stw r0, 4(r1)
/* 803BCD2C 003B9C8C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 803BCD30 003B9C90  93 E1 00 14 */	stw r31, 0x14(r1)
/* 803BCD34 003B9C94  3B E4 00 00 */	addi r31, r4, 0
/* 803BCD38 003B9C98  93 C1 00 10 */	stw r30, 0x10(r1)
/* 803BCD3C 003B9C9C  3B C3 00 00 */	addi r30, r3, 0
/* 803BCD40 003B9CA0  4B FF C0 21 */	bl __CARDGetFontEncode
/* 803BCD44 003B9CA4  38 83 00 00 */	addi r4, r3, 0
/* 803BCD48 003B9CA8  38 7E 00 00 */	addi r3, r30, 0
/* 803BCD4C 003B9CAC  38 BF 00 00 */	addi r5, r31, 0
/* 803BCD50 003B9CB0  4B FF F9 7D */	bl __CARDFormatRegionAsync
/* 803BCD54 003B9CB4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 803BCD58 003B9CB8  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 803BCD5C 003B9CBC  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 803BCD60 003B9CC0  38 21 00 18 */	addi r1, r1, 0x18
/* 803BCD64 003B9CC4  7C 08 03 A6 */	mtlr r0
/* 803BCD68 003B9CC8  4E 80 00 20 */	blr 