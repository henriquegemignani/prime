.include "macros.inc"

.section .text, "ax"

.global __fwrite
__fwrite:
/* 8038CF48 00389EA8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8038CF4C 00389EAC  7C 08 02 A6 */	mflr r0
/* 8038CF50 00389EB0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8038CF54 00389EB4  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 8038CF58 00389EB8  7C 99 23 78 */	mr r25, r4
/* 8038CF5C 00389EBC  7C DA 33 78 */	mr r26, r6
/* 8038CF60 00389EC0  7C 7B 1B 78 */	mr r27, r3
/* 8038CF64 00389EC4  7C BC 2B 78 */	mr r28, r5
/* 8038CF68 00389EC8  38 80 00 00 */	li r4, 0
/* 8038CF6C 00389ECC  7F 43 D3 78 */	mr r3, r26
/* 8038CF70 00389ED0  48 00 43 D1 */	bl fwide
/* 8038CF74 00389ED4  2C 03 00 00 */	cmpwi r3, 0
/* 8038CF78 00389ED8  40 82 00 10 */	bne lbl_8038CF88
/* 8038CF7C 00389EDC  7F 43 D3 78 */	mr r3, r26
/* 8038CF80 00389EE0  38 80 FF FF */	li r4, -1
/* 8038CF84 00389EE4  48 00 43 BD */	bl fwide
lbl_8038CF88:
/* 8038CF88 00389EE8  7F B9 E1 D7 */	mullw. r29, r25, r28
/* 8038CF8C 00389EEC  41 82 00 1C */	beq lbl_8038CFA8
/* 8038CF90 00389EF0  88 1A 00 0A */	lbz r0, 0xa(r26)
/* 8038CF94 00389EF4  28 00 00 00 */	cmplwi r0, 0
/* 8038CF98 00389EF8  40 82 00 10 */	bne lbl_8038CFA8
/* 8038CF9C 00389EFC  A0 1A 00 04 */	lhz r0, 4(r26)
/* 8038CFA0 00389F00  54 00 D7 7F */	rlwinm. r0, r0, 0x1a, 0x1d, 0x1f
/* 8038CFA4 00389F04  40 82 00 0C */	bne lbl_8038CFB0
lbl_8038CFA8:
/* 8038CFA8 00389F08  38 60 00 00 */	li r3, 0
/* 8038CFAC 00389F0C  48 00 02 94 */	b lbl_8038D240
lbl_8038CFB0:
/* 8038CFB0 00389F10  28 00 00 02 */	cmplwi r0, 2
/* 8038CFB4 00389F14  40 82 00 08 */	bne lbl_8038CFBC
/* 8038CFB8 00389F18  48 00 0D 15 */	bl __stdio_atexit
lbl_8038CFBC:
/* 8038CFBC 00389F1C  88 1A 00 05 */	lbz r0, 5(r26)
/* 8038CFC0 00389F20  3B E0 00 01 */	li r31, 1
/* 8038CFC4 00389F24  38 60 00 00 */	li r3, 0
/* 8038CFC8 00389F28  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 8038CFCC 00389F2C  41 82 00 14 */	beq lbl_8038CFE0
/* 8038CFD0 00389F30  88 1A 00 04 */	lbz r0, 4(r26)
/* 8038CFD4 00389F34  54 00 FF BE */	rlwinm r0, r0, 0x1f, 0x1e, 0x1f
/* 8038CFD8 00389F38  28 00 00 02 */	cmplwi r0, 2
/* 8038CFDC 00389F3C  40 82 00 08 */	bne lbl_8038CFE4
lbl_8038CFE0:
/* 8038CFE0 00389F40  38 60 00 01 */	li r3, 1
lbl_8038CFE4:
/* 8038CFE4 00389F44  2C 03 00 00 */	cmpwi r3, 0
/* 8038CFE8 00389F48  40 82 00 18 */	bne lbl_8038D000
/* 8038CFEC 00389F4C  88 1A 00 04 */	lbz r0, 4(r26)
/* 8038CFF0 00389F50  54 00 FF BE */	rlwinm r0, r0, 0x1f, 0x1e, 0x1f
/* 8038CFF4 00389F54  28 00 00 01 */	cmplwi r0, 1
/* 8038CFF8 00389F58  41 82 00 08 */	beq lbl_8038D000
/* 8038CFFC 00389F5C  3B E0 00 00 */	li r31, 0
lbl_8038D000:
/* 8038D000 00389F60  88 1A 00 08 */	lbz r0, 8(r26)
/* 8038D004 00389F64  54 00 DF 7F */	rlwinm. r0, r0, 0x1b, 0x1d, 0x1f
/* 8038D008 00389F68  40 82 00 54 */	bne lbl_8038D05C
/* 8038D00C 00389F6C  88 7A 00 04 */	lbz r3, 4(r26)
/* 8038D010 00389F70  54 60 EF BD */	rlwinm. r0, r3, 0x1d, 0x1e, 0x1e
/* 8038D014 00389F74  54 63 EF 7E */	rlwinm r3, r3, 0x1d, 0x1d, 0x1f
/* 8038D018 00389F78  41 82 00 44 */	beq lbl_8038D05C
/* 8038D01C 00389F7C  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 8038D020 00389F80  41 82 00 24 */	beq lbl_8038D044
/* 8038D024 00389F84  7F 43 D3 78 */	mr r3, r26
/* 8038D028 00389F88  38 80 00 00 */	li r4, 0
/* 8038D02C 00389F8C  38 A0 00 02 */	li r5, 2
/* 8038D030 00389F90  48 00 04 3D */	bl fseek
/* 8038D034 00389F94  2C 03 00 00 */	cmpwi r3, 0
/* 8038D038 00389F98  41 82 00 0C */	beq lbl_8038D044
/* 8038D03C 00389F9C  38 60 00 00 */	li r3, 0
/* 8038D040 00389FA0  48 00 02 00 */	b lbl_8038D240
lbl_8038D044:
/* 8038D044 00389FA4  88 1A 00 08 */	lbz r0, 8(r26)
/* 8038D048 00389FA8  38 60 00 01 */	li r3, 1
/* 8038D04C 00389FAC  50 60 2E 34 */	rlwimi r0, r3, 5, 0x18, 0x1a
/* 8038D050 00389FB0  7F 43 D3 78 */	mr r3, r26
/* 8038D054 00389FB4  98 1A 00 08 */	stb r0, 8(r26)
/* 8038D058 00389FB8  4B FF FE 99 */	bl __prep_buffer
lbl_8038D05C:
/* 8038D05C 00389FBC  88 1A 00 08 */	lbz r0, 8(r26)
/* 8038D060 00389FC0  54 00 DF 7E */	rlwinm r0, r0, 0x1b, 0x1d, 0x1f
/* 8038D064 00389FC4  28 00 00 01 */	cmplwi r0, 1
/* 8038D068 00389FC8  41 82 00 1C */	beq lbl_8038D084
/* 8038D06C 00389FCC  38 60 00 01 */	li r3, 1
/* 8038D070 00389FD0  38 00 00 00 */	li r0, 0
/* 8038D074 00389FD4  98 7A 00 0A */	stb r3, 0xa(r26)
/* 8038D078 00389FD8  38 60 00 00 */	li r3, 0
/* 8038D07C 00389FDC  90 1A 00 28 */	stw r0, 0x28(r26)
/* 8038D080 00389FE0  48 00 01 C0 */	b lbl_8038D240
lbl_8038D084:
/* 8038D084 00389FE4  28 1D 00 00 */	cmplwi r29, 0
/* 8038D088 00389FE8  7F 7E DB 78 */	mr r30, r27
/* 8038D08C 00389FEC  3B 80 00 00 */	li r28, 0
/* 8038D090 00389FF0  41 82 01 20 */	beq lbl_8038D1B0
/* 8038D094 00389FF4  80 9A 00 24 */	lwz r4, 0x24(r26)
/* 8038D098 00389FF8  80 7A 00 1C */	lwz r3, 0x1c(r26)
/* 8038D09C 00389FFC  7C 04 18 40 */	cmplw r4, r3
/* 8038D0A0 0038A000  40 82 00 0C */	bne lbl_8038D0AC
/* 8038D0A4 0038A004  2C 1F 00 00 */	cmpwi r31, 0
/* 8038D0A8 0038A008  41 82 01 08 */	beq lbl_8038D1B0
lbl_8038D0AC:
/* 8038D0AC 0038A00C  80 1A 00 20 */	lwz r0, 0x20(r26)
/* 8038D0B0 0038A010  7C 63 20 50 */	subf r3, r3, r4
/* 8038D0B4 0038A014  7C 03 00 50 */	subf r0, r3, r0
/* 8038D0B8 0038A018  90 1A 00 28 */	stw r0, 0x28(r26)
lbl_8038D0BC:
/* 8038D0BC 0038A01C  80 1A 00 28 */	lwz r0, 0x28(r26)
/* 8038D0C0 0038A020  3B 60 00 00 */	li r27, 0
/* 8038D0C4 0038A024  7C 00 E8 40 */	cmplw r0, r29
/* 8038D0C8 0038A028  90 01 00 08 */	stw r0, 8(r1)
/* 8038D0CC 0038A02C  40 81 00 08 */	ble lbl_8038D0D4
/* 8038D0D0 0038A030  93 A1 00 08 */	stw r29, 8(r1)
lbl_8038D0D4:
/* 8038D0D4 0038A034  88 1A 00 04 */	lbz r0, 4(r26)
/* 8038D0D8 0038A038  54 00 FF BE */	rlwinm r0, r0, 0x1f, 0x1e, 0x1f
/* 8038D0DC 0038A03C  28 00 00 01 */	cmplwi r0, 1
/* 8038D0E0 0038A040  40 82 00 30 */	bne lbl_8038D110
/* 8038D0E4 0038A044  80 A1 00 08 */	lwz r5, 8(r1)
/* 8038D0E8 0038A048  28 05 00 00 */	cmplwi r5, 0
/* 8038D0EC 0038A04C  41 82 00 24 */	beq lbl_8038D110
/* 8038D0F0 0038A050  7F C3 F3 78 */	mr r3, r30
/* 8038D0F4 0038A054  38 80 00 0A */	li r4, 0xa
/* 8038D0F8 0038A058  48 00 07 D1 */	bl __memrchr
/* 8038D0FC 0038A05C  7C 7B 1B 79 */	or. r27, r3, r3
/* 8038D100 0038A060  41 82 00 10 */	beq lbl_8038D110
/* 8038D104 0038A064  38 1B 00 01 */	addi r0, r27, 1
/* 8038D108 0038A068  7C 1E 00 50 */	subf r0, r30, r0
/* 8038D10C 0038A06C  90 01 00 08 */	stw r0, 8(r1)
lbl_8038D110:
/* 8038D110 0038A070  80 A1 00 08 */	lwz r5, 8(r1)
/* 8038D114 0038A074  28 05 00 00 */	cmplwi r5, 0
/* 8038D118 0038A078  41 82 00 3C */	beq lbl_8038D154
/* 8038D11C 0038A07C  80 7A 00 24 */	lwz r3, 0x24(r26)
/* 8038D120 0038A080  7F C4 F3 78 */	mr r4, r30
/* 8038D124 0038A084  4B C7 63 6D */	bl memcpy
/* 8038D128 0038A088  80 61 00 08 */	lwz r3, 8(r1)
/* 8038D12C 0038A08C  80 1A 00 24 */	lwz r0, 0x24(r26)
/* 8038D130 0038A090  7F DE 1A 14 */	add r30, r30, r3
/* 8038D134 0038A094  7F 9C 1A 14 */	add r28, r28, r3
/* 8038D138 0038A098  7C 00 1A 14 */	add r0, r0, r3
/* 8038D13C 0038A09C  7F A3 E8 50 */	subf r29, r3, r29
/* 8038D140 0038A0A0  90 1A 00 24 */	stw r0, 0x24(r26)
/* 8038D144 0038A0A4  80 61 00 08 */	lwz r3, 8(r1)
/* 8038D148 0038A0A8  80 1A 00 28 */	lwz r0, 0x28(r26)
/* 8038D14C 0038A0AC  7C 03 00 50 */	subf r0, r3, r0
/* 8038D150 0038A0B0  90 1A 00 28 */	stw r0, 0x28(r26)
lbl_8038D154:
/* 8038D154 0038A0B4  80 1A 00 28 */	lwz r0, 0x28(r26)
/* 8038D158 0038A0B8  28 00 00 00 */	cmplwi r0, 0
/* 8038D15C 0038A0BC  41 82 00 18 */	beq lbl_8038D174
/* 8038D160 0038A0C0  28 1B 00 00 */	cmplwi r27, 0
/* 8038D164 0038A0C4  40 82 00 10 */	bne lbl_8038D174
/* 8038D168 0038A0C8  88 1A 00 04 */	lbz r0, 4(r26)
/* 8038D16C 0038A0CC  54 00 FF BF */	rlwinm. r0, r0, 0x1f, 0x1e, 0x1f
/* 8038D170 0038A0D0  40 82 00 30 */	bne lbl_8038D1A0
lbl_8038D174:
/* 8038D174 0038A0D4  7F 43 D3 78 */	mr r3, r26
/* 8038D178 0038A0D8  38 80 00 00 */	li r4, 0
/* 8038D17C 0038A0DC  4B FF FC B1 */	bl __flush_buffer
/* 8038D180 0038A0E0  2C 03 00 00 */	cmpwi r3, 0
/* 8038D184 0038A0E4  41 82 00 1C */	beq lbl_8038D1A0
/* 8038D188 0038A0E8  38 60 00 01 */	li r3, 1
/* 8038D18C 0038A0EC  38 00 00 00 */	li r0, 0
/* 8038D190 0038A0F0  98 7A 00 0A */	stb r3, 0xa(r26)
/* 8038D194 0038A0F4  3B A0 00 00 */	li r29, 0
/* 8038D198 0038A0F8  90 1A 00 28 */	stw r0, 0x28(r26)
/* 8038D19C 0038A0FC  48 00 00 14 */	b lbl_8038D1B0
lbl_8038D1A0:
/* 8038D1A0 0038A100  28 1D 00 00 */	cmplwi r29, 0
/* 8038D1A4 0038A104  41 82 00 0C */	beq lbl_8038D1B0
/* 8038D1A8 0038A108  2C 1F 00 00 */	cmpwi r31, 0
/* 8038D1AC 0038A10C  40 82 FF 10 */	bne lbl_8038D0BC
lbl_8038D1B0:
/* 8038D1B0 0038A110  28 1D 00 00 */	cmplwi r29, 0
/* 8038D1B4 0038A114  41 82 00 68 */	beq lbl_8038D21C
/* 8038D1B8 0038A118  2C 1F 00 00 */	cmpwi r31, 0
/* 8038D1BC 0038A11C  40 82 00 60 */	bne lbl_8038D21C
/* 8038D1C0 0038A120  83 7A 00 1C */	lwz r27, 0x1c(r26)
/* 8038D1C4 0038A124  7C 1E EA 14 */	add r0, r30, r29
/* 8038D1C8 0038A128  83 FA 00 20 */	lwz r31, 0x20(r26)
/* 8038D1CC 0038A12C  7F 43 D3 78 */	mr r3, r26
/* 8038D1D0 0038A130  38 81 00 08 */	addi r4, r1, 8
/* 8038D1D4 0038A134  93 DA 00 1C */	stw r30, 0x1c(r26)
/* 8038D1D8 0038A138  93 BA 00 20 */	stw r29, 0x20(r26)
/* 8038D1DC 0038A13C  90 1A 00 24 */	stw r0, 0x24(r26)
/* 8038D1E0 0038A140  4B FF FC 4D */	bl __flush_buffer
/* 8038D1E4 0038A144  2C 03 00 00 */	cmpwi r3, 0
/* 8038D1E8 0038A148  41 82 00 14 */	beq lbl_8038D1FC
/* 8038D1EC 0038A14C  38 60 00 01 */	li r3, 1
/* 8038D1F0 0038A150  38 00 00 00 */	li r0, 0
/* 8038D1F4 0038A154  98 7A 00 0A */	stb r3, 0xa(r26)
/* 8038D1F8 0038A158  90 1A 00 28 */	stw r0, 0x28(r26)
lbl_8038D1FC:
/* 8038D1FC 0038A15C  80 01 00 08 */	lwz r0, 8(r1)
/* 8038D200 0038A160  7F 43 D3 78 */	mr r3, r26
/* 8038D204 0038A164  93 7A 00 1C */	stw r27, 0x1c(r26)
/* 8038D208 0038A168  7F 9C 02 14 */	add r28, r28, r0
/* 8038D20C 0038A16C  93 FA 00 20 */	stw r31, 0x20(r26)
/* 8038D210 0038A170  4B FF FC E1 */	bl __prep_buffer
/* 8038D214 0038A174  38 00 00 00 */	li r0, 0
/* 8038D218 0038A178  90 1A 00 28 */	stw r0, 0x28(r26)
lbl_8038D21C:
/* 8038D21C 0038A17C  88 1A 00 04 */	lbz r0, 4(r26)
/* 8038D220 0038A180  54 00 FF BE */	rlwinm r0, r0, 0x1f, 0x1e, 0x1f
/* 8038D224 0038A184  28 00 00 02 */	cmplwi r0, 2
/* 8038D228 0038A188  41 82 00 0C */	beq lbl_8038D234
/* 8038D22C 0038A18C  38 00 00 00 */	li r0, 0
/* 8038D230 0038A190  90 1A 00 28 */	stw r0, 0x28(r26)
lbl_8038D234:
/* 8038D234 0038A194  38 19 FF FF */	addi r0, r25, -1
/* 8038D238 0038A198  7C 1C 02 14 */	add r0, r28, r0
/* 8038D23C 0038A19C  7C 60 CB 96 */	divwu r3, r0, r25
lbl_8038D240:
/* 8038D240 0038A1A0  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 8038D244 0038A1A4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8038D248 0038A1A8  7C 08 03 A6 */	mtlr r0
/* 8038D24C 0038A1AC  38 21 00 30 */	addi r1, r1, 0x30
/* 8038D250 0038A1B0  4E 80 00 20 */	blr 

.global fwrite
fwrite:
/* 8038D254 0038A1B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8038D258 0038A1B8  7C 08 02 A6 */	mflr r0
/* 8038D25C 0038A1BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038D260 0038A1C0  4B FF FC E9 */	bl __fwrite
/* 8038D264 0038A1C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8038D268 0038A1C8  7C 08 03 A6 */	mtlr r0
/* 8038D26C 0038A1CC  38 21 00 10 */	addi r1, r1, 0x10
/* 8038D270 0038A1D0  4E 80 00 20 */	blr 