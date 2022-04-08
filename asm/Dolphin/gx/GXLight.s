.include "macros.inc"

.section .data
.global lbl_803F09D0
lbl_803F09D0:
	.incbin "baserom.dol", 0x3ED9D0, 0x20
	
.section .text, "ax"

.global GXInitLightAttn
GXInitLightAttn:
/* 803796E8 00376648  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 803796EC 0037664C  D0 43 00 14 */	stfs f2, 0x14(r3)
/* 803796F0 00376650  D0 63 00 18 */	stfs f3, 0x18(r3)
/* 803796F4 00376654  D0 83 00 1C */	stfs f4, 0x1c(r3)
/* 803796F8 00376658  D0 A3 00 20 */	stfs f5, 0x20(r3)
/* 803796FC 0037665C  D0 C3 00 24 */	stfs f6, 0x24(r3)
/* 80379700 00376660  4E 80 00 20 */	blr 

.global GXInitLightSpot
GXInitLightSpot:
/* 80379704 00376664  7C 08 02 A6 */	mflr r0
/* 80379708 00376668  90 01 00 04 */	stw r0, 4(r1)
/* 8037970C 0037666C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80379710 00376670  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80379714 00376674  3B E4 00 00 */	addi r31, r4, 0
/* 80379718 00376678  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8037971C 0037667C  3B C3 00 00 */	addi r30, r3, 0
/* 80379720 00376680  C0 02 CE 38 */	lfs f0, lbl_805AEB58@sda21(r2)
/* 80379724 00376684  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80379728 00376688  4C 40 13 82 */	cror 2, 0, 2
/* 8037972C 0037668C  41 82 00 10 */	beq lbl_8037973C
/* 80379730 00376690  C0 02 CE 3C */	lfs f0, lbl_805AEB5C@sda21(r2)
/* 80379734 00376694  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80379738 00376698  40 81 00 08 */	ble lbl_80379740
lbl_8037973C:
/* 8037973C 0037669C  3B E0 00 00 */	li r31, 0
lbl_80379740:
/* 80379740 003766A0  C0 42 CE 40 */	lfs f2, lbl_805AEB60@sda21(r2)
/* 80379744 003766A4  C0 02 CE 44 */	lfs f0, lbl_805AEB64@sda21(r2)
/* 80379748 003766A8  EC 22 00 72 */	fmuls f1, f2, f1
/* 8037974C 003766AC  EC 21 00 24 */	fdivs f1, f1, f0
/* 80379750 003766B0  48 01 B5 BD */	bl cosf
/* 80379754 003766B4  28 1F 00 06 */	cmplwi r31, 6
/* 80379758 003766B8  41 81 01 0C */	bgt lbl_80379864
/* 8037975C 003766BC  3C 60 80 3F */	lis r3, lbl_803F09D0@ha
/* 80379760 003766C0  38 63 09 D0 */	addi r3, r3, lbl_803F09D0@l
/* 80379764 003766C4  57 E0 10 3A */	slwi r0, r31, 2
/* 80379768 003766C8  7C 03 00 2E */	lwzx r0, r3, r0
/* 8037976C 003766CC  7C 09 03 A6 */	mtctr r0
/* 80379770 003766D0  4E 80 04 20 */	bctr 
/* 80379774 003766D4  C0 02 CE 48 */	lfs f0, lbl_805AEB68@sda21(r2)
/* 80379778 003766D8  C0 82 CE 4C */	lfs f4, lbl_805AEB6C@sda21(r2)
/* 8037977C 003766DC  EC 60 00 72 */	fmuls f3, f0, f1
/* 80379780 003766E0  C0 C2 CE 38 */	lfs f6, lbl_805AEB58@sda21(r2)
/* 80379784 003766E4  48 00 00 EC */	b lbl_80379870
/* 80379788 003766E8  C0 42 CE 50 */	lfs f2, lbl_805AEB70@sda21(r2)
/* 8037978C 003766EC  FC 00 08 50 */	fneg f0, f1
/* 80379790 003766F0  C0 C2 CE 38 */	lfs f6, lbl_805AEB58@sda21(r2)
/* 80379794 003766F4  EC 22 08 28 */	fsubs f1, f2, f1
/* 80379798 003766F8  EC 22 08 24 */	fdivs f1, f2, f1
/* 8037979C 003766FC  FC 80 08 90 */	fmr f4, f1
/* 803797A0 00376700  EC 60 00 72 */	fmuls f3, f0, f1
/* 803797A4 00376704  48 00 00 CC */	b lbl_80379870
/* 803797A8 00376708  C0 42 CE 50 */	lfs f2, lbl_805AEB70@sda21(r2)
/* 803797AC 0037670C  FC 00 08 50 */	fneg f0, f1
/* 803797B0 00376710  C0 62 CE 38 */	lfs f3, lbl_805AEB58@sda21(r2)
/* 803797B4 00376714  EC 22 08 28 */	fsubs f1, f2, f1
/* 803797B8 00376718  EC 22 08 24 */	fdivs f1, f2, f1
/* 803797BC 0037671C  FC C0 08 90 */	fmr f6, f1
/* 803797C0 00376720  EC 80 00 72 */	fmuls f4, f0, f1
/* 803797C4 00376724  48 00 00 AC */	b lbl_80379870
/* 803797C8 00376728  C0 82 CE 50 */	lfs f4, lbl_805AEB70@sda21(r2)
/* 803797CC 0037672C  C0 42 CE 54 */	lfs f2, lbl_805AEB74@sda21(r2)
/* 803797D0 00376730  EC 64 08 28 */	fsubs f3, f4, f1
/* 803797D4 00376734  EC 01 10 28 */	fsubs f0, f1, f2
/* 803797D8 00376738  EC 63 00 F2 */	fmuls f3, f3, f3
/* 803797DC 0037673C  EC 01 00 32 */	fmuls f0, f1, f0
/* 803797E0 00376740  EC 24 18 24 */	fdivs f1, f4, f3
/* 803797E4 00376744  EC 61 00 32 */	fmuls f3, f1, f0
/* 803797E8 00376748  EC 82 00 72 */	fmuls f4, f2, f1
/* 803797EC 0037674C  FC C0 08 50 */	fneg f6, f1
/* 803797F0 00376750  48 00 00 80 */	b lbl_80379870
/* 803797F4 00376754  C0 A2 CE 50 */	lfs f5, lbl_805AEB70@sda21(r2)
/* 803797F8 00376758  C0 62 CE 58 */	lfs f3, lbl_805AEB78@sda21(r2)
/* 803797FC 0037675C  EC 85 08 28 */	fsubs f4, f5, f1
/* 80379800 00376760  C0 42 CE 5C */	lfs f2, lbl_805AEB7C@sda21(r2)
/* 80379804 00376764  EC 05 08 2A */	fadds f0, f5, f1
/* 80379808 00376768  EC 84 01 32 */	fmuls f4, f4, f4
/* 8037980C 0037676C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80379810 00376770  EC 85 20 24 */	fdivs f4, f5, f4
/* 80379814 00376774  EC 43 01 32 */	fmuls f2, f3, f4
/* 80379818 00376778  EC 80 01 32 */	fmuls f4, f0, f4
/* 8037981C 0037677C  FC C0 10 90 */	fmr f6, f2
/* 80379820 00376780  EC 62 00 72 */	fmuls f3, f2, f1
/* 80379824 00376784  48 00 00 4C */	b lbl_80379870
/* 80379828 00376788  C0 A2 CE 50 */	lfs f5, lbl_805AEB70@sda21(r2)
/* 8037982C 0037678C  C0 02 CE 54 */	lfs f0, lbl_805AEB74@sda21(r2)
/* 80379830 00376790  EC 85 08 28 */	fsubs f4, f5, f1
/* 80379834 00376794  C0 42 CE 5C */	lfs f2, lbl_805AEB7C@sda21(r2)
/* 80379838 00376798  EC 60 00 72 */	fmuls f3, f0, f1
/* 8037983C 0037679C  C0 02 CE 60 */	lfs f0, lbl_805AEB80@sda21(r2)
/* 80379840 003767A0  EC 42 00 72 */	fmuls f2, f2, f1
/* 80379844 003767A4  EC 84 01 32 */	fmuls f4, f4, f4
/* 80379848 003767A8  EC 23 00 72 */	fmuls f1, f3, f1
/* 8037984C 003767AC  EC 65 20 24 */	fdivs f3, f5, f4
/* 80379850 003767B0  EC 23 00 72 */	fmuls f1, f3, f1
/* 80379854 003767B4  EC 82 00 F2 */	fmuls f4, f2, f3
/* 80379858 003767B8  EC C0 00 F2 */	fmuls f6, f0, f3
/* 8037985C 003767BC  EC 65 08 28 */	fsubs f3, f5, f1
/* 80379860 003767C0  48 00 00 10 */	b lbl_80379870
lbl_80379864:
/* 80379864 003767C4  C0 82 CE 38 */	lfs f4, lbl_805AEB58@sda21(r2)
/* 80379868 003767C8  C0 62 CE 50 */	lfs f3, lbl_805AEB70@sda21(r2)
/* 8037986C 003767CC  FC C0 20 90 */	fmr f6, f4
lbl_80379870:
/* 80379870 003767D0  D0 7E 00 10 */	stfs f3, 0x10(r30)
/* 80379874 003767D4  D0 9E 00 14 */	stfs f4, 0x14(r30)
/* 80379878 003767D8  D0 DE 00 18 */	stfs f6, 0x18(r30)
/* 8037987C 003767DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80379880 003767E0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80379884 003767E4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80379888 003767E8  38 21 00 20 */	addi r1, r1, 0x20
/* 8037988C 003767EC  7C 08 03 A6 */	mtlr r0
/* 80379890 003767F0  4E 80 00 20 */	blr 

.global GXInitLightPos
GXInitLightPos:
/* 80379894 003767F4  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 80379898 003767F8  D0 43 00 2C */	stfs f2, 0x2c(r3)
/* 8037989C 003767FC  D0 63 00 30 */	stfs f3, 0x30(r3)
/* 803798A0 00376800  4E 80 00 20 */	blr 

.global GXInitLightDir
GXInitLightDir:
/* 803798A4 00376804  FC 80 08 50 */	fneg f4, f1
/* 803798A8 00376808  FC 20 10 50 */	fneg f1, f2
/* 803798AC 0037680C  FC 00 18 50 */	fneg f0, f3
/* 803798B0 00376810  D0 83 00 34 */	stfs f4, 0x34(r3)
/* 803798B4 00376814  D0 23 00 38 */	stfs f1, 0x38(r3)
/* 803798B8 00376818  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 803798BC 0037681C  4E 80 00 20 */	blr 

.global GXInitLightColor
GXInitLightColor:
/* 803798C0 00376820  80 04 00 00 */	lwz r0, 0(r4)
/* 803798C4 00376824  90 03 00 0C */	stw r0, 0xc(r3)
/* 803798C8 00376828  4E 80 00 20 */	blr 

.global GXLoadLightObjImm
GXLoadLightObjImm:
/* 803798CC 0037682C  7C 80 00 34 */	cntlzw r0, r4
/* 803798D0 00376830  20 00 00 1F */	subfic r0, r0, 0x1f
/* 803798D4 00376834  54 05 26 76 */	rlwinm r5, r0, 4, 0x19, 0x1b
/* 803798D8 00376838  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 803798DC 0037683C  38 00 00 10 */	li r0, 0x10
/* 803798E0 00376840  38 A5 06 00 */	addi r5, r5, 0x600
/* 803798E4 00376844  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 803798E8 00376848  64 A0 00 0F */	oris r0, r5, 0xf
/* 803798EC 0037684C  94 04 80 00 */	stwu r0, 0xCC008000@l(r4)
/* 803798F0 00376850  80 03 00 0C */	lwz r0, 0xc(r3)
/* 803798F4 00376854  7C C6 32 78 */	xor r6, r6, r6
/* 803798F8 00376858  E0 A3 00 10 */	psq_l f5, 16(r3), 0, qr0
/* 803798FC 0037685C  E0 83 00 18 */	psq_l f4, 24(r3), 0, qr0
/* 80379900 00376860  E0 63 00 20 */	psq_l f3, 32(r3), 0, qr0
/* 80379904 00376864  E0 43 00 28 */	psq_l f2, 40(r3), 0, qr0
/* 80379908 00376868  E0 23 00 30 */	psq_l f1, 48(r3), 0, qr0
/* 8037990C 0037686C  E0 03 00 38 */	psq_l f0, 56(r3), 0, qr0
/* 80379910 00376870  90 C4 00 00 */	stw r6, 0(r4)
/* 80379914 00376874  90 C4 00 00 */	stw r6, 0(r4)
/* 80379918 00376878  90 C4 00 00 */	stw r6, 0(r4)
/* 8037991C 0037687C  90 04 00 00 */	stw r0, 0(r4)
/* 80379920 00376880  F0 A4 00 00 */	psq_st f5, 0(r4), 0, qr0
/* 80379924 00376884  F0 84 00 00 */	psq_st f4, 0(r4), 0, qr0
/* 80379928 00376888  F0 64 00 00 */	psq_st f3, 0(r4), 0, qr0
/* 8037992C 0037688C  F0 44 00 00 */	psq_st f2, 0(r4), 0, qr0
/* 80379930 00376890  F0 24 00 00 */	psq_st f1, 0(r4), 0, qr0
/* 80379934 00376894  F0 04 00 00 */	psq_st f0, 0(r4), 0, qr0
/* 80379938 00376898  80 62 CE 08 */	lwz r3, lbl_805AEB28@sda21(r2)
/* 8037993C 0037689C  38 00 00 01 */	li r0, 1
/* 80379940 003768A0  B0 03 00 02 */	sth r0, 2(r3)
/* 80379944 003768A4  4E 80 00 20 */	blr 

.global GXSetChanAmbColor
GXSetChanAmbColor:
/* 80379948 003768A8  2C 03 00 03 */	cmpwi r3, 3
/* 8037994C 003768AC  41 82 00 88 */	beq lbl_803799D4
/* 80379950 003768B0  40 80 00 1C */	bge lbl_8037996C
/* 80379954 003768B4  2C 03 00 01 */	cmpwi r3, 1
/* 80379958 003768B8  41 82 00 44 */	beq lbl_8037999C
/* 8037995C 003768BC  40 80 00 60 */	bge lbl_803799BC
/* 80379960 003768C0  2C 03 00 00 */	cmpwi r3, 0
/* 80379964 003768C4  40 80 00 18 */	bge lbl_8037997C
/* 80379968 003768C8  4E 80 00 20 */	blr 
lbl_8037996C:
/* 8037996C 003768CC  2C 03 00 05 */	cmpwi r3, 5
/* 80379970 003768D0  41 82 00 88 */	beq lbl_803799F8
/* 80379974 003768D4  4C 80 00 20 */	bgelr 
/* 80379978 003768D8  48 00 00 74 */	b lbl_803799EC
lbl_8037997C:
/* 8037997C 003768DC  80 62 CE 08 */	lwz r3, lbl_805AEB28@sda21(r2)
/* 80379980 003768E0  38 A0 00 00 */	li r5, 0
/* 80379984 003768E4  80 04 00 00 */	lwz r0, 0(r4)
/* 80379988 003768E8  80 63 00 A8 */	lwz r3, 0xa8(r3)
/* 8037998C 003768EC  54 00 00 2E */	rlwinm r0, r0, 0, 0, 0x17
/* 80379990 003768F0  7C 07 03 78 */	mr r7, r0
/* 80379994 003768F4  50 67 06 3E */	rlwimi r7, r3, 0, 0x18, 0x1f
/* 80379998 003768F8  48 00 00 70 */	b lbl_80379A08
lbl_8037999C:
/* 8037999C 003768FC  80 62 CE 08 */	lwz r3, lbl_805AEB28@sda21(r2)
/* 803799A0 00376900  38 A0 00 01 */	li r5, 1
/* 803799A4 00376904  80 04 00 00 */	lwz r0, 0(r4)
/* 803799A8 00376908  80 63 00 AC */	lwz r3, 0xac(r3)
/* 803799AC 0037690C  54 00 00 2E */	rlwinm r0, r0, 0, 0, 0x17
/* 803799B0 00376910  7C 07 03 78 */	mr r7, r0
/* 803799B4 00376914  50 67 06 3E */	rlwimi r7, r3, 0, 0x18, 0x1f
/* 803799B8 00376918  48 00 00 50 */	b lbl_80379A08
lbl_803799BC:
/* 803799BC 0037691C  80 62 CE 08 */	lwz r3, lbl_805AEB28@sda21(r2)
/* 803799C0 00376920  38 A0 00 00 */	li r5, 0
/* 803799C4 00376924  88 E4 00 03 */	lbz r7, 3(r4)
/* 803799C8 00376928  80 63 00 A8 */	lwz r3, 0xa8(r3)
/* 803799CC 0037692C  50 67 00 2E */	rlwimi r7, r3, 0, 0, 0x17
/* 803799D0 00376930  48 00 00 38 */	b lbl_80379A08
lbl_803799D4:
/* 803799D4 00376934  80 62 CE 08 */	lwz r3, lbl_805AEB28@sda21(r2)
/* 803799D8 00376938  38 A0 00 01 */	li r5, 1
/* 803799DC 0037693C  88 E4 00 03 */	lbz r7, 3(r4)
/* 803799E0 00376940  80 63 00 AC */	lwz r3, 0xac(r3)
/* 803799E4 00376944  50 67 00 2E */	rlwimi r7, r3, 0, 0, 0x17
/* 803799E8 00376948  48 00 00 20 */	b lbl_80379A08
lbl_803799EC:
/* 803799EC 0037694C  80 E4 00 00 */	lwz r7, 0(r4)
/* 803799F0 00376950  38 A0 00 00 */	li r5, 0
/* 803799F4 00376954  48 00 00 14 */	b lbl_80379A08
lbl_803799F8:
/* 803799F8 00376958  80 E4 00 00 */	lwz r7, 0(r4)
/* 803799FC 0037695C  38 A0 00 01 */	li r5, 1
/* 80379A00 00376960  48 00 00 08 */	b lbl_80379A08
/* 80379A04 00376964  4E 80 00 20 */	blr 
lbl_80379A08:
/* 80379A08 00376968  38 00 00 10 */	li r0, 0x10
/* 80379A0C 0037696C  80 82 CE 08 */	lwz r4, lbl_805AEB28@sda21(r2)
/* 80379A10 00376970  3C C0 CC 01 */	lis r6, 0xCC008000@ha
/* 80379A14 00376974  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 80379A18 00376978  38 65 10 0A */	addi r3, r5, 0x100a
/* 80379A1C 0037697C  54 A0 10 3A */	slwi r0, r5, 2
/* 80379A20 00376980  90 66 80 00 */	stw r3, 0xCC008000@l(r6)
/* 80379A24 00376984  38 A0 00 01 */	li r5, 1
/* 80379A28 00376988  7C 64 02 14 */	add r3, r4, r0
/* 80379A2C 0037698C  90 E6 80 00 */	stw r7, 0xCC008000@l(r6)
/* 80379A30 00376990  B0 A4 00 02 */	sth r5, 2(r4)
/* 80379A34 00376994  90 E3 00 A8 */	stw r7, 0xa8(r3)
/* 80379A38 00376998  4E 80 00 20 */	blr 

.global GXSetChanMatColor
GXSetChanMatColor:
/* 80379A3C 0037699C  2C 03 00 03 */	cmpwi r3, 3
/* 80379A40 003769A0  41 82 00 88 */	beq lbl_80379AC8
/* 80379A44 003769A4  40 80 00 1C */	bge lbl_80379A60
/* 80379A48 003769A8  2C 03 00 01 */	cmpwi r3, 1
/* 80379A4C 003769AC  41 82 00 44 */	beq lbl_80379A90
/* 80379A50 003769B0  40 80 00 60 */	bge lbl_80379AB0
/* 80379A54 003769B4  2C 03 00 00 */	cmpwi r3, 0
/* 80379A58 003769B8  40 80 00 18 */	bge lbl_80379A70
/* 80379A5C 003769BC  4E 80 00 20 */	blr 
lbl_80379A60:
/* 80379A60 003769C0  2C 03 00 05 */	cmpwi r3, 5
/* 80379A64 003769C4  41 82 00 88 */	beq lbl_80379AEC
/* 80379A68 003769C8  4C 80 00 20 */	bgelr 
/* 80379A6C 003769CC  48 00 00 74 */	b lbl_80379AE0
lbl_80379A70:
/* 80379A70 003769D0  80 62 CE 08 */	lwz r3, lbl_805AEB28@sda21(r2)
/* 80379A74 003769D4  38 A0 00 00 */	li r5, 0
/* 80379A78 003769D8  80 04 00 00 */	lwz r0, 0(r4)
/* 80379A7C 003769DC  80 63 00 B0 */	lwz r3, 0xb0(r3)
/* 80379A80 003769E0  54 00 00 2E */	rlwinm r0, r0, 0, 0, 0x17
/* 80379A84 003769E4  7C 07 03 78 */	mr r7, r0
/* 80379A88 003769E8  50 67 06 3E */	rlwimi r7, r3, 0, 0x18, 0x1f
/* 80379A8C 003769EC  48 00 00 70 */	b lbl_80379AFC
lbl_80379A90:
/* 80379A90 003769F0  80 62 CE 08 */	lwz r3, lbl_805AEB28@sda21(r2)
/* 80379A94 003769F4  38 A0 00 01 */	li r5, 1
/* 80379A98 003769F8  80 04 00 00 */	lwz r0, 0(r4)
/* 80379A9C 003769FC  80 63 00 B4 */	lwz r3, 0xb4(r3)
/* 80379AA0 00376A00  54 00 00 2E */	rlwinm r0, r0, 0, 0, 0x17
/* 80379AA4 00376A04  7C 07 03 78 */	mr r7, r0
/* 80379AA8 00376A08  50 67 06 3E */	rlwimi r7, r3, 0, 0x18, 0x1f
/* 80379AAC 00376A0C  48 00 00 50 */	b lbl_80379AFC
lbl_80379AB0:
/* 80379AB0 00376A10  80 62 CE 08 */	lwz r3, lbl_805AEB28@sda21(r2)
/* 80379AB4 00376A14  38 A0 00 00 */	li r5, 0
/* 80379AB8 00376A18  88 E4 00 03 */	lbz r7, 3(r4)
/* 80379ABC 00376A1C  80 63 00 B0 */	lwz r3, 0xb0(r3)
/* 80379AC0 00376A20  50 67 00 2E */	rlwimi r7, r3, 0, 0, 0x17
/* 80379AC4 00376A24  48 00 00 38 */	b lbl_80379AFC
lbl_80379AC8:
/* 80379AC8 00376A28  80 62 CE 08 */	lwz r3, lbl_805AEB28@sda21(r2)
/* 80379ACC 00376A2C  38 A0 00 01 */	li r5, 1
/* 80379AD0 00376A30  88 E4 00 03 */	lbz r7, 3(r4)
/* 80379AD4 00376A34  80 63 00 B4 */	lwz r3, 0xb4(r3)
/* 80379AD8 00376A38  50 67 00 2E */	rlwimi r7, r3, 0, 0, 0x17
/* 80379ADC 00376A3C  48 00 00 20 */	b lbl_80379AFC
lbl_80379AE0:
/* 80379AE0 00376A40  80 E4 00 00 */	lwz r7, 0(r4)
/* 80379AE4 00376A44  38 A0 00 00 */	li r5, 0
/* 80379AE8 00376A48  48 00 00 14 */	b lbl_80379AFC
lbl_80379AEC:
/* 80379AEC 00376A4C  80 E4 00 00 */	lwz r7, 0(r4)
/* 80379AF0 00376A50  38 A0 00 01 */	li r5, 1
/* 80379AF4 00376A54  48 00 00 08 */	b lbl_80379AFC
/* 80379AF8 00376A58  4E 80 00 20 */	blr 
lbl_80379AFC:
/* 80379AFC 00376A5C  38 00 00 10 */	li r0, 0x10
/* 80379B00 00376A60  80 82 CE 08 */	lwz r4, lbl_805AEB28@sda21(r2)
/* 80379B04 00376A64  3C C0 CC 01 */	lis r6, 0xCC008000@ha
/* 80379B08 00376A68  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 80379B0C 00376A6C  38 65 10 0C */	addi r3, r5, 0x100c
/* 80379B10 00376A70  54 A0 10 3A */	slwi r0, r5, 2
/* 80379B14 00376A74  90 66 80 00 */	stw r3, 0xCC008000@l(r6)
/* 80379B18 00376A78  38 A0 00 01 */	li r5, 1
/* 80379B1C 00376A7C  7C 64 02 14 */	add r3, r4, r0
/* 80379B20 00376A80  90 E6 80 00 */	stw r7, 0xCC008000@l(r6)
/* 80379B24 00376A84  B0 A4 00 02 */	sth r5, 2(r4)
/* 80379B28 00376A88  90 E3 00 B0 */	stw r7, 0xb0(r3)
/* 80379B2C 00376A8C  4E 80 00 20 */	blr 

.global GXSetNumChans
GXSetNumChans:
/* 80379B30 00376A90  80 C2 CE 08 */	lwz r6, lbl_805AEB28@sda21(r2)
/* 80379B34 00376A94  54 60 25 36 */	rlwinm r0, r3, 4, 0x14, 0x1b
/* 80379B38 00376A98  54 68 06 3E */	clrlwi r8, r3, 0x18
/* 80379B3C 00376A9C  80 A6 02 04 */	lwz r5, 0x204(r6)
/* 80379B40 00376AA0  38 80 00 10 */	li r4, 0x10
/* 80379B44 00376AA4  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 80379B48 00376AA8  54 A5 07 30 */	rlwinm r5, r5, 0, 0x1c, 0x18
/* 80379B4C 00376AAC  7C A0 03 78 */	or r0, r5, r0
/* 80379B50 00376AB0  90 06 02 04 */	stw r0, 0x204(r6)
/* 80379B54 00376AB4  38 00 10 09 */	li r0, 0x1009
/* 80379B58 00376AB8  98 83 80 00 */	stb r4, 0xCC008000@l(r3)
/* 80379B5C 00376ABC  90 03 80 00 */	stw r0, 0xCC008000@l(r3)
/* 80379B60 00376AC0  91 03 80 00 */	stw r8, 0xCC008000@l(r3)
/* 80379B64 00376AC4  80 06 04 F4 */	lwz r0, 0x4f4(r6)
/* 80379B68 00376AC8  60 00 00 04 */	ori r0, r0, 4
/* 80379B6C 00376ACC  90 06 04 F4 */	stw r0, 0x4f4(r6)
/* 80379B70 00376AD0  4E 80 00 20 */	blr 

.global GXSetChanCtrl
GXSetChanCtrl:
/* 80379B74 00376AD4  54 80 0D FC */	rlwinm r0, r4, 1, 0x17, 0x1e
/* 80379B78 00376AD8  7C 00 33 78 */	or r0, r0, r6
/* 80379B7C 00376ADC  54 04 06 B0 */	rlwinm r4, r0, 0, 0x1a, 0x18
/* 80379B80 00376AE0  54 A0 30 32 */	slwi r0, r5, 6
/* 80379B84 00376AE4  2C 09 00 00 */	cmpwi r9, 0
/* 80379B88 00376AE8  54 6A 07 BE */	clrlwi r10, r3, 0x1e
/* 80379B8C 00376AEC  7C 86 03 78 */	or r6, r4, r0
/* 80379B90 00376AF0  40 82 00 08 */	bne lbl_80379B98
/* 80379B94 00376AF4  39 00 00 00 */	li r8, 0
lbl_80379B98:
/* 80379B98 00376AF8  20 89 00 02 */	subfic r4, r9, 2
/* 80379B9C 00376AFC  30 04 FF FF */	addic r0, r4, -1
/* 80379BA0 00376B00  7C A0 21 10 */	subfe r5, r0, r4
/* 80379BA4 00376B04  7C 89 00 D0 */	neg r4, r9
/* 80379BA8 00376B08  30 04 FF FF */	addic r0, r4, -1
/* 80379BAC 00376B0C  7C 00 21 10 */	subfe r0, r0, r4
/* 80379BB0 00376B10  54 C6 06 6C */	rlwinm r6, r6, 0, 0x19, 0x16
/* 80379BB4 00376B14  55 04 38 30 */	slwi r4, r8, 7
/* 80379BB8 00376B18  7C C4 23 78 */	or r4, r6, r4
/* 80379BBC 00376B1C  54 86 05 EA */	rlwinm r6, r4, 0, 0x17, 0x15
/* 80379BC0 00376B20  54 A4 48 2C */	slwi r4, r5, 9
/* 80379BC4 00376B24  7C C4 23 78 */	or r4, r6, r4
/* 80379BC8 00376B28  54 84 05 A8 */	rlwinm r4, r4, 0, 0x16, 0x14
/* 80379BCC 00376B2C  54 00 50 2A */	slwi r0, r0, 0xa
/* 80379BD0 00376B30  7C 86 03 78 */	or r6, r4, r0
/* 80379BD4 00376B34  54 C6 07 B2 */	rlwinm r6, r6, 0, 0x1e, 0x19
/* 80379BD8 00376B38  50 E6 16 BA */	rlwimi r6, r7, 2, 0x1a, 0x1d
/* 80379BDC 00376B3C  54 C6 05 60 */	rlwinm r6, r6, 0, 0x15, 0x10
/* 80379BE0 00376B40  38 A0 00 10 */	li r5, 0x10
/* 80379BE4 00376B44  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 80379BE8 00376B48  98 A4 80 00 */	stb r5, 0xCC008000@l(r4)
/* 80379BEC 00376B4C  38 0A 10 0E */	addi r0, r10, 0x100e
/* 80379BF0 00376B50  50 E6 3C 68 */	rlwimi r6, r7, 7, 0x11, 0x14
/* 80379BF4 00376B54  90 04 80 00 */	stw r0, 0xCC008000@l(r4)
/* 80379BF8 00376B58  2C 03 00 04 */	cmpwi r3, 4
/* 80379BFC 00376B5C  90 C4 80 00 */	stw r6, 0xCC008000@l(r4)
/* 80379C00 00376B60  40 82 00 18 */	bne lbl_80379C18
/* 80379C04 00376B64  98 A4 80 00 */	stb r5, 0xCC008000@l(r4)
/* 80379C08 00376B68  38 00 10 10 */	li r0, 0x1010
/* 80379C0C 00376B6C  90 04 80 00 */	stw r0, 0xCC008000@l(r4)
/* 80379C10 00376B70  90 C4 80 00 */	stw r6, 0xCC008000@l(r4)
/* 80379C14 00376B74  48 00 00 1C */	b lbl_80379C30
lbl_80379C18:
/* 80379C18 00376B78  2C 03 00 05 */	cmpwi r3, 5
/* 80379C1C 00376B7C  40 82 00 14 */	bne lbl_80379C30
/* 80379C20 00376B80  98 A4 80 00 */	stb r5, 0xCC008000@l(r4)
/* 80379C24 00376B84  38 00 10 11 */	li r0, 0x1011
/* 80379C28 00376B88  90 04 80 00 */	stw r0, 0xCC008000@l(r4)
/* 80379C2C 00376B8C  90 C4 80 00 */	stw r6, 0xCC008000@l(r4)
lbl_80379C30:
/* 80379C30 00376B90  80 62 CE 08 */	lwz r3, lbl_805AEB28@sda21(r2)
/* 80379C34 00376B94  38 00 00 01 */	li r0, 1
/* 80379C38 00376B98  B0 03 00 02 */	sth r0, 2(r3)
/* 80379C3C 00376B9C  4E 80 00 20 */	blr 