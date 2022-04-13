.include "macros.inc"

.section .text, "ax"  # 0x80003640 - 0x803CB1C0

.global CalculateFluidTextureOffset__14CFluidUVMotionCFfPA2_f
CalculateFluidTextureOffset__14CFluidUVMotionCFfPA2_f:
/* 8011CAE4 00119A44  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8011CAE8 00119A48  7C 08 02 A6 */	mflr r0
/* 8011CAEC 00119A4C  90 01 00 94 */	stw r0, 0x94(r1)
/* 8011CAF0 00119A50  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8011CAF4 00119A54  F3 E1 00 88 */	psq_st f31, 136(r1), 0, qr0
/* 8011CAF8 00119A58  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 8011CAFC 00119A5C  F3 C1 00 78 */	psq_st f30, 120(r1), 0, qr0
/* 8011CB00 00119A60  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 8011CB04 00119A64  F3 A1 00 68 */	psq_st f29, 104(r1), 0, qr0
/* 8011CB08 00119A68  DB 81 00 50 */	stfd f28, 0x50(r1)
/* 8011CB0C 00119A6C  F3 81 00 58 */	psq_st f28, 88(r1), 0, qr0
/* 8011CB10 00119A70  DB 61 00 40 */	stfd f27, 0x40(r1)
/* 8011CB14 00119A74  F3 61 00 48 */	psq_st f27, 72(r1), 0, qr0
/* 8011CB18 00119A78  DB 41 00 30 */	stfd f26, 0x30(r1)
/* 8011CB1C 00119A7C  F3 41 00 38 */	psq_st f26, 56(r1), 0, qr0
/* 8011CB20 00119A80  DB 21 00 20 */	stfd f25, 0x20(r1)
/* 8011CB24 00119A84  F3 21 00 28 */	psq_st f25, 40(r1), 0, qr0
/* 8011CB28 00119A88  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 8011CB2C 00119A8C  7C 7B 1B 78 */	mr r27, r3
/* 8011CB30 00119A90  FF E0 08 90 */	fmr f31, f1
/* 8011CB34 00119A94  C0 03 00 4C */	lfs f0, 0x4c(r3)
/* 8011CB38 00119A98  7C 9C 23 78 */	mr r28, r4
/* 8011CB3C 00119A9C  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 8011CB40 00119AA0  EF BF 00 32 */	fmuls f29, f31, f0
/* 8011CB44 00119AA4  48 1F 82 01 */	bl FastCosR__5CMathFf
/* 8011CB48 00119AA8  EF 9D 00 72 */	fmuls f28, f29, f1
/* 8011CB4C 00119AAC  C0 3B 00 50 */	lfs f1, 0x50(r27)
/* 8011CB50 00119AB0  48 1F 82 A1 */	bl FastSinR__5CMathFf
/* 8011CB54 00119AB4  EF BD 00 72 */	fmuls f29, f29, f1
/* 8011CB58 00119AB8  7F 9D E3 78 */	mr r29, r28
/* 8011CB5C 00119ABC  3B 80 00 00 */	li r28, 0
/* 8011CB60 00119AC0  3B E0 00 00 */	li r31, 0
/* 8011CB64 00119AC4  48 00 01 08 */	b lbl_8011CC6C
lbl_8011CB68:
/* 8011CB68 00119AC8  7F DB FA 14 */	add r30, r27, r31
/* 8011CB6C 00119ACC  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8011CB70 00119AD0  EF DF 00 32 */	fmuls f30, f31, f0
/* 8011CB74 00119AD4  FC 20 F0 90 */	fmr f1, f30
/* 8011CB78 00119AD8  48 27 79 4D */	bl floor
/* 8011CB7C 00119ADC  FC 00 08 18 */	frsp f0, f1
/* 8011CB80 00119AE0  80 1E 00 04 */	lwz r0, 4(r30)
/* 8011CB84 00119AE4  2C 00 00 01 */	cmpwi r0, 1
/* 8011CB88 00119AE8  EC 3E 00 28 */	fsubs f1, f30, f0
/* 8011CB8C 00119AEC  41 82 00 2C */	beq lbl_8011CBB8
/* 8011CB90 00119AF0  40 80 00 10 */	bge lbl_8011CBA0
/* 8011CB94 00119AF4  2C 00 00 00 */	cmpwi r0, 0
/* 8011CB98 00119AF8  40 80 00 14 */	bge lbl_8011CBAC
/* 8011CB9C 00119AFC  48 00 00 64 */	b lbl_8011CC00
lbl_8011CBA0:
/* 8011CBA0 00119B00  2C 00 00 03 */	cmpwi r0, 3
/* 8011CBA4 00119B04  40 80 00 5C */	bge lbl_8011CC00
/* 8011CBA8 00119B08  48 00 00 3C */	b lbl_8011CBE4
lbl_8011CBAC:
/* 8011CBAC 00119B0C  FF 40 F0 90 */	fmr f26, f30
/* 8011CBB0 00119B10  C3 62 97 18 */	lfs f27, lbl_805AB438@sda21(r2)
/* 8011CBB4 00119B14  48 00 00 54 */	b lbl_8011CC08
lbl_8011CBB8:
/* 8011CBB8 00119B18  C0 02 97 1C */	lfs f0, lbl_805AB43C@sda21(r2)
/* 8011CBBC 00119B1C  EF C0 00 72 */	fmuls f30, f0, f1
/* 8011CBC0 00119B20  FC 20 F0 90 */	fmr f1, f30
/* 8011CBC4 00119B24  48 1F 82 2D */	bl FastSinR__5CMathFf
/* 8011CBC8 00119B28  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 8011CBCC 00119B2C  EF 60 00 72 */	fmuls f27, f0, f1
/* 8011CBD0 00119B30  FC 20 F0 90 */	fmr f1, f30
/* 8011CBD4 00119B34  48 1F 81 71 */	bl FastCosR__5CMathFf
/* 8011CBD8 00119B38  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 8011CBDC 00119B3C  EF 40 00 72 */	fmuls f26, f0, f1
/* 8011CBE0 00119B40  48 00 00 28 */	b lbl_8011CC08
lbl_8011CBE4:
/* 8011CBE4 00119B44  C0 02 97 1C */	lfs f0, lbl_805AB43C@sda21(r2)
/* 8011CBE8 00119B48  C3 62 97 18 */	lfs f27, lbl_805AB438@sda21(r2)
/* 8011CBEC 00119B4C  EC 20 00 72 */	fmuls f1, f0, f1
/* 8011CBF0 00119B50  48 1F 81 55 */	bl FastCosR__5CMathFf
/* 8011CBF4 00119B54  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 8011CBF8 00119B58  EF 40 00 72 */	fmuls f26, f0, f1
/* 8011CBFC 00119B5C  48 00 00 0C */	b lbl_8011CC08
lbl_8011CC00:
/* 8011CC00 00119B60  C3 42 97 18 */	lfs f26, lbl_805AB438@sda21(r2)
/* 8011CC04 00119B64  FF 60 D0 90 */	fmr f27, f26
lbl_8011CC08:
/* 8011CC08 00119B68  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 8011CC0C 00119B6C  48 1F 81 39 */	bl FastCosR__5CMathFf
/* 8011CC10 00119B70  EF DB E8 7A */	fmadds f30, f27, f1, f29
/* 8011CC14 00119B74  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 8011CC18 00119B78  48 1F 81 D9 */	bl FastSinR__5CMathFf
/* 8011CC1C 00119B7C  EF 3A F0 7A */	fmadds f25, f26, f1, f30
/* 8011CC20 00119B80  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 8011CC24 00119B84  48 1F 81 21 */	bl FastCosR__5CMathFf
/* 8011CC28 00119B88  EF DA E0 7A */	fmadds f30, f26, f1, f28
/* 8011CC2C 00119B8C  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 8011CC30 00119B90  48 1F 81 C1 */	bl FastSinR__5CMathFf
/* 8011CC34 00119B94  EF 5B F0 7A */	fmadds f26, f27, f1, f30
/* 8011CC38 00119B98  FC 20 C8 90 */	fmr f1, f25
/* 8011CC3C 00119B9C  48 27 78 89 */	bl floor
/* 8011CC40 00119BA0  FC 00 08 18 */	frsp f0, f1
/* 8011CC44 00119BA4  FC 20 D0 90 */	fmr f1, f26
/* 8011CC48 00119BA8  EC 19 00 28 */	fsubs f0, f25, f0
/* 8011CC4C 00119BAC  D0 1D 00 00 */	stfs f0, 0(r29)
/* 8011CC50 00119BB0  48 27 78 75 */	bl floor
/* 8011CC54 00119BB4  FC 00 08 18 */	frsp f0, f1
/* 8011CC58 00119BB8  3B 9C 00 01 */	addi r28, r28, 1
/* 8011CC5C 00119BBC  3B FF 00 18 */	addi r31, r31, 0x18
/* 8011CC60 00119BC0  EC 1A 00 28 */	fsubs f0, f26, f0
/* 8011CC64 00119BC4  D0 1D 00 04 */	stfs f0, 4(r29)
/* 8011CC68 00119BC8  3B BD 00 08 */	addi r29, r29, 8
lbl_8011CC6C:
/* 8011CC6C 00119BCC  80 1B 00 00 */	lwz r0, 0(r27)
/* 8011CC70 00119BD0  7C 1C 00 00 */	cmpw r28, r0
/* 8011CC74 00119BD4  41 80 FE F4 */	blt lbl_8011CB68
/* 8011CC78 00119BD8  E3 E1 00 88 */	psq_l f31, 136(r1), 0, qr0
/* 8011CC7C 00119BDC  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8011CC80 00119BE0  E3 C1 00 78 */	psq_l f30, 120(r1), 0, qr0
/* 8011CC84 00119BE4  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 8011CC88 00119BE8  E3 A1 00 68 */	psq_l f29, 104(r1), 0, qr0
/* 8011CC8C 00119BEC  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 8011CC90 00119BF0  E3 81 00 58 */	psq_l f28, 88(r1), 0, qr0
/* 8011CC94 00119BF4  CB 81 00 50 */	lfd f28, 0x50(r1)
/* 8011CC98 00119BF8  E3 61 00 48 */	psq_l f27, 72(r1), 0, qr0
/* 8011CC9C 00119BFC  CB 61 00 40 */	lfd f27, 0x40(r1)
/* 8011CCA0 00119C00  E3 41 00 38 */	psq_l f26, 56(r1), 0, qr0
/* 8011CCA4 00119C04  CB 41 00 30 */	lfd f26, 0x30(r1)
/* 8011CCA8 00119C08  E3 21 00 28 */	psq_l f25, 40(r1), 0, qr0
/* 8011CCAC 00119C0C  CB 21 00 20 */	lfd f25, 0x20(r1)
/* 8011CCB0 00119C10  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 8011CCB4 00119C14  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8011CCB8 00119C18  7C 08 03 A6 */	mtlr r0
/* 8011CCBC 00119C1C  38 21 00 90 */	addi r1, r1, 0x90
/* 8011CCC0 00119C20  4E 80 00 20 */	blr 

.global __ct__14CFluidUVMotionFffRCQ214CFluidUVMotion17SFluidLayerMotionRCQ214CFluidUVMotion17SFluidLayerMotionRCQ214CFluidUVMotion17SFluidLayerMotion
__ct__14CFluidUVMotionFffRCQ214CFluidUVMotion17SFluidLayerMotionRCQ214CFluidUVMotion17SFluidLayerMotionRCQ214CFluidUVMotion17SFluidLayerMotion:
/* 8011CCC4 00119C24  C0 C2 97 20 */	lfs f6, lbl_805AB440@sda21(r2)
/* 8011CCC8 00119C28  38 E0 00 00 */	li r7, 0
/* 8011CCCC 00119C2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8011CCD0 00119C30  EC A6 08 24 */	fdivs f5, f6, f1
/* 8011CCD4 00119C34  C0 82 97 24 */	lfs f4, lbl_805AB444@sda21(r2)
/* 8011CCD8 00119C38  90 E3 00 00 */	stw r7, 0(r3)
/* 8011CCDC 00119C3C  C0 62 97 18 */	lfs f3, lbl_805AB438@sda21(r2)
/* 8011CCE0 00119C40  C0 22 97 28 */	lfs f1, lbl_805AB448@sda21(r2)
/* 8011CCE4 00119C44  C0 02 97 2C */	lfs f0, lbl_805AB44C@sda21(r2)
/* 8011CCE8 00119C48  D0 A3 00 4C */	stfs f5, 0x4c(r3)
/* 8011CCEC 00119C4C  D0 43 00 50 */	stfs f2, 0x50(r3)
/* 8011CCF0 00119C50  81 03 00 00 */	lwz r8, 0(r3)
/* 8011CCF4 00119C54  90 E1 00 08 */	stw r7, 8(r1)
/* 8011CCF8 00119C58  2C 08 00 03 */	cmpwi r8, 3
/* 8011CCFC 00119C5C  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 8011CD00 00119C60  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 8011CD04 00119C64  D0 C1 00 14 */	stfs f6, 0x14(r1)
/* 8011CD08 00119C68  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8011CD0C 00119C6C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8011CD10 00119C70  40 80 00 50 */	bge lbl_8011CD60
/* 8011CD14 00119C74  1C 08 00 18 */	mulli r0, r8, 0x18
/* 8011CD18 00119C78  21 28 00 03 */	subfic r9, r8, 3
/* 8011CD1C 00119C7C  7D 03 02 14 */	add r8, r3, r0
/* 8011CD20 00119C80  7D 29 03 A6 */	mtctr r9
/* 8011CD24 00119C84  2C 09 00 00 */	cmpwi r9, 0
/* 8011CD28 00119C88  39 08 00 04 */	addi r8, r8, 4
/* 8011CD2C 00119C8C  40 81 00 2C */	ble lbl_8011CD58
lbl_8011CD30:
/* 8011CD30 00119C90  28 08 00 00 */	cmplwi r8, 0
/* 8011CD34 00119C94  41 82 00 1C */	beq lbl_8011CD50
/* 8011CD38 00119C98  90 E8 00 00 */	stw r7, 0(r8)
/* 8011CD3C 00119C9C  D0 88 00 04 */	stfs f4, 4(r8)
/* 8011CD40 00119CA0  D0 68 00 08 */	stfs f3, 8(r8)
/* 8011CD44 00119CA4  D0 C8 00 0C */	stfs f6, 0xc(r8)
/* 8011CD48 00119CA8  D0 28 00 10 */	stfs f1, 0x10(r8)
/* 8011CD4C 00119CAC  D0 08 00 14 */	stfs f0, 0x14(r8)
lbl_8011CD50:
/* 8011CD50 00119CB0  39 08 00 18 */	addi r8, r8, 0x18
/* 8011CD54 00119CB4  42 00 FF DC */	bdnz lbl_8011CD30
lbl_8011CD58:
/* 8011CD58 00119CB8  38 00 00 03 */	li r0, 3
/* 8011CD5C 00119CBC  90 03 00 00 */	stw r0, 0(r3)
lbl_8011CD60:
/* 8011CD60 00119CC0  80 04 00 00 */	lwz r0, 0(r4)
/* 8011CD64 00119CC4  90 03 00 04 */	stw r0, 4(r3)
/* 8011CD68 00119CC8  C0 04 00 04 */	lfs f0, 4(r4)
/* 8011CD6C 00119CCC  D0 03 00 08 */	stfs f0, 8(r3)
/* 8011CD70 00119CD0  C0 04 00 08 */	lfs f0, 8(r4)
/* 8011CD74 00119CD4  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8011CD78 00119CD8  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 8011CD7C 00119CDC  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8011CD80 00119CE0  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 8011CD84 00119CE4  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 8011CD88 00119CE8  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 8011CD8C 00119CEC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8011CD90 00119CF0  80 05 00 00 */	lwz r0, 0(r5)
/* 8011CD94 00119CF4  90 03 00 1C */	stw r0, 0x1c(r3)
/* 8011CD98 00119CF8  C0 05 00 04 */	lfs f0, 4(r5)
/* 8011CD9C 00119CFC  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 8011CDA0 00119D00  C0 05 00 08 */	lfs f0, 8(r5)
/* 8011CDA4 00119D04  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 8011CDA8 00119D08  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 8011CDAC 00119D0C  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 8011CDB0 00119D10  C0 05 00 10 */	lfs f0, 0x10(r5)
/* 8011CDB4 00119D14  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 8011CDB8 00119D18  C0 05 00 14 */	lfs f0, 0x14(r5)
/* 8011CDBC 00119D1C  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 8011CDC0 00119D20  80 06 00 00 */	lwz r0, 0(r6)
/* 8011CDC4 00119D24  90 03 00 34 */	stw r0, 0x34(r3)
/* 8011CDC8 00119D28  C0 06 00 04 */	lfs f0, 4(r6)
/* 8011CDCC 00119D2C  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 8011CDD0 00119D30  C0 06 00 08 */	lfs f0, 8(r6)
/* 8011CDD4 00119D34  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 8011CDD8 00119D38  C0 06 00 0C */	lfs f0, 0xc(r6)
/* 8011CDDC 00119D3C  D0 03 00 40 */	stfs f0, 0x40(r3)
/* 8011CDE0 00119D40  C0 06 00 10 */	lfs f0, 0x10(r6)
/* 8011CDE4 00119D44  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 8011CDE8 00119D48  C0 06 00 14 */	lfs f0, 0x14(r6)
/* 8011CDEC 00119D4C  D0 03 00 48 */	stfs f0, 0x48(r3)
/* 8011CDF0 00119D50  38 21 00 20 */	addi r1, r1, 0x20
/* 8011CDF4 00119D54  4E 80 00 20 */	blr 

.global __ct__14CFluidUVMotionFff
__ct__14CFluidUVMotionFff:
/* 8011CDF8 00119D58  C0 C2 97 20 */	lfs f6, lbl_805AB440@sda21(r2)
/* 8011CDFC 00119D5C  38 80 00 00 */	li r4, 0
/* 8011CE00 00119D60  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8011CE04 00119D64  EC A6 08 24 */	fdivs f5, f6, f1
/* 8011CE08 00119D68  C0 82 97 24 */	lfs f4, lbl_805AB444@sda21(r2)
/* 8011CE0C 00119D6C  90 83 00 00 */	stw r4, 0(r3)
/* 8011CE10 00119D70  C0 62 97 18 */	lfs f3, lbl_805AB438@sda21(r2)
/* 8011CE14 00119D74  C0 22 97 28 */	lfs f1, lbl_805AB448@sda21(r2)
/* 8011CE18 00119D78  C0 02 97 2C */	lfs f0, lbl_805AB44C@sda21(r2)
/* 8011CE1C 00119D7C  D0 A3 00 4C */	stfs f5, 0x4c(r3)
/* 8011CE20 00119D80  D0 43 00 50 */	stfs f2, 0x50(r3)
/* 8011CE24 00119D84  80 A3 00 00 */	lwz r5, 0(r3)
/* 8011CE28 00119D88  90 81 00 50 */	stw r4, 0x50(r1)
/* 8011CE2C 00119D8C  2C 05 00 03 */	cmpwi r5, 3
/* 8011CE30 00119D90  D0 81 00 54 */	stfs f4, 0x54(r1)
/* 8011CE34 00119D94  D0 61 00 58 */	stfs f3, 0x58(r1)
/* 8011CE38 00119D98  D0 C1 00 5C */	stfs f6, 0x5c(r1)
/* 8011CE3C 00119D9C  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 8011CE40 00119DA0  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8011CE44 00119DA4  40 80 00 50 */	bge lbl_8011CE94
/* 8011CE48 00119DA8  1C 05 00 18 */	mulli r0, r5, 0x18
/* 8011CE4C 00119DAC  20 C5 00 03 */	subfic r6, r5, 3
/* 8011CE50 00119DB0  7C A3 02 14 */	add r5, r3, r0
/* 8011CE54 00119DB4  7C C9 03 A6 */	mtctr r6
/* 8011CE58 00119DB8  2C 06 00 00 */	cmpwi r6, 0
/* 8011CE5C 00119DBC  38 A5 00 04 */	addi r5, r5, 4
/* 8011CE60 00119DC0  40 81 00 2C */	ble lbl_8011CE8C
lbl_8011CE64:
/* 8011CE64 00119DC4  28 05 00 00 */	cmplwi r5, 0
/* 8011CE68 00119DC8  41 82 00 1C */	beq lbl_8011CE84
/* 8011CE6C 00119DCC  90 85 00 00 */	stw r4, 0(r5)
/* 8011CE70 00119DD0  D0 85 00 04 */	stfs f4, 4(r5)
/* 8011CE74 00119DD4  D0 65 00 08 */	stfs f3, 8(r5)
/* 8011CE78 00119DD8  D0 C5 00 0C */	stfs f6, 0xc(r5)
/* 8011CE7C 00119DDC  D0 25 00 10 */	stfs f1, 0x10(r5)
/* 8011CE80 00119DE0  D0 05 00 14 */	stfs f0, 0x14(r5)
lbl_8011CE84:
/* 8011CE84 00119DE4  38 A5 00 18 */	addi r5, r5, 0x18
/* 8011CE88 00119DE8  42 00 FF DC */	bdnz lbl_8011CE64
lbl_8011CE8C:
/* 8011CE8C 00119DEC  38 00 00 03 */	li r0, 3
/* 8011CE90 00119DF0  90 03 00 00 */	stw r0, 0(r3)
lbl_8011CE94:
/* 8011CE94 00119DF4  38 00 00 00 */	li r0, 0
/* 8011CE98 00119DF8  C0 42 97 2C */	lfs f2, lbl_805AB44C@sda21(r2)
/* 8011CE9C 00119DFC  C0 C2 97 30 */	lfs f6, lbl_805AB450@sda21(r2)
/* 8011CEA0 00119E00  90 03 00 04 */	stw r0, 4(r3)
/* 8011CEA4 00119E04  C0 A2 97 18 */	lfs f5, lbl_805AB438@sda21(r2)
/* 8011CEA8 00119E08  D0 C3 00 08 */	stfs f6, 8(r3)
/* 8011CEAC 00119E0C  C0 82 97 20 */	lfs f4, lbl_805AB440@sda21(r2)
/* 8011CEB0 00119E10  D0 A3 00 0C */	stfs f5, 0xc(r3)
/* 8011CEB4 00119E14  C0 62 97 28 */	lfs f3, lbl_805AB448@sda21(r2)
/* 8011CEB8 00119E18  D0 83 00 10 */	stfs f4, 0x10(r3)
/* 8011CEBC 00119E1C  C0 22 97 34 */	lfs f1, lbl_805AB454@sda21(r2)
/* 8011CEC0 00119E20  D0 63 00 14 */	stfs f3, 0x14(r3)
/* 8011CEC4 00119E24  C0 02 97 38 */	lfs f0, lbl_805AB458@sda21(r2)
/* 8011CEC8 00119E28  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 8011CECC 00119E2C  90 03 00 1C */	stw r0, 0x1c(r3)
/* 8011CED0 00119E30  D0 23 00 20 */	stfs f1, 0x20(r3)
/* 8011CED4 00119E34  D0 A3 00 24 */	stfs f5, 0x24(r3)
/* 8011CED8 00119E38  D0 83 00 28 */	stfs f4, 0x28(r3)
/* 8011CEDC 00119E3C  D0 63 00 2C */	stfs f3, 0x2c(r3)
/* 8011CEE0 00119E40  D0 43 00 30 */	stfs f2, 0x30(r3)
/* 8011CEE4 00119E44  90 03 00 34 */	stw r0, 0x34(r3)
/* 8011CEE8 00119E48  D0 43 00 38 */	stfs f2, 0x38(r3)
/* 8011CEEC 00119E4C  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 8011CEF0 00119E50  D0 83 00 40 */	stfs f4, 0x40(r3)
/* 8011CEF4 00119E54  D0 63 00 44 */	stfs f3, 0x44(r3)
/* 8011CEF8 00119E58  90 01 00 38 */	stw r0, 0x38(r1)
/* 8011CEFC 00119E5C  D0 C1 00 3C */	stfs f6, 0x3c(r1)
/* 8011CF00 00119E60  D0 A1 00 40 */	stfs f5, 0x40(r1)
/* 8011CF04 00119E64  D0 81 00 44 */	stfs f4, 0x44(r1)
/* 8011CF08 00119E68  D0 61 00 48 */	stfs f3, 0x48(r1)
/* 8011CF0C 00119E6C  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 8011CF10 00119E70  90 01 00 20 */	stw r0, 0x20(r1)
/* 8011CF14 00119E74  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8011CF18 00119E78  D0 A1 00 28 */	stfs f5, 0x28(r1)
/* 8011CF1C 00119E7C  D0 81 00 2C */	stfs f4, 0x2c(r1)
/* 8011CF20 00119E80  D0 61 00 30 */	stfs f3, 0x30(r1)
/* 8011CF24 00119E84  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 8011CF28 00119E88  90 01 00 08 */	stw r0, 8(r1)
/* 8011CF2C 00119E8C  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 8011CF30 00119E90  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8011CF34 00119E94  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 8011CF38 00119E98  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 8011CF3C 00119E9C  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8011CF40 00119EA0  D0 43 00 48 */	stfs f2, 0x48(r3)
/* 8011CF44 00119EA4  38 21 00 70 */	addi r1, r1, 0x70
/* 8011CF48 00119EA8  4E 80 00 20 */	blr
