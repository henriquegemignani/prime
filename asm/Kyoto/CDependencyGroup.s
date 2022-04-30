.include "macros.inc"

.section .data

.global lbl_803EF830
lbl_803EF830:
	# ROM: 0x3EC830
	.4byte 0
	.4byte 0
	.4byte sub_8036505c
	.4byte 0

.section .text, "ax"  # 0x80003640 - 0x803CB1C0

.global FDependencyGroupFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer
FDependencyGroupFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer:
/* 80364F54 00361EB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80364F58 00361EB8  7C 08 02 A6 */	mflr r0
/* 80364F5C 00361EBC  3C 80 80 3E */	lis r4, lbl_803D8408@ha
/* 80364F60 00361EC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80364F64 00361EC4  38 84 84 08 */	addi r4, r4, lbl_803D8408@l
/* 80364F68 00361EC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80364F6C 00361ECC  7C BF 2B 78 */	mr r31, r5
/* 80364F70 00361ED0  38 A0 00 00 */	li r5, 0
/* 80364F74 00361ED4  93 C1 00 08 */	stw r30, 8(r1)
/* 80364F78 00361ED8  7C 7E 1B 78 */	mr r30, r3
/* 80364F7C 00361EDC  38 60 00 10 */	li r3, 0x10
/* 80364F80 00361EE0  4B FB 08 ED */	bl __nw__FUlPCcPCc
/* 80364F84 00361EE4  7C 64 1B 79 */	or. r4, r3, r3
/* 80364F88 00361EE8  41 82 00 10 */	beq lbl_80364F98
/* 80364F8C 00361EEC  7F E4 FB 78 */	mr r4, r31
/* 80364F90 00361EF0  48 00 04 29 */	bl __ct__16CDependencyGroupFR12CInputStream
/* 80364F94 00361EF4  7C 64 1B 78 */	mr r4, r3
lbl_80364F98:
/* 80364F98 00361EF8  7F C3 F3 78 */	mr r3, r30
/* 80364F9C 00361EFC  48 00 00 1D */	bl sub_80364fb8
/* 80364FA0 00361F00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80364FA4 00361F04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80364FA8 00361F08  83 C1 00 08 */	lwz r30, 8(r1)
/* 80364FAC 00361F0C  7C 08 03 A6 */	mtlr r0
/* 80364FB0 00361F10  38 21 00 10 */	addi r1, r1, 0x10
/* 80364FB4 00361F14  4E 80 00 20 */	blr 

.global sub_80364fb8
sub_80364fb8:
/* 80364FB8 00361F18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80364FBC 00361F1C  7C 08 02 A6 */	mflr r0
/* 80364FC0 00361F20  90 01 00 24 */	stw r0, 0x24(r1)
/* 80364FC4 00361F24  7C 04 00 D0 */	neg r0, r4
/* 80364FC8 00361F28  7C 00 23 78 */	or r0, r0, r4
/* 80364FCC 00361F2C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80364FD0 00361F30  54 00 0F FE */	srwi r0, r0, 0x1f
/* 80364FD4 00361F34  7C 7F 1B 78 */	mr r31, r3
/* 80364FD8 00361F38  38 61 00 08 */	addi r3, r1, 8
/* 80364FDC 00361F3C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80364FE0 00361F40  38 81 00 10 */	addi r4, r1, 0x10
/* 80364FE4 00361F44  98 01 00 10 */	stb r0, 0x10(r1)
/* 80364FE8 00361F48  48 00 01 55 */	bl sub_8036513c
/* 80364FEC 00361F4C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80364FF0 00361F50  38 00 00 00 */	li r0, 0
/* 80364FF4 00361F54  98 01 00 08 */	stb r0, 8(r1)
/* 80364FF8 00361F58  7C 03 00 D0 */	neg r0, r3
/* 80364FFC 00361F5C  7C 00 1B 78 */	or r0, r0, r3
/* 80365000 00361F60  54 00 0F FE */	srwi r0, r0, 0x1f
/* 80365004 00361F64  98 1F 00 00 */	stb r0, 0(r31)
/* 80365008 00361F68  90 7F 00 04 */	stw r3, 4(r31)
/* 8036500C 00361F6C  88 01 00 08 */	lbz r0, 8(r1)
/* 80365010 00361F70  28 00 00 00 */	cmplwi r0, 0
/* 80365014 00361F74  41 82 00 24 */	beq lbl_80365038
/* 80365018 00361F78  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8036501C 00361F7C  28 03 00 00 */	cmplwi r3, 0
/* 80365020 00361F80  41 82 00 18 */	beq lbl_80365038
/* 80365024 00361F84  81 83 00 00 */	lwz r12, 0(r3)
/* 80365028 00361F88  38 80 00 01 */	li r4, 1
/* 8036502C 00361F8C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80365030 00361F90  7D 89 03 A6 */	mtctr r12
/* 80365034 00361F94  4E 80 04 21 */	bctrl 
lbl_80365038:
/* 80365038 00361F98  38 61 00 10 */	addi r3, r1, 0x10
/* 8036503C 00361F9C  38 80 FF FF */	li r4, -1
/* 80365040 00361FA0  48 00 01 C5 */	bl sub_80365204
/* 80365044 00361FA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80365048 00361FA8  7F E3 FB 78 */	mr r3, r31
/* 8036504C 00361FAC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80365050 00361FB0  7C 08 03 A6 */	mtlr r0
/* 80365054 00361FB4  38 21 00 20 */	addi r1, r1, 0x20
/* 80365058 00361FB8  4E 80 00 20 */	blr 

.global sub_8036505c
sub_8036505c:
/* 8036505C 00361FBC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80365060 00361FC0  7C 08 02 A6 */	mflr r0
/* 80365064 00361FC4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80365068 00361FC8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8036506C 00361FCC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80365070 00361FD0  7C 9E 23 78 */	mr r30, r4
/* 80365074 00361FD4  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80365078 00361FD8  7C 7D 1B 79 */	or. r29, r3, r3
/* 8036507C 00361FDC  41 82 00 A0 */	beq lbl_8036511C
/* 80365080 00361FE0  3C 60 80 3F */	lis r3, lbl_803EF830@ha
/* 80365084 00361FE4  38 03 F8 30 */	addi r0, r3, lbl_803EF830@l
/* 80365088 00361FE8  90 1D 00 00 */	stw r0, 0(r29)
/* 8036508C 00361FEC  83 FD 00 04 */	lwz r31, 4(r29)
/* 80365090 00361FF0  28 1F 00 00 */	cmplwi r31, 0
/* 80365094 00361FF4  41 82 00 54 */	beq lbl_803650E8
/* 80365098 00361FF8  41 82 00 50 */	beq lbl_803650E8
/* 8036509C 00361FFC  41 82 00 44 */	beq lbl_803650E0
/* 803650A0 00362000  80 1F 00 04 */	lwz r0, 4(r31)
/* 803650A4 00362004  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 803650A8 00362008  54 00 18 38 */	slwi r0, r0, 3
/* 803650AC 0036200C  7C 03 02 14 */	add r0, r3, r0
/* 803650B0 00362010  90 61 00 0C */	stw r3, 0xc(r1)
/* 803650B4 00362014  7C 64 1B 78 */	mr r4, r3
/* 803650B8 00362018  90 01 00 14 */	stw r0, 0x14(r1)
/* 803650BC 0036201C  90 01 00 10 */	stw r0, 0x10(r1)
/* 803650C0 00362020  90 61 00 08 */	stw r3, 8(r1)
/* 803650C4 00362024  48 00 00 08 */	b lbl_803650CC
lbl_803650C8:
/* 803650C8 00362028  38 84 00 08 */	addi r4, r4, 8
lbl_803650CC:
/* 803650CC 0036202C  7C 04 00 40 */	cmplw r4, r0
/* 803650D0 00362030  40 82 FF F8 */	bne lbl_803650C8
/* 803650D4 00362034  28 03 00 00 */	cmplwi r3, 0
/* 803650D8 00362038  41 82 00 08 */	beq lbl_803650E0
/* 803650DC 0036203C  4B FB 08 55 */	bl Free__7CMemoryFPCv
lbl_803650E0:
/* 803650E0 00362040  7F E3 FB 78 */	mr r3, r31
/* 803650E4 00362044  4B FB 08 4D */	bl Free__7CMemoryFPCv
lbl_803650E8:
/* 803650E8 00362048  28 1D 00 00 */	cmplwi r29, 0
/* 803650EC 0036204C  41 82 00 20 */	beq lbl_8036510C
/* 803650F0 00362050  3C 60 80 3E */	lis r3, lbl_803D8D78@ha
/* 803650F4 00362054  38 03 8D 78 */	addi r0, r3, lbl_803D8D78@l
/* 803650F8 00362058  90 1D 00 00 */	stw r0, 0(r29)
/* 803650FC 0036205C  41 82 00 10 */	beq lbl_8036510C
/* 80365100 00362060  3C 60 80 3E */	lis r3, lbl_803D8D6C@ha
/* 80365104 00362064  38 03 8D 6C */	addi r0, r3, lbl_803D8D6C@l
/* 80365108 00362068  90 1D 00 00 */	stw r0, 0(r29)
lbl_8036510C:
/* 8036510C 0036206C  7F C0 07 35 */	extsh. r0, r30
/* 80365110 00362070  40 81 00 0C */	ble lbl_8036511C
/* 80365114 00362074  7F A3 EB 78 */	mr r3, r29
/* 80365118 00362078  4B FB 08 19 */	bl Free__7CMemoryFPCv
lbl_8036511C:
/* 8036511C 0036207C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80365120 00362080  7F A3 EB 78 */	mr r3, r29
/* 80365124 00362084  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80365128 00362088  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8036512C 0036208C  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80365130 00362090  7C 08 03 A6 */	mtlr r0
/* 80365134 00362094  38 21 00 30 */	addi r1, r1, 0x30
/* 80365138 00362098  4E 80 00 20 */	blr 

.global sub_8036513c
sub_8036513c:
/* 8036513C 0036209C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80365140 003620A0  7C 08 02 A6 */	mflr r0
/* 80365144 003620A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80365148 003620A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8036514C 003620AC  7C 7F 1B 78 */	mr r31, r3
/* 80365150 003620B0  48 00 00 19 */	bl sub_80365168
/* 80365154 003620B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80365158 003620B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8036515C 003620BC  7C 08 03 A6 */	mtlr r0
/* 80365160 003620C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80365164 003620C4  4E 80 00 20 */	blr 

.global sub_80365168
sub_80365168:
/* 80365168 003620C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8036516C 003620CC  7C 08 02 A6 */	mflr r0
/* 80365170 003620D0  3C A0 80 3E */	lis r5, lbl_803D8408@ha
/* 80365174 003620D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80365178 003620D8  38 05 84 08 */	addi r0, r5, lbl_803D8408@l
/* 8036517C 003620DC  38 A0 00 00 */	li r5, 0
/* 80365180 003620E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80365184 003620E4  7C 9F 23 78 */	mr r31, r4
/* 80365188 003620E8  7C 04 03 78 */	mr r4, r0
/* 8036518C 003620EC  93 C1 00 08 */	stw r30, 8(r1)
/* 80365190 003620F0  7C 7E 1B 78 */	mr r30, r3
/* 80365194 003620F4  38 60 00 08 */	li r3, 8
/* 80365198 003620F8  4B FB 06 D5 */	bl __nw__FUlPCcPCc
/* 8036519C 003620FC  28 03 00 00 */	cmplwi r3, 0
/* 803651A0 00362100  41 82 00 38 */	beq lbl_803651D8
/* 803651A4 00362104  3C 80 80 3E */	lis r4, lbl_803D8D6C@ha
/* 803651A8 00362108  3C A0 80 3E */	lis r5, lbl_803D8D78@ha
/* 803651AC 0036210C  38 04 8D 6C */	addi r0, r4, lbl_803D8D6C@l
/* 803651B0 00362110  3C 80 80 3F */	lis r4, lbl_803EF830@ha
/* 803651B4 00362114  90 03 00 00 */	stw r0, 0(r3)
/* 803651B8 00362118  38 C5 8D 78 */	addi r6, r5, lbl_803D8D78@l
/* 803651BC 0036211C  38 A0 00 00 */	li r5, 0
/* 803651C0 00362120  38 04 F8 30 */	addi r0, r4, lbl_803EF830@l
/* 803651C4 00362124  90 C3 00 00 */	stw r6, 0(r3)
/* 803651C8 00362128  98 BF 00 00 */	stb r5, 0(r31)
/* 803651CC 0036212C  80 9F 00 04 */	lwz r4, 4(r31)
/* 803651D0 00362130  90 83 00 04 */	stw r4, 4(r3)
/* 803651D4 00362134  90 03 00 00 */	stw r0, 0(r3)
lbl_803651D8:
/* 803651D8 00362138  7C 03 00 D0 */	neg r0, r3
/* 803651DC 0036213C  7C 00 1B 78 */	or r0, r0, r3
/* 803651E0 00362140  54 00 0F FE */	srwi r0, r0, 0x1f
/* 803651E4 00362144  98 1E 00 00 */	stb r0, 0(r30)
/* 803651E8 00362148  90 7E 00 04 */	stw r3, 4(r30)
/* 803651EC 0036214C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803651F0 00362150  83 C1 00 08 */	lwz r30, 8(r1)
/* 803651F4 00362154  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803651F8 00362158  7C 08 03 A6 */	mtlr r0
/* 803651FC 0036215C  38 21 00 10 */	addi r1, r1, 0x10
/* 80365200 00362160  4E 80 00 20 */	blr 

.global sub_80365204
sub_80365204:
/* 80365204 00362164  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80365208 00362168  7C 08 02 A6 */	mflr r0
/* 8036520C 0036216C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80365210 00362170  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80365214 00362174  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80365218 00362178  7C 9E 23 78 */	mr r30, r4
/* 8036521C 0036217C  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80365220 00362180  7C 7D 1B 79 */	or. r29, r3, r3
/* 80365224 00362184  41 82 00 78 */	beq lbl_8036529C
/* 80365228 00362188  88 1D 00 00 */	lbz r0, 0(r29)
/* 8036522C 0036218C  28 00 00 00 */	cmplwi r0, 0
/* 80365230 00362190  41 82 00 5C */	beq lbl_8036528C
/* 80365234 00362194  83 FD 00 04 */	lwz r31, 4(r29)
/* 80365238 00362198  28 1F 00 00 */	cmplwi r31, 0
/* 8036523C 0036219C  41 82 00 50 */	beq lbl_8036528C
/* 80365240 003621A0  41 82 00 44 */	beq lbl_80365284
/* 80365244 003621A4  80 1F 00 04 */	lwz r0, 4(r31)
/* 80365248 003621A8  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8036524C 003621AC  54 00 18 38 */	slwi r0, r0, 3
/* 80365250 003621B0  7C 03 02 14 */	add r0, r3, r0
/* 80365254 003621B4  90 61 00 0C */	stw r3, 0xc(r1)
/* 80365258 003621B8  7C 64 1B 78 */	mr r4, r3
/* 8036525C 003621BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80365260 003621C0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80365264 003621C4  90 61 00 08 */	stw r3, 8(r1)
/* 80365268 003621C8  48 00 00 08 */	b lbl_80365270
lbl_8036526C:
/* 8036526C 003621CC  38 84 00 08 */	addi r4, r4, 8
lbl_80365270:
/* 80365270 003621D0  7C 04 00 40 */	cmplw r4, r0
/* 80365274 003621D4  40 82 FF F8 */	bne lbl_8036526C
/* 80365278 003621D8  28 03 00 00 */	cmplwi r3, 0
/* 8036527C 003621DC  41 82 00 08 */	beq lbl_80365284
/* 80365280 003621E0  4B FB 06 B1 */	bl Free__7CMemoryFPCv
lbl_80365284:
/* 80365284 003621E4  7F E3 FB 78 */	mr r3, r31
/* 80365288 003621E8  4B FB 06 A9 */	bl Free__7CMemoryFPCv
lbl_8036528C:
/* 8036528C 003621EC  7F C0 07 35 */	extsh. r0, r30
/* 80365290 003621F0  40 81 00 0C */	ble lbl_8036529C
/* 80365294 003621F4  7F A3 EB 78 */	mr r3, r29
/* 80365298 003621F8  4B FB 06 99 */	bl Free__7CMemoryFPCv
lbl_8036529C:
/* 8036529C 003621FC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803652A0 00362200  7F A3 EB 78 */	mr r3, r29
/* 803652A4 00362204  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 803652A8 00362208  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 803652AC 0036220C  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 803652B0 00362210  7C 08 03 A6 */	mtlr r0
/* 803652B4 00362214  38 21 00 30 */	addi r1, r1, 0x30
/* 803652B8 00362218  4E 80 00 20 */	blr 

.global sub_803652bc
sub_803652bc:
/* 803652BC 0036221C  80 03 00 04 */	lwz r0, 4(r3)
/* 803652C0 00362220  38 C0 00 00 */	li r6, 0
/* 803652C4 00362224  80 A3 00 0C */	lwz r5, 0xc(r3)
/* 803652C8 00362228  54 00 18 38 */	slwi r0, r0, 3
/* 803652CC 0036222C  7C 65 02 14 */	add r3, r5, r0
/* 803652D0 00362230  48 00 00 18 */	b lbl_803652E8
lbl_803652D4:
/* 803652D4 00362234  80 05 00 00 */	lwz r0, 0(r5)
/* 803652D8 00362238  7C 04 00 40 */	cmplw r4, r0
/* 803652DC 0036223C  40 82 00 08 */	bne lbl_803652E4
/* 803652E0 00362240  38 C6 00 01 */	addi r6, r6, 1
lbl_803652E4:
/* 803652E4 00362244  38 A5 00 08 */	addi r5, r5, 8
lbl_803652E8:
/* 803652E8 00362248  7C 05 18 40 */	cmplw r5, r3
/* 803652EC 0036224C  40 82 FF E8 */	bne lbl_803652D4
/* 803652F0 00362250  7C C3 33 78 */	mr r3, r6
/* 803652F4 00362254  4E 80 00 20 */	blr 

.global ReadFromStream__16CDependencyGroupFR12CInputStream
ReadFromStream__16CDependencyGroupFR12CInputStream:
/* 803652F8 00362258  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803652FC 0036225C  7C 08 02 A6 */	mflr r0
/* 80365300 00362260  90 01 00 24 */	stw r0, 0x24(r1)
/* 80365304 00362264  BF 41 00 08 */	stmw r26, 8(r1)
/* 80365308 00362268  7C 9B 23 78 */	mr r27, r4
/* 8036530C 0036226C  7C 7A 1B 78 */	mr r26, r3
/* 80365310 00362270  7F 63 DB 78 */	mr r3, r27
/* 80365314 00362274  4B FD 99 71 */	bl ReadLong__12CInputStreamFv
/* 80365318 00362278  7C 7D 1B 78 */	mr r29, r3
/* 8036531C 0036227C  7F 43 D3 78 */	mr r3, r26
/* 80365320 00362280  7F A4 EB 78 */	mr r4, r29
/* 80365324 00362284  4B FD B6 61 */	bl "reserve__Q24rstl47vector<10SObjectTag,Q24rstl17rmemory_allocator>Fi"
/* 80365328 00362288  3B 80 00 00 */	li r28, 0
/* 8036532C 0036228C  48 00 00 70 */	b lbl_8036539C
lbl_80365330:
/* 80365330 00362290  7F 63 DB 78 */	mr r3, r27
/* 80365334 00362294  4B FD 99 51 */	bl ReadLong__12CInputStreamFv
/* 80365338 00362298  7C 7E 1B 78 */	mr r30, r3
/* 8036533C 0036229C  7F 63 DB 78 */	mr r3, r27
/* 80365340 003622A0  4B FD 99 45 */	bl ReadLong__12CInputStreamFv
/* 80365344 003622A4  80 1A 00 04 */	lwz r0, 4(r26)
/* 80365348 003622A8  7C 7F 1B 78 */	mr r31, r3
/* 8036534C 003622AC  80 BA 00 08 */	lwz r5, 8(r26)
/* 80365350 003622B0  7C 00 28 00 */	cmpw r0, r5
/* 80365354 003622B4  41 80 00 1C */	blt lbl_80365370
/* 80365358 003622B8  2C 05 00 00 */	cmpwi r5, 0
/* 8036535C 003622BC  7F 43 D3 78 */	mr r3, r26
/* 80365360 003622C0  38 80 00 04 */	li r4, 4
/* 80365364 003622C4  41 82 00 08 */	beq lbl_8036536C
/* 80365368 003622C8  54 A4 08 3C */	slwi r4, r5, 1
lbl_8036536C:
/* 8036536C 003622CC  4B FD B6 19 */	bl "reserve__Q24rstl47vector<10SObjectTag,Q24rstl17rmemory_allocator>Fi"
lbl_80365370:
/* 80365370 003622D0  80 1A 00 04 */	lwz r0, 4(r26)
/* 80365374 003622D4  80 7A 00 0C */	lwz r3, 0xc(r26)
/* 80365378 003622D8  54 00 18 38 */	slwi r0, r0, 3
/* 8036537C 003622DC  7C 63 02 15 */	add. r3, r3, r0
/* 80365380 003622E0  41 82 00 0C */	beq lbl_8036538C
/* 80365384 003622E4  93 C3 00 00 */	stw r30, 0(r3)
/* 80365388 003622E8  93 E3 00 04 */	stw r31, 4(r3)
lbl_8036538C:
/* 8036538C 003622EC  80 7A 00 04 */	lwz r3, 4(r26)
/* 80365390 003622F0  3B 9C 00 01 */	addi r28, r28, 1
/* 80365394 003622F4  38 03 00 01 */	addi r0, r3, 1
/* 80365398 003622F8  90 1A 00 04 */	stw r0, 4(r26)
lbl_8036539C:
/* 8036539C 003622FC  7C 1C E8 00 */	cmpw r28, r29
/* 803653A0 00362300  41 80 FF 90 */	blt lbl_80365330
/* 803653A4 00362304  BB 41 00 08 */	lmw r26, 8(r1)
/* 803653A8 00362308  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803653AC 0036230C  7C 08 03 A6 */	mtlr r0
/* 803653B0 00362310  38 21 00 20 */	addi r1, r1, 0x20
/* 803653B4 00362314  4E 80 00 20 */	blr 

.global __ct__16CDependencyGroupFR12CInputStream
__ct__16CDependencyGroupFR12CInputStream:
/* 803653B8 00362318  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803653BC 0036231C  7C 08 02 A6 */	mflr r0
/* 803653C0 00362320  90 01 00 14 */	stw r0, 0x14(r1)
/* 803653C4 00362324  38 00 00 00 */	li r0, 0
/* 803653C8 00362328  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803653CC 0036232C  7C 7F 1B 78 */	mr r31, r3
/* 803653D0 00362330  90 03 00 04 */	stw r0, 4(r3)
/* 803653D4 00362334  90 03 00 08 */	stw r0, 8(r3)
/* 803653D8 00362338  90 03 00 0C */	stw r0, 0xc(r3)
/* 803653DC 0036233C  4B FF FF 1D */	bl ReadFromStream__16CDependencyGroupFR12CInputStream
/* 803653E0 00362340  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803653E4 00362344  7F E3 FB 78 */	mr r3, r31
/* 803653E8 00362348  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803653EC 0036234C  7C 08 03 A6 */	mtlr r0
/* 803653F0 00362350  38 21 00 10 */	addi r1, r1, 0x10
/* 803653F4 00362354  4E 80 00 20 */	blr