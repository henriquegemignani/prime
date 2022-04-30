.include "macros.inc"

.section .text, "ax"  # 0x80003640 - 0x803CB1C0

.global __ml__FdRC9CVector3d
__ml__FdRC9CVector3d:
/* 80314358 003112B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8031435C 003112BC  7C 08 02 A6 */	mflr r0
/* 80314360 003112C0  FC 60 08 90 */	fmr f3, f1
/* 80314364 003112C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80314368 003112C8  C8 24 00 00 */	lfd f1, 0(r4)
/* 8031436C 003112CC  C8 44 00 08 */	lfd f2, 8(r4)
/* 80314370 003112D0  C8 04 00 10 */	lfd f0, 0x10(r4)
/* 80314374 003112D4  FC 23 00 72 */	fmul f1, f3, f1
/* 80314378 003112D8  FC 43 00 B2 */	fmul f2, f3, f2
/* 8031437C 003112DC  FC 63 00 32 */	fmul f3, f3, f0
/* 80314380 003112E0  48 00 02 21 */	bl __ct__9CVector3dFddd
/* 80314384 003112E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80314388 003112E8  7C 08 03 A6 */	mtlr r0
/* 8031438C 003112EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80314390 003112F0  4E 80 00 20 */	blr 

.global __mi__FRC9CVector3dRC9CVector3d
__mi__FRC9CVector3dRC9CVector3d:
/* 80314394 003112F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80314398 003112F8  7C 08 02 A6 */	mflr r0
/* 8031439C 003112FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803143A0 00311300  C8 24 00 00 */	lfd f1, 0(r4)
/* 803143A4 00311304  C8 05 00 00 */	lfd f0, 0(r5)
/* 803143A8 00311308  C8 84 00 08 */	lfd f4, 8(r4)
/* 803143AC 0031130C  C8 45 00 08 */	lfd f2, 8(r5)
/* 803143B0 00311310  FC 21 00 28 */	fsub f1, f1, f0
/* 803143B4 00311314  C8 64 00 10 */	lfd f3, 0x10(r4)
/* 803143B8 00311318  C8 05 00 10 */	lfd f0, 0x10(r5)
/* 803143BC 0031131C  FC 44 10 28 */	fsub f2, f4, f2
/* 803143C0 00311320  FC 63 00 28 */	fsub f3, f3, f0
/* 803143C4 00311324  48 00 01 DD */	bl __ct__9CVector3dFddd
/* 803143C8 00311328  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803143CC 0031132C  7C 08 03 A6 */	mtlr r0
/* 803143D0 00311330  38 21 00 10 */	addi r1, r1, 0x10
/* 803143D4 00311334  4E 80 00 20 */	blr 

.global __pl__FRC9CVector3dRC9CVector3d
__pl__FRC9CVector3dRC9CVector3d:
/* 803143D8 00311338  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803143DC 0031133C  7C 08 02 A6 */	mflr r0
/* 803143E0 00311340  90 01 00 14 */	stw r0, 0x14(r1)
/* 803143E4 00311344  C8 24 00 00 */	lfd f1, 0(r4)
/* 803143E8 00311348  C8 05 00 00 */	lfd f0, 0(r5)
/* 803143EC 0031134C  C8 84 00 08 */	lfd f4, 8(r4)
/* 803143F0 00311350  C8 45 00 08 */	lfd f2, 8(r5)
/* 803143F4 00311354  FC 21 00 2A */	fadd f1, f1, f0
/* 803143F8 00311358  C8 64 00 10 */	lfd f3, 0x10(r4)
/* 803143FC 0031135C  C8 05 00 10 */	lfd f0, 0x10(r5)
/* 80314400 00311360  FC 44 10 2A */	fadd f2, f4, f2
/* 80314404 00311364  FC 63 00 2A */	fadd f3, f3, f0
/* 80314408 00311368  48 00 01 99 */	bl __ct__9CVector3dFddd
/* 8031440C 0031136C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80314410 00311370  7C 08 03 A6 */	mtlr r0
/* 80314414 00311374  38 21 00 10 */	addi r1, r1, 0x10
/* 80314418 00311378  4E 80 00 20 */	blr 

.global Cross__9CVector3dFRC9CVector3dRC9CVector3d
Cross__9CVector3dFRC9CVector3dRC9CVector3d:
/* 8031441C 0031137C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80314420 00311380  7C 08 02 A6 */	mflr r0
/* 80314424 00311384  90 01 00 14 */	stw r0, 0x14(r1)
/* 80314428 00311388  C8 84 00 00 */	lfd f4, 0(r4)
/* 8031442C 0031138C  C9 05 00 10 */	lfd f8, 0x10(r5)
/* 80314430 00311390  C8 A4 00 08 */	lfd f5, 8(r4)
/* 80314434 00311394  C8 C5 00 00 */	lfd f6, 0(r5)
/* 80314438 00311398  FC 28 01 32 */	fmul f1, f8, f4
/* 8031443C 0031139C  C8 44 00 10 */	lfd f2, 0x10(r4)
/* 80314440 003113A0  C8 E5 00 08 */	lfd f7, 8(r5)
/* 80314444 003113A4  FC 06 01 72 */	fmul f0, f6, f5
/* 80314448 003113A8  FC 67 00 B2 */	fmul f3, f7, f2
/* 8031444C 003113AC  FC 42 09 B8 */	fmsub f2, f2, f6, f1
/* 80314450 003113B0  FC 25 1A 38 */	fmsub f1, f5, f8, f3
/* 80314454 003113B4  FC 64 01 F8 */	fmsub f3, f4, f7, f0
/* 80314458 003113B8  48 00 01 49 */	bl __ct__9CVector3dFddd
/* 8031445C 003113BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80314460 003113C0  7C 08 03 A6 */	mtlr r0
/* 80314464 003113C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80314468 003113C8  4E 80 00 20 */	blr 

.global Dot__9CVector3dFRC9CVector3dRC9CVector3d
Dot__9CVector3dFRC9CVector3dRC9CVector3d:
/* 8031446C 003113CC  C8 23 00 00 */	lfd f1, 0(r3)
/* 80314470 003113D0  C8 04 00 00 */	lfd f0, 0(r4)
/* 80314474 003113D4  C8 83 00 08 */	lfd f4, 8(r3)
/* 80314478 003113D8  FC 21 00 32 */	fmul f1, f1, f0
/* 8031447C 003113DC  C8 64 00 08 */	lfd f3, 8(r4)
/* 80314480 003113E0  C8 43 00 10 */	lfd f2, 0x10(r3)
/* 80314484 003113E4  C8 04 00 10 */	lfd f0, 0x10(r4)
/* 80314488 003113E8  FC 24 08 FA */	fmadd f1, f4, f3, f1
/* 8031448C 003113EC  FC 22 08 3A */	fmadd f1, f2, f0, f1
/* 80314490 003113F0  4E 80 00 20 */	blr 

.global AsCVector3f__9CVector3dCFv
AsCVector3f__9CVector3dCFv:
/* 80314494 003113F4  C8 04 00 00 */	lfd f0, 0(r4)
/* 80314498 003113F8  C8 44 00 08 */	lfd f2, 8(r4)
/* 8031449C 003113FC  FC 00 00 18 */	frsp f0, f0
/* 803144A0 00311400  C8 24 00 10 */	lfd f1, 0x10(r4)
/* 803144A4 00311404  FC 40 10 18 */	frsp f2, f2
/* 803144A8 00311408  FC 20 08 18 */	frsp f1, f1
/* 803144AC 0031140C  D0 03 00 00 */	stfs f0, 0(r3)
/* 803144B0 00311410  D0 43 00 04 */	stfs f2, 4(r3)
/* 803144B4 00311414  D0 23 00 08 */	stfs f1, 8(r3)
/* 803144B8 00311418  4E 80 00 20 */	blr 

.global AsNormalized__9CVector3dCFv
AsNormalized__9CVector3dCFv:
/* 803144BC 0031141C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803144C0 00311420  7C 08 02 A6 */	mflr r0
/* 803144C4 00311424  90 01 00 14 */	stw r0, 0x14(r1)
/* 803144C8 00311428  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803144CC 0031142C  7C 9F 23 78 */	mr r31, r4
/* 803144D0 00311430  93 C1 00 08 */	stw r30, 8(r1)
/* 803144D4 00311434  7C 7E 1B 78 */	mr r30, r3
/* 803144D8 00311438  7F E3 FB 78 */	mr r3, r31
/* 803144DC 0031143C  48 00 00 69 */	bl Magnitude__9CVector3dCFv
/* 803144E0 00311440  C8 02 C9 08 */	lfd f0, lbl_805AE628@sda21(r2)
/* 803144E4 00311444  7F C3 F3 78 */	mr r3, r30
/* 803144E8 00311448  C8 7F 00 00 */	lfd f3, 0(r31)
/* 803144EC 0031144C  FC 80 08 24 */	fdiv f4, f0, f1
/* 803144F0 00311450  C8 5F 00 08 */	lfd f2, 8(r31)
/* 803144F4 00311454  C8 1F 00 10 */	lfd f0, 0x10(r31)
/* 803144F8 00311458  FC 23 01 32 */	fmul f1, f3, f4
/* 803144FC 0031145C  FC 42 01 32 */	fmul f2, f2, f4
/* 80314500 00311460  FC 60 01 32 */	fmul f3, f0, f4
/* 80314504 00311464  48 00 00 9D */	bl __ct__9CVector3dFddd
/* 80314508 00311468  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8031450C 0031146C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80314510 00311470  83 C1 00 08 */	lwz r30, 8(r1)
/* 80314514 00311474  7C 08 03 A6 */	mtlr r0
/* 80314518 00311478  38 21 00 10 */	addi r1, r1, 0x10
/* 8031451C 0031147C  4E 80 00 20 */	blr 

.global MagSquared__9CVector3dCFv
MagSquared__9CVector3dCFv:
/* 80314520 00311480  C8 03 00 00 */	lfd f0, 0(r3)
/* 80314524 00311484  C8 43 00 08 */	lfd f2, 8(r3)
/* 80314528 00311488  FC 20 00 32 */	fmul f1, f0, f0
/* 8031452C 0031148C  C8 03 00 10 */	lfd f0, 0x10(r3)
/* 80314530 00311490  FC 42 00 B2 */	fmul f2, f2, f2
/* 80314534 00311494  FC 00 00 32 */	fmul f0, f0, f0
/* 80314538 00311498  FC 21 10 2A */	fadd f1, f1, f2
/* 8031453C 0031149C  FC 21 00 2A */	fadd f1, f1, f0
/* 80314540 003114A0  4E 80 00 20 */	blr 

.global Magnitude__9CVector3dCFv
Magnitude__9CVector3dCFv:
/* 80314544 003114A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80314548 003114A8  7C 08 02 A6 */	mflr r0
/* 8031454C 003114AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80314550 003114B0  C8 03 00 00 */	lfd f0, 0(r3)
/* 80314554 003114B4  C8 43 00 08 */	lfd f2, 8(r3)
/* 80314558 003114B8  FC 20 00 32 */	fmul f1, f0, f0
/* 8031455C 003114BC  C8 03 00 10 */	lfd f0, 0x10(r3)
/* 80314560 003114C0  FC 42 00 B2 */	fmul f2, f2, f2
/* 80314564 003114C4  FC 00 00 32 */	fmul f0, f0, f0
/* 80314568 003114C8  FC 21 10 2A */	fadd f1, f1, f2
/* 8031456C 003114CC  FC 21 00 2A */	fadd f1, f1, f0
/* 80314570 003114D0  48 00 0F 01 */	bl SqrtD__5CMathFd
/* 80314574 003114D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80314578 003114D8  7C 08 03 A6 */	mtlr r0
/* 8031457C 003114DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80314580 003114E0  4E 80 00 20 */	blr 

.global __ct__9CVector3dFRC9CVector3f
__ct__9CVector3dFRC9CVector3f:
/* 80314584 003114E4  C0 04 00 00 */	lfs f0, 0(r4)
/* 80314588 003114E8  D8 03 00 00 */	stfd f0, 0(r3)
/* 8031458C 003114EC  C0 04 00 04 */	lfs f0, 4(r4)
/* 80314590 003114F0  D8 03 00 08 */	stfd f0, 8(r3)
/* 80314594 003114F4  C0 04 00 08 */	lfs f0, 8(r4)
/* 80314598 003114F8  D8 03 00 10 */	stfd f0, 0x10(r3)
/* 8031459C 003114FC  4E 80 00 20 */	blr 

.global __ct__9CVector3dFddd
__ct__9CVector3dFddd:
/* 803145A0 00311500  D8 23 00 00 */	stfd f1, 0(r3)
/* 803145A4 00311504  D8 43 00 08 */	stfd f2, 8(r3)
/* 803145A8 00311508  D8 63 00 10 */	stfd f3, 0x10(r3)
/* 803145AC 0031150C  4E 80 00 20 */	blr