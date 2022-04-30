.include "macros.inc"

.section .text, "ax"  # 0x80003640 - 0x803CB1C0

.global SetTestPoint__10CPVSVisSetFRC13CPVSVisOctreeRC9CVector3f
SetTestPoint__10CPVSVisSetFRC13CPVSVisOctreeRC9CVector3f:
/* 80315F78 00312ED8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80315F7C 00312EDC  7C 08 02 A6 */	mflr r0
/* 80315F80 00312EE0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80315F84 00312EE4  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 80315F88 00312EE8  7C 9C 23 78 */	mr r28, r4
/* 80315F8C 00312EEC  7C BD 2B 78 */	mr r29, r5
/* 80315F90 00312EF0  7C 7B 1B 78 */	mr r27, r3
/* 80315F94 00312EF4  7F 83 E3 78 */	mr r3, r28
/* 80315F98 00312EF8  7F A4 EB 78 */	mr r4, r29
/* 80315F9C 00312EFC  48 02 15 99 */	bl PointInside__6CAABoxCFRC9CVector3f
/* 80315FA0 00312F00  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80315FA4 00312F04  40 82 00 14 */	bne lbl_80315FB8
/* 80315FA8 00312F08  7F 63 DB 78 */	mr r3, r27
/* 80315FAC 00312F0C  38 80 00 02 */	li r4, 2
/* 80315FB0 00312F10  48 00 03 D1 */	bl Reset__10CPVSVisSetFi
/* 80315FB4 00312F14  48 00 01 DC */	b lbl_80316190
lbl_80315FB8:
/* 80315FB8 00312F18  83 DC 00 24 */	lwz r30, 0x24(r28)
/* 80315FBC 00312F1C  C0 1C 00 00 */	lfs f0, 0(r28)
/* 80315FC0 00312F20  D0 1C 00 2C */	stfs f0, 0x2c(r28)
/* 80315FC4 00312F24  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80315FC8 00312F28  D0 1C 00 30 */	stfs f0, 0x30(r28)
/* 80315FCC 00312F2C  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80315FD0 00312F30  D0 1C 00 34 */	stfs f0, 0x34(r28)
/* 80315FD4 00312F34  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80315FD8 00312F38  D0 1C 00 38 */	stfs f0, 0x38(r28)
/* 80315FDC 00312F3C  C0 1C 00 10 */	lfs f0, 0x10(r28)
/* 80315FE0 00312F40  D0 1C 00 3C */	stfs f0, 0x3c(r28)
/* 80315FE4 00312F44  C0 1C 00 14 */	lfs f0, 0x14(r28)
/* 80315FE8 00312F48  D0 1C 00 40 */	stfs f0, 0x40(r28)
/* 80315FEC 00312F4C  48 00 00 C8 */	b lbl_803160B4
lbl_80315FF0:
/* 80315FF0 00312F50  2C 03 00 00 */	cmpwi r3, 0
/* 80315FF4 00312F54  41 82 00 64 */	beq lbl_80316058
/* 80315FF8 00312F58  57 E0 06 75 */	rlwinm. r0, r31, 0, 0x19, 0x1a
/* 80315FFC 00312F5C  40 82 00 18 */	bne lbl_80316014
/* 80316000 00312F60  38 03 FF FF */	addi r0, r3, -1
/* 80316004 00312F64  54 00 08 3C */	slwi r0, r0, 1
/* 80316008 00312F68  7C 1E 02 2E */	lhzx r0, r30, r0
/* 8031600C 00312F6C  7F DE 02 14 */	add r30, r30, r0
/* 80316010 00312F70  48 00 00 48 */	b lbl_80316058
lbl_80316014:
/* 80316014 00312F74  57 E0 06 B5 */	rlwinm. r0, r31, 0, 0x1a, 0x1a
/* 80316018 00312F78  41 82 00 14 */	beq lbl_8031602C
/* 8031601C 00312F7C  7C 63 F2 14 */	add r3, r3, r30
/* 80316020 00312F80  88 03 FF FF */	lbz r0, -1(r3)
/* 80316024 00312F84  7F DE 02 14 */	add r30, r30, r0
/* 80316028 00312F88  48 00 00 30 */	b lbl_80316058
lbl_8031602C:
/* 8031602C 00312F8C  38 03 FF FF */	addi r0, r3, -1
/* 80316030 00312F90  1C 00 00 03 */	mulli r0, r0, 3
/* 80316034 00312F94  7C 7E 02 14 */	add r3, r30, r0
/* 80316038 00312F98  88 03 00 01 */	lbz r0, 1(r3)
/* 8031603C 00312F9C  88 83 00 02 */	lbz r4, 2(r3)
/* 80316040 00312FA0  54 00 40 2E */	slwi r0, r0, 8
/* 80316044 00312FA4  88 63 00 00 */	lbz r3, 0(r3)
/* 80316048 00312FA8  7C 00 22 14 */	add r0, r0, r4
/* 8031604C 00312FAC  54 63 80 1E */	slwi r3, r3, 0x10
/* 80316050 00312FB0  7F C0 F2 14 */	add r30, r0, r30
/* 80316054 00312FB4  7F C3 F2 14 */	add r30, r3, r30
lbl_80316058:
/* 80316058 00312FB8  57 E0 06 75 */	rlwinm. r0, r31, 0, 0x19, 0x1a
/* 8031605C 00312FBC  40 82 00 20 */	bne lbl_8031607C
/* 80316060 00312FC0  7F 83 E3 78 */	mr r3, r28
/* 80316064 00312FC4  7F E4 FB 78 */	mr r4, r31
/* 80316068 00312FC8  4B FF FD 11 */	bl GetNumChildren__13CPVSVisOctreeCFUc
/* 8031606C 00312FCC  38 03 FF FF */	addi r0, r3, -1
/* 80316070 00312FD0  54 00 08 3C */	slwi r0, r0, 1
/* 80316074 00312FD4  7F DE 02 14 */	add r30, r30, r0
/* 80316078 00312FD8  48 00 00 3C */	b lbl_803160B4
lbl_8031607C:
/* 8031607C 00312FDC  57 E0 06 B5 */	rlwinm. r0, r31, 0, 0x1a, 0x1a
/* 80316080 00312FE0  41 82 00 1C */	beq lbl_8031609C
/* 80316084 00312FE4  7F 83 E3 78 */	mr r3, r28
/* 80316088 00312FE8  7F E4 FB 78 */	mr r4, r31
/* 8031608C 00312FEC  4B FF FC ED */	bl GetNumChildren__13CPVSVisOctreeCFUc
/* 80316090 00312FF0  7F C3 F2 14 */	add r30, r3, r30
/* 80316094 00312FF4  3B DE FF FF */	addi r30, r30, -1
/* 80316098 00312FF8  48 00 00 1C */	b lbl_803160B4
lbl_8031609C:
/* 8031609C 00312FFC  7F 83 E3 78 */	mr r3, r28
/* 803160A0 00313000  7F E4 FB 78 */	mr r4, r31
/* 803160A4 00313004  4B FF FC D5 */	bl GetNumChildren__13CPVSVisOctreeCFUc
/* 803160A8 00313008  38 03 FF FF */	addi r0, r3, -1
/* 803160AC 0031300C  1C 00 00 03 */	mulli r0, r0, 3
/* 803160B0 00313010  7F DE 02 14 */	add r30, r30, r0
lbl_803160B4:
/* 803160B4 00313014  8B FE 00 00 */	lbz r31, 0(r30)
/* 803160B8 00313018  7F 83 E3 78 */	mr r3, r28
/* 803160BC 0031301C  7F A5 EB 78 */	mr r5, r29
/* 803160C0 00313020  3B DE 00 01 */	addi r30, r30, 1
/* 803160C4 00313024  7F E4 FB 78 */	mr r4, r31
/* 803160C8 00313028  4B FF FC C5 */	bl IterateSearch__13CPVSVisOctreeCFUcRC9CVector3f
/* 803160CC 0031302C  2C 03 FF FF */	cmpwi r3, -1
/* 803160D0 00313030  40 82 FF 20 */	bne lbl_80315FF0
/* 803160D4 00313034  57 E0 06 F8 */	rlwinm r0, r31, 0, 0x1b, 0x1c
/* 803160D8 00313038  2C 00 00 10 */	cmpwi r0, 0x10
/* 803160DC 0031303C  41 82 00 98 */	beq lbl_80316174
/* 803160E0 00313040  40 80 00 10 */	bge lbl_803160F0
/* 803160E4 00313044  2C 00 00 08 */	cmpwi r0, 8
/* 803160E8 00313048  41 82 00 7C */	beq lbl_80316164
/* 803160EC 0031304C  48 00 00 98 */	b lbl_80316184
lbl_803160F0:
/* 803160F0 00313050  2C 00 00 18 */	cmpwi r0, 0x18
/* 803160F4 00313054  41 82 00 08 */	beq lbl_803160FC
/* 803160F8 00313058  48 00 00 8C */	b lbl_80316184
lbl_803160FC:
/* 803160FC 0031305C  7C 7E 00 D0 */	neg r3, r30
/* 80316100 00313060  38 00 00 00 */	li r0, 0
/* 80316104 00313064  7C 63 F3 78 */	or r3, r3, r30
/* 80316108 00313068  93 C1 00 14 */	stw r30, 0x14(r1)
/* 8031610C 0031306C  54 63 0F FE */	srwi r3, r3, 0x1f
/* 80316110 00313070  80 9C 00 18 */	lwz r4, 0x18(r28)
/* 80316114 00313074  98 61 00 10 */	stb r3, 0x10(r1)
/* 80316118 00313078  7F 63 DB 78 */	mr r3, r27
/* 8031611C 0031307C  80 BC 00 1C */	lwz r5, 0x1c(r28)
/* 80316120 00313080  38 C1 00 08 */	addi r6, r1, 8
/* 80316124 00313084  98 01 00 10 */	stb r0, 0x10(r1)
/* 80316128 00313088  98 01 00 08 */	stb r0, 8(r1)
/* 8031612C 0031308C  93 C1 00 0C */	stw r30, 0xc(r1)
/* 80316130 00313090  98 01 00 10 */	stb r0, 0x10(r1)
/* 80316134 00313094  48 00 02 69 */	bl SetFromMemory__10CPVSVisSetFiiPCc
/* 80316138 00313098  88 01 00 08 */	lbz r0, 8(r1)
/* 8031613C 0031309C  28 00 00 00 */	cmplwi r0, 0
/* 80316140 003130A0  41 82 00 0C */	beq lbl_8031614C
/* 80316144 003130A4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80316148 003130A8  4B FF F7 E9 */	bl Free__7CMemoryFPCv
lbl_8031614C:
/* 8031614C 003130AC  88 01 00 10 */	lbz r0, 0x10(r1)
/* 80316150 003130B0  28 00 00 00 */	cmplwi r0, 0
/* 80316154 003130B4  41 82 00 3C */	beq lbl_80316190
/* 80316158 003130B8  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8031615C 003130BC  4B FF F7 D5 */	bl Free__7CMemoryFPCv
/* 80316160 003130C0  48 00 00 30 */	b lbl_80316190
lbl_80316164:
/* 80316164 003130C4  7F 63 DB 78 */	mr r3, r27
/* 80316168 003130C8  38 80 00 02 */	li r4, 2
/* 8031616C 003130CC  48 00 02 15 */	bl Reset__10CPVSVisSetFi
/* 80316170 003130D0  48 00 00 20 */	b lbl_80316190
lbl_80316174:
/* 80316174 003130D4  7F 63 DB 78 */	mr r3, r27
/* 80316178 003130D8  38 80 00 00 */	li r4, 0
/* 8031617C 003130DC  48 00 02 05 */	bl Reset__10CPVSVisSetFi
/* 80316180 003130E0  48 00 00 10 */	b lbl_80316190
lbl_80316184:
/* 80316184 003130E4  7F 63 DB 78 */	mr r3, r27
/* 80316188 003130E8  38 80 00 02 */	li r4, 2
/* 8031618C 003130EC  48 00 01 F5 */	bl Reset__10CPVSVisSetFi
lbl_80316190:
/* 80316190 003130F0  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 80316194 003130F4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80316198 003130F8  7C 08 03 A6 */	mtlr r0
/* 8031619C 003130FC  38 21 00 30 */	addi r1, r1, 0x30
/* 803161A0 00313100  4E 80 00 20 */	blr 

.global MakePVSVisOctree__13CPVSVisOctreeFPCci
MakePVSVisOctree__13CPVSVisOctreeFPCci:
/* 803161A4 00313104  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 803161A8 00313108  7C 08 02 A6 */	mflr r0
/* 803161AC 0031310C  90 01 00 64 */	stw r0, 0x64(r1)
/* 803161B0 00313110  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 803161B4 00313114  93 C1 00 58 */	stw r30, 0x58(r1)
/* 803161B8 00313118  93 A1 00 54 */	stw r29, 0x54(r1)
/* 803161BC 0031311C  7C 9D 23 78 */	mr r29, r4
/* 803161C0 00313120  93 81 00 50 */	stw r28, 0x50(r1)
/* 803161C4 00313124  7C 7C 1B 78 */	mr r28, r3
/* 803161C8 00313128  38 61 00 20 */	addi r3, r1, 0x20
/* 803161CC 0031312C  48 02 90 01 */	bl __ct__15CMemoryInStreamFPCvUl
/* 803161D0 00313130  38 61 00 08 */	addi r3, r1, 8
/* 803161D4 00313134  38 81 00 20 */	addi r4, r1, 0x20
/* 803161D8 00313138  48 02 23 65 */	bl __ct__6CAABoxFR12CInputStream
/* 803161DC 0031313C  38 61 00 20 */	addi r3, r1, 0x20
/* 803161E0 00313140  48 02 8A A5 */	bl ReadLong__12CInputStreamFv
/* 803161E4 00313144  7C 7F 1B 78 */	mr r31, r3
/* 803161E8 00313148  38 61 00 20 */	addi r3, r1, 0x20
/* 803161EC 0031314C  48 02 8A 99 */	bl ReadLong__12CInputStreamFv
/* 803161F0 00313150  7C 7E 1B 78 */	mr r30, r3
/* 803161F4 00313154  38 61 00 20 */	addi r3, r1, 0x20
/* 803161F8 00313158  48 02 8A 8D */	bl ReadLong__12CInputStreamFv
/* 803161FC 0031315C  80 01 00 38 */	lwz r0, 0x38(r1)
/* 80316200 00313160  7F 83 E3 78 */	mr r3, r28
/* 80316204 00313164  7F E5 FB 78 */	mr r5, r31
/* 80316208 00313168  7F C6 F3 78 */	mr r6, r30
/* 8031620C 0031316C  38 81 00 08 */	addi r4, r1, 8
/* 80316210 00313170  7C FD 02 14 */	add r7, r29, r0
/* 80316214 00313174  48 00 00 3D */	bl __ct__13CPVSVisOctreeFRC6CAABoxiiPCc
/* 80316218 00313178  3C 80 80 3F */	lis r4, __vt__15CMemoryInStream@ha
/* 8031621C 0031317C  38 61 00 20 */	addi r3, r1, 0x20
/* 80316220 00313180  38 04 E3 98 */	addi r0, r4, __vt__15CMemoryInStream@l
/* 80316224 00313184  38 80 00 00 */	li r4, 0
/* 80316228 00313188  90 01 00 20 */	stw r0, 0x20(r1)
/* 8031622C 0031318C  48 02 8E 81 */	bl __dt__12CInputStreamFv
/* 80316230 00313190  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80316234 00313194  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 80316238 00313198  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 8031623C 0031319C  83 A1 00 54 */	lwz r29, 0x54(r1)
/* 80316240 003131A0  83 81 00 50 */	lwz r28, 0x50(r1)
/* 80316244 003131A4  7C 08 03 A6 */	mtlr r0
/* 80316248 003131A8  38 21 00 60 */	addi r1, r1, 0x60
/* 8031624C 003131AC  4E 80 00 20 */	blr 

.global __ct__13CPVSVisOctreeFRC6CAABoxiiPCc
__ct__13CPVSVisOctreeFRC6CAABoxiiPCc:
/* 80316250 003131B0  C0 04 00 00 */	lfs f0, 0(r4)
/* 80316254 003131B4  7D 07 00 D0 */	neg r8, r7
/* 80316258 003131B8  7D 08 3B 78 */	or r8, r8, r7
/* 8031625C 003131BC  38 00 00 00 */	li r0, 0
/* 80316260 003131C0  D0 03 00 00 */	stfs f0, 0(r3)
/* 80316264 003131C4  55 08 0F FE */	srwi r8, r8, 0x1f
/* 80316268 003131C8  C0 04 00 04 */	lfs f0, 4(r4)
/* 8031626C 003131CC  D0 03 00 04 */	stfs f0, 4(r3)
/* 80316270 003131D0  C0 04 00 08 */	lfs f0, 8(r4)
/* 80316274 003131D4  D0 03 00 08 */	stfs f0, 8(r3)
/* 80316278 003131D8  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 8031627C 003131DC  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80316280 003131E0  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80316284 003131E4  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80316288 003131E8  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 8031628C 003131EC  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80316290 003131F0  90 A3 00 18 */	stw r5, 0x18(r3)
/* 80316294 003131F4  90 C3 00 1C */	stw r6, 0x1c(r3)
/* 80316298 003131F8  99 03 00 20 */	stb r8, 0x20(r3)
/* 8031629C 003131FC  90 E3 00 24 */	stw r7, 0x24(r3)
/* 803162A0 00313200  C0 03 00 00 */	lfs f0, 0(r3)
/* 803162A4 00313204  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 803162A8 00313208  C0 03 00 04 */	lfs f0, 4(r3)
/* 803162AC 0031320C  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 803162B0 00313210  C0 03 00 08 */	lfs f0, 8(r3)
/* 803162B4 00313214  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 803162B8 00313218  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 803162BC 0031321C  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 803162C0 00313220  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 803162C4 00313224  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 803162C8 00313228  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 803162CC 0031322C  D0 03 00 40 */	stfs f0, 0x40(r3)
/* 803162D0 00313230  98 03 00 20 */	stb r0, 0x20(r3)
/* 803162D4 00313234  4E 80 00 20 */	blr 

.global GetVisible__10CPVSVisSetCFi
GetVisible__10CPVSVisSetCFi:
/* 803162D8 00313238  80 03 00 00 */	lwz r0, 0(r3)
/* 803162DC 0031323C  2C 00 00 01 */	cmpwi r0, 1
/* 803162E0 00313240  41 82 00 0C */	beq lbl_803162EC
/* 803162E4 00313244  7C 03 03 78 */	mr r3, r0
/* 803162E8 00313248  4E 80 00 20 */	blr 
lbl_803162EC:
/* 803162EC 0031324C  80 A3 00 08 */	lwz r5, 8(r3)
/* 803162F0 00313250  80 03 00 04 */	lwz r0, 4(r3)
/* 803162F4 00313254  7C 05 00 50 */	subf r0, r5, r0
/* 803162F8 00313258  7C 04 00 00 */	cmpw r4, r0
/* 803162FC 0031325C  40 80 00 34 */	bge lbl_80316330
/* 80316300 00313260  7C 80 1E 70 */	srawi r0, r4, 3
/* 80316304 00313264  80 C3 00 10 */	lwz r6, 0x10(r3)
/* 80316308 00313268  7C A0 01 94 */	addze r5, r0
/* 8031630C 0031326C  54 80 07 7E */	clrlwi r0, r4, 0x1d
/* 80316310 00313270  38 60 00 01 */	li r3, 1
/* 80316314 00313274  7C 86 28 AE */	lbzx r4, r6, r5
/* 80316318 00313278  7C 60 00 30 */	slw r0, r3, r0
/* 8031631C 0031327C  38 60 00 00 */	li r3, 0
/* 80316320 00313280  7C 80 00 39 */	and. r0, r4, r0
/* 80316324 00313284  4D 82 00 20 */	beqlr 
/* 80316328 00313288  38 60 00 02 */	li r3, 2
/* 8031632C 0031328C  4E 80 00 20 */	blr 
lbl_80316330:
/* 80316330 00313290  7C 00 20 50 */	subf r0, r0, r4
/* 80316334 00313294  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80316338 00313298  7C 04 02 14 */	add r0, r4, r0
/* 8031633C 0031329C  54 04 07 7E */	clrlwi r4, r0, 0x1d
/* 80316340 003132A0  7C 00 1E 70 */	srawi r0, r0, 3
/* 80316344 003132A4  7C 00 01 94 */	addze r0, r0
/* 80316348 003132A8  2C 04 00 07 */	cmpwi r4, 7
/* 8031634C 003132AC  7C 63 02 14 */	add r3, r3, r0
/* 80316350 003132B0  40 80 00 1C */	bge lbl_8031636C
/* 80316354 003132B4  38 00 00 03 */	li r0, 3
/* 80316358 003132B8  88 63 00 00 */	lbz r3, 0(r3)
/* 8031635C 003132BC  7C 00 20 30 */	slw r0, r0, r4
/* 80316360 003132C0  7C 60 00 38 */	and r0, r3, r0
/* 80316364 003132C4  7C 03 26 30 */	sraw r3, r0, r4
/* 80316368 003132C8  4E 80 00 20 */	blr 
lbl_8031636C:
/* 8031636C 003132CC  88 03 00 01 */	lbz r0, 1(r3)
/* 80316370 003132D0  88 83 00 00 */	lbz r4, 0(r3)
/* 80316374 003132D4  54 03 0F BC */	rlwinm r3, r0, 1, 0x1e, 0x1e
/* 80316378 003132D8  50 83 CF FE */	rlwimi r3, r4, 0x19, 0x1f, 0x1f
/* 8031637C 003132DC  4E 80 00 20 */	blr 

.global Reset__10CPVSVisSetFi
Reset__10CPVSVisSetFi:
/* 80316380 003132E0  90 83 00 00 */	stw r4, 0(r3)
/* 80316384 003132E4  38 00 00 00 */	li r0, 0
/* 80316388 003132E8  90 03 00 04 */	stw r0, 4(r3)
/* 8031638C 003132EC  90 03 00 08 */	stw r0, 8(r3)
/* 80316390 003132F0  98 03 00 0C */	stb r0, 0xc(r3)
/* 80316394 003132F4  90 03 00 10 */	stw r0, 0x10(r3)
/* 80316398 003132F8  4E 80 00 20 */	blr 

.global SetFromMemory__10CPVSVisSetFiiPCc
SetFromMemory__10CPVSVisSetFiiPCc:
/* 8031639C 003132FC  38 00 00 01 */	li r0, 1
/* 803163A0 00313300  90 03 00 00 */	stw r0, 0(r3)
/* 803163A4 00313304  38 00 00 00 */	li r0, 0
/* 803163A8 00313308  90 83 00 04 */	stw r4, 4(r3)
/* 803163AC 0031330C  90 A3 00 08 */	stw r5, 8(r3)
/* 803163B0 00313310  88 86 00 00 */	lbz r4, 0(r6)
/* 803163B4 00313314  98 83 00 0C */	stb r4, 0xc(r3)
/* 803163B8 00313318  80 86 00 04 */	lwz r4, 4(r6)
/* 803163BC 0031331C  90 83 00 10 */	stw r4, 0x10(r3)
/* 803163C0 00313320  98 06 00 00 */	stb r0, 0(r6)
/* 803163C4 00313324  4E 80 00 20 */	blr 