.version 2

.init
.proc init
    if                      0, off_20AA
    ck                      FG_GAME, F_BONUS, 0
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -6822, -1738, 1850, 1800, -11736, 0, -16400, -1600, 0, 8, 4, 0, 7, 0, 0, 0, UNLOCKED, 0
    else                    0, off_20D0

off_20AA:
    sca_id_set              21, 0, 0
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -6822, -1738, 1850, 1800, 15742, 0, 9841, 2432, 0, 28, 4, 0, 7, 0, 0, 0, UNLOCKED, 0
    nop
    nop

off_20D0:
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -28552, -26272, 1850, 2300, -24315, 0, -24780, 2580, 0, 10, 0, 0, 0, 1, 0, 0, UNLOCKED, 0
    door_aot_se             2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -13694, -26290, 1800, 2200, -26159, -7200, -25126, 0, 0, 22, 2, 4, 8, 0, 0, 144, UNLOCK, 0
    if                      0, off_213A
    ck                      FG_GAME, F_BONUS, 1
    sce_em_set              0, 0, ENEMY_TYRANT_1, 0, 2, 0, 18, 0, 132, -2105, 0, -2589, 992, 0, 0
    aot_reset               2, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 2, 0, 0, 0, 255, 255
    endif
    nop

off_213A:
    evt_end                 0

.main
.proc main
    if                      0, off_219C
    ck                      FG_GAME, F_BONUS, 1
    set                     15, 4, 0
    set                     14, 3, 0
    evt_end                 0
    endif
    nop

off_219C:
    gosub                   main_02
    evt_end                 0

.proc aot
    gosub                   main_03
    evt_end                 0

.proc main_02
    sca_id_set              21, 0, 0
    if                      0, off_21E2
    ck                      FG_GAME, F_SCENARIO, 0
    if                      0, off_21D8
    ck                      FG_GENERAL_1, 49, 0
    aot_set                 6, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -8263, -15571, 2100, 5500, 255, 0, I_GOSUB, main_0E, 0, 0
    gosub                   main_08
    set                     FG_GENERAL_2, 3, 1
    gosub                   main_10
    else                    0, off_21DE

off_21D8:
    gosub                   main_09
    gosub                   main_0F
    nop
    nop

off_21DE:
    else                    0, off_2328

off_21E2:
    if                      0, off_221C
    ck                      FG_GENERAL_1, 0, 0
    if                      0, off_2212
    ck                      FG_GENERAL_1, 50, 0
    aot_set                 7, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -17467, -17777, 5480, 1958, 255, 0, I_GOSUB, main_0C, 0, 0
    set                     FG_GENERAL_2, 8, 1
    gosub                   main_06
    gosub                   main_0F
    else                    0, off_2218

off_2212:
    gosub                   main_07
    gosub                   main_0F
    nop
    nop

off_2218:
    else                    0, off_2326

off_221C:
    cut_replace             0, 14
    nop
    if                      0, off_2230
    cmp                     0, V_LAST_RDT, CMP_EQ, 264
    cut_chg                 14
    cut_auto                1
    endif
    nop

off_2230:
    aot_set                 10, SCE_AUTO, SAT_PL | SAT_UNDER, 0, 0, -6022, -2438, 1850, 2800, 255, 0, 24, 22, 0, 0
    if                      0, off_22C2
    ck                      FG_ENEMY, 105, 0
    sce_em_set              0, 0, ENEMY_TYRANT_1, 0, 136, 0, 18, 0, 105, -15025, 0, -21383, -904, 0, 0
    aot_reset               1, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_12, 0, 0
    aot_reset               2, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_13, 0, 0
    item_aot_set            5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 194, -900, -900, 1800, 1800, ITEM_HANDGUNAMMO, 30, 205, 255, 1
    aot_reset               5, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_set                 9, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -4396, -3958, 2400, 4900, 255, 0, I_GOSUB, main_16, 0, 0
    gosub                   main_21
    aot_reset               0, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_17, 0, 0
    cut_chg                 12
    set                     FG_GENERAL_2, 5, 1
    gosub                   main_0F
    else                    0, off_2324

off_22C2:
    sca_id_set              21, 128, 252
    aot_reset               0, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               10, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_11, 0, 0
    gosub                   main_0F
    if                      0, off_2322
    ck                      FG_GENERAL_1, 185, 1
    item_aot_set            5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -2404, -8529, 1800, 1800, ITEM_HANDGUNAMMO, 30, 205, 9, 1
    obj_model_set           9, 0, 0, 0, 0, 0, 0, 10, 16, -1504, 0, -7629, 0, 576, 0, 0, 0, 0, 0, 0, 0, 0, 0
    endif
    nop

off_2322:
    nop
    nop

off_2324:
    nop
    nop

off_2326:
    nop
    nop

off_2328:
    aot_set                 8, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -15263, -20271, 1800, 3600, 255, 0, I_GOSUB, main_15, 0, 0
    item_aot_set            3, SCE_ITEM, SAT_AUTO, 0, 0, 32000, 32000, 1, 1, ITEM_HANDGUNAMMO, 15, 13, 255, 1
    if                      0, off_2398
    ck                      FG_GAME, F_SCENARIO, 1
    item_aot_set            4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -1639, -1119, 2200, 2000, ITEM_HERBG, 1, 146, 0, 1
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, -1124, 0, -326, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    endif
    nop

off_2398:
    evt_end                 0

.proc main_03
    if                      0, off_23A6
    ck                      FG_GAME, F_BONUS, 1
    evt_end                 0
    endif
    nop

off_23A6:
    if                      0, off_23C4
    ck                      FG_GENERAL_1, 50, 0
    cmp                     0, V_CUT, CMP_EQ, 3
    ck                      FG_GENERAL_2, 0, 0
    ck                      FG_GENERAL_2, 8, 1
    set                     FG_GENERAL_2, 0, 1
    gosub                   main_0D
    endif
    nop

off_23C4:
    if                      0, off_23D4
    ck                      FG_GENERAL_2, 1, 1
    ck                      FG_GAME, 11, 1
    gosub                   main_04
    endif
    nop

off_23D4:
    if                      0, off_23E4
    ck                      FG_GENERAL_2, 2, 1
    ck                      FG_GAME, 11, 1
    gosub                   main_05
    endif
    nop

off_23E4:
    if                      0, off_2410
    ck                      FG_GENERAL_2, 3, 1
    ck                      FG_ENEMY, 0, 1
    ck                      FG_ENEMY, 1, 1
    ck                      FG_ENEMY, 2, 1
    ck                      FG_ENEMY, 3, 1
    ck                      FG_ENEMY, 4, 1
    ck                      FG_ENEMY, 5, 1
    set                     FG_GENERAL_2, 3, 0
    sce_bgm_control         1, 5, 0, 0, 22
    endif
    nop

off_2410:
    if                      0, off_2430
    ck                      FG_GENERAL_2, 5, 1
    ck                      FG_GENERAL_2, 6, 0
    unk                     133, 0, 2, 0, 0, 132
    set                     FG_GENERAL_2, 6, 1
    sce_bgm_control         0, 1, 90, 0, 22
    gosub                   main_25
    endif
    nop

off_2430:
    if                      0, off_2454
    ck                      FG_GENERAL_2, 6, 1
    ck                      FG_GENERAL_2, 7, 0
    ck                      FG_ENEMY, 105, 1
    set                     FG_GENERAL_2, 7, 1
    sce_bgm_control         0, 5, 90, 0, 22
    set                     FG_GENERAL_1, 185, 1
    evt_exec                255, I_GOSUB, main_22
    endif
    nop

off_2454:
    evt_end                 0

.proc main_04
    switch                  26, off_2524
    case                    0, off_246E, 0
    sce_bgm_control         1, 0, 0, 40, 64
    sce_bgm_control         1, 0, 1, 40, 64
    break                   0

off_246E:
    case                    0, off_2482, 1
    sce_bgm_control         1, 0, 1, 60, 64
    sce_bgm_control         1, 0, 2, 60, 64
    break                   0

off_2482:
    case                    0, off_2496, 2
    sce_bgm_control         1, 0, 1, 90, 22
    sce_bgm_control         1, 0, 2, 90, 22
    break                   0

off_2496:
    case                    0, off_24AA, 3
    sce_bgm_control         1, 0, 1, 100, 105
    sce_bgm_control         1, 0, 2, 100, 105
    break                   0

off_24AA:
    case                    0, off_24BE, 4
    sce_bgm_control         1, 0, 1, 90, 105
    sce_bgm_control         1, 0, 2, 90, 105
    break                   0

off_24BE:
    case                    0, off_24D2, 5
    sce_bgm_control         1, 0, 1, 60, 64
    sce_bgm_control         1, 0, 2, 60, 64
    break                   0

off_24D2:
    case                    0, off_24E6, 6
    sce_bgm_control         1, 0, 1, 40, 64
    sce_bgm_control         1, 0, 2, 40, 64
    break                   0

off_24E6:
    case                    0, off_24FA, 7
    sce_bgm_control         1, 0, 1, 90, 22
    sce_bgm_control         1, 0, 2, 90, 22
    break                   0

off_24FA:
    case                    0, off_250E, 8
    sce_bgm_control         1, 0, 1, 60, 64
    sce_bgm_control         1, 0, 2, 60, 64
    break                   0

off_250E:
    case                    0, off_2522, 9
    sce_bgm_control         1, 0, 1, 90, 22
    sce_bgm_control         1, 0, 2, 90, 22
    break                   0

off_2522:
    eswitch                 0

off_2524:
    evt_end                 0

.proc main_05
    switch                  26, off_25B8
    case                    0, off_2538, 0
    sce_bgm_control         1, 0, 1, 40, 64
    break                   0

off_2538:
    case                    0, off_2546, 1
    sce_bgm_control         1, 0, 1, 60, 64
    break                   0

off_2546:
    case                    0, off_2554, 2
    sce_bgm_control         1, 0, 1, 90, 22
    break                   0

off_2554:
    case                    0, off_2562, 3
    sce_bgm_control         1, 0, 1, 100, 105
    break                   0

off_2562:
    case                    0, off_2570, 4
    sce_bgm_control         1, 0, 1, 90, 105
    break                   0

off_2570:
    case                    0, off_257E, 5
    sce_bgm_control         1, 0, 1, 60, 64
    break                   0

off_257E:
    case                    0, off_258C, 6
    sce_bgm_control         1, 0, 1, 40, 64
    break                   0

off_258C:
    case                    0, off_259A, 7
    sce_bgm_control         1, 0, 1, 90, 22
    break                   0

off_259A:
    case                    0, off_25A8, 8
    sce_bgm_control         1, 0, 1, 60, 64
    break                   0

off_25A8:
    case                    0, off_25B6, 9
    sce_bgm_control         1, 0, 1, 90, 22
    break                   0

off_25B6:
    eswitch                 0

off_25B8:
    evt_end                 0

.proc main_06
    sce_em_set              0, 1, ENEMY_CROW, 64, 64, 0, 13, 0, 1, -12173, -2580, -16071, -2048, 0, 0
    sce_em_set              0, 2, ENEMY_CROW, 0, 64, 0, 13, 0, 2, -13758, -700, -17843, -1712, 0, 0
    sce_em_set              0, 3, ENEMY_CROW, 0, 64, 0, 13, 0, 3, -14588, -360, -17688, 64, 0, 0
    sce_em_set              0, 4, ENEMY_CROW, 0, 64, 0, 13, 0, 4, -14618, -610, -16698, -1760, 0, 0
    sce_em_set              0, 5, ENEMY_CROW, 0, 64, 0, 13, 0, 5, -13776, -800, -16819, 1872, 0, 0
    sce_em_set              0, 6, ENEMY_CROW, 0, 64, 0, 13, 0, 6, -15376, -350, -18019, 336, 0, 0
    sce_em_set              0, 7, ENEMY_CROW, 0, 64, 0, 13, 0, 7, -13076, -470, -17819, -2704, 0, 0
    sce_em_set              0, 8, ENEMY_CROW, 64, 64, 0, 13, 0, 8, -12173, -2580, -17341, -2048, 0, 0
    evt_end                 0

.proc main_07
    sce_em_set              0, 1, ENEMY_CROW, 64, 0, 0, 13, 0, 1, -12173, -2580, -16071, -2048, 0, 0
    sce_em_set              0, 2, ENEMY_CROW, 0, 0, 0, 13, 0, 2, -13758, -700, -17843, -1712, 0, 0
    sce_em_set              0, 3, ENEMY_CROW, 0, 0, 0, 13, 0, 3, -14588, -360, -17688, 64, 0, 0
    sce_em_set              0, 4, ENEMY_CROW, 0, 0, 0, 13, 0, 4, -14618, -610, -16698, -1760, 0, 0
    sce_em_set              0, 5, ENEMY_CROW, 0, 0, 0, 13, 0, 5, -13776, -800, -16819, 1872, 0, 0
    sce_em_set              0, 6, ENEMY_CROW, 0, 0, 0, 13, 0, 6, -15376, -350, -18019, 336, 0, 0
    sce_em_set              0, 7, ENEMY_CROW, 0, 0, 0, 13, 0, 7, -13076, -470, -17819, -2704, 0, 0
    sce_em_set              0, 8, ENEMY_CROW, 64, 0, 0, 13, 0, 8, -12173, -2580, -17341, -2048, 0, 0
    evt_end                 0

.proc main_08
    sce_em_set              0, 0, ENEMY_CROW, 2, 64, 0, 13, 0, 0, -2900, -2500, -15500, 3096, 0, 0
    sce_em_set              0, 1, ENEMY_CROW, 2, 64, 0, 13, 0, 1, -6900, -3400, -15500, 3096, 0, 0
    sce_em_set              0, 2, ENEMY_CROW, 2, 64, 0, 13, 0, 2, -9800, -3500, -15500, 3096, 0, 0
    sce_em_set              0, 3, ENEMY_CROW, 2, 64, 0, 13, 0, 3, -10300, -2900, -15500, 3096, 0, 0
    sce_em_set              0, 4, ENEMY_CROW, 0, 0, 0, 13, 0, 4, -12894, -2360, -20912, 2048, 0, 0
    sce_em_set              0, 5, ENEMY_CROW, 0, 0, 0, 13, 0, 5, -12894, -2350, -17312, 2048, 0, 0
    evt_end                 0

.proc main_09
    sce_em_set              0, 0, ENEMY_CROW, 0, 0, 0, 13, 0, 0, -2860, -2400, -14064, 3072, 0, 0
    sce_em_set              0, 1, ENEMY_CROW, 0, 0, 0, 13, 0, 1, -6360, -2400, -14064, 3072, 0, 0
    sce_em_set              0, 2, ENEMY_CROW, 0, 0, 0, 13, 0, 2, -9660, -2400, -14064, 3072, 0, 0
    sce_em_set              0, 3, ENEMY_CROW, 0, 0, 0, 13, 0, 3, -12958, -2400, -17065, 2048, 0, 0
    sce_em_set              0, 4, ENEMY_CROW, 0, 0, 0, 13, 0, 4, -14858, -400, -17865, 256, 0, 0
    evt_end                 0

.proc main_0A
    sce_em_set              0, 0, ENEMY_CROW, 0, 0, 0, 13, 0, 255, -2303, -3000, -2850, -624, 0, 0
    evt_end                 0

.proc main_0B
    aot_reset               6, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    cut_chg                 7
    cut_auto                1
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -9113, 0, -12860
    work_set                WK_ENEMY, 0
    nop
    member_set              23, 2, 0
    se_on                   2, 266, 3, 0, 0, 0
    sleep                   10, 40
    cut_old
    nop
    evt_end                 0

.proc main_0C
    set                     FG_GENERAL_1, 50, 1
    aot_reset               7, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    work_set                WK_ENEMY, 1
    nop
    if                      0, off_2884
    member_cmp              0, 0, 6, 1, 0
    member_set              23, 1, 0
    endif
    nop

off_2884:
    work_set                WK_ENEMY, 2
    nop
    if                      0, off_2898
    member_cmp              0, 0, 6, 1, 0
    member_set              23, 1, 0
    endif
    nop

off_2898:
    work_set                WK_ENEMY, 3
    nop
    if                      0, off_28AC
    member_cmp              0, 0, 6, 1, 0
    member_set              23, 1, 0
    endif
    nop

off_28AC:
    work_set                WK_ENEMY, 4
    nop
    if                      0, off_28C0
    member_cmp              0, 0, 6, 1, 0
    member_set              23, 1, 0
    endif
    nop

off_28C0:
    work_set                WK_ENEMY, 5
    nop
    if                      0, off_28D4
    member_cmp              0, 0, 6, 1, 0
    member_set              23, 1, 0
    endif
    nop

off_28D4:
    work_set                WK_ENEMY, 6
    nop
    if                      0, off_28E8
    member_cmp              0, 0, 6, 1, 0
    member_set              23, 1, 0
    endif
    nop

off_28E8:
    work_set                WK_ENEMY, 7
    nop
    if                      0, off_28FC
    member_cmp              0, 0, 6, 1, 0
    member_set              23, 1, 0
    endif
    nop

off_28FC:
    work_set                WK_ENEMY, 8
    nop
    if                      0, off_2910
    member_cmp              0, 0, 6, 1, 0
    member_set              23, 1, 0
    endif
    nop

off_2910:
    evt_end                 0

.proc main_0D
    work_set                WK_ENEMY, 1
    nop
    member_copy             V_TEMP, 5
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    member_set2             5, V_TEMP
    nop
    work_set                WK_ENEMY, 2
    nop
    member_copy             V_TEMP, 5
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    member_set2             5, V_TEMP
    nop
    work_set                WK_ENEMY, 3
    nop
    member_copy             V_TEMP, 5
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    member_set2             5, V_TEMP
    nop
    work_set                WK_ENEMY, 4
    nop
    member_copy             V_TEMP, 5
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    member_set2             5, V_TEMP
    nop
    work_set                WK_ENEMY, 5
    nop
    member_copy             V_TEMP, 5
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    member_set2             5, V_TEMP
    nop
    work_set                WK_ENEMY, 6
    nop
    member_copy             V_TEMP, 5
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    member_set2             5, V_TEMP
    nop
    work_set                WK_ENEMY, 7
    nop
    member_copy             V_TEMP, 5
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    member_set2             5, V_TEMP
    nop
    work_set                WK_ENEMY, 8
    nop
    member_copy             V_TEMP, 5
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    member_set2             5, V_TEMP
    nop
    evt_end                 0

.proc main_0E
    set                     FG_GENERAL_1, 49, 1
    aot_reset               6, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    work_set                WK_ENEMY, 0
    nop
    member_set              23, 4, 0
    work_set                WK_ENEMY, 1
    nop
    member_set              23, 4, 0
    work_set                WK_ENEMY, 2
    nop
    member_set              23, 4, 0
    work_set                WK_ENEMY, 3
    nop
    member_set              23, 4, 0
    sleep                   10, 2
    set                     14, 4, 0
    set                     15, 5, 0
    nop_8a                  0, 3, 0, 3, 0
    nop_8a                  0, 3, 0, 7, 0
    nop_8b                  250, 8, 0, 0, 0
    sca_id_set              15, 128, 222
    sca_id_set              20, 128, 222
    sce_espr_on             0, 528, 0, 10240, -2200, -2200, -13600, 3072
    sce_espr_on             0, 784, 0, 9728, -2200, -2100, -14000, 3072
    sce_espr_on             0, 1040, 0, 9984, -2200, -2250, -14100, 3072
    sce_espr_on             0, 529, 0, 8192, -2200, -2150, -13500, 3072
    sce_espr_on             0, 785, 0, 6144, -2200, -2100, -13900, 3072
    sce_espr_on             0, 1041, 0, 8448, -2200, -2200, -14200, 3072
    sce_espr_on             0, 19, 0, 8192, -2700, -3600, -14400, 3072
    sce_espr_on             0, 19, 0, 8192, -6300, -3200, -14600, 3072
    sce_espr_on             0, 19, 0, 8192, -9900, -3400, -14500, 3072
    sce_espr_on             0, 274, 0, 8192, -2800, -3200, -14500, 3072
    sce_espr_on             0, 274, 0, 8192, -6200, -3100, -14600, 3072
    sce_espr_on             0, 274, 0, 8192, -9800, -3300, -14400, 3072
    sce_espr_on             0, 529, 0, 6144, -2800, -3000, -14400, 3072
    sce_espr_on             0, 529, 0, 6144, -6300, -2900, -14400, 3072
    sce_espr_on             0, 529, 0, 6144, -9800, -2800, -14500, 3072
    sce_espr_on             0, 784, 0, 6144, -2550, -2700, -14600, 3072
    sce_espr_on             0, 784, 0, 6144, -6350, -2600, -14500, 3072
    sce_espr_on             0, 784, 0, 6144, -10000, -2500, -14600, 3072
    sce_espr_on             0, 1040, 0, 4096, -2600, -2100, -14400, 3072
    sce_espr_on             0, 1040, 0, 4096, -6250, -2800, -14600, 3072
    sce_espr_on             0, 1040, 0, 4096, -9800, -2300, -14500, 3072
    sce_espr_on             0, 1041, 0, 4096, -2700, -1800, -14400, 3072
    sce_espr_on             0, 1041, 0, 4096, -6300, -1700, -14400, 3072
    sce_espr_on             0, 1041, 0, 4096, -9750, -2600, -14500, 3072
    sce_espr_on             0, 785, 0, 4096, -2800, -1900, -14600, 3072
    sce_espr_on             0, 785, 0, 4096, -6450, -1600, -14500, 3072
    sce_espr_on             0, 785, 0, 4096, -9650, -2550, -14500, 3072
    sleep                   10, 3
    se_on                   2, 289, 0, -3940, 0, -14000
    sleep                   10, 5
    se_on                   2, 289, 0, -3940, 0, -14000
    sce_bgm_control         0, 2, 0, 0, 22
    sce_bgm_control         1, 1, 90, 0, 22
    gosub                   main_24
    sleep                   10, 13
    sca_id_set              15, 128, 254
    sca_id_set              20, 128, 254
    flr_set                 1, 1
    set                     14, 3, 1
    set                     15, 4, 1
    nop
    evt_end                 0

.proc main_0F
    flr_set                 1, 1
    set                     14, 4, 0
    set                     15, 5, 0
    set                     14, 3, 1
    set                     15, 4, 1
    nop
    gosub                   main_05
    set                     FG_GENERAL_2, 2, 1
    evt_end                 0

.proc main_10
    set                     14, 4, 1
    set                     15, 5, 1
    set                     14, 3, 0
    set                     15, 4, 0
    evt_end                 0

.proc main_11
    message_on              0, 1, 0, 255, 255
    evt_next
    nop
    evt_end                 0

.proc main_12
    if                      0, off_2C34
    ck                      FG_ENEMY, 105, 1
    gosub                   main_14
    endif
    nop

off_2C34:
    set                     FG_ENEMY, 105, 1
    aot_reset               1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 5, 161, 0, 0, 52, 159
    aot_on                  1
    evt_end                 0

.proc main_13
    if                      0, off_2C6E
    ck                      31, 16, 1
    if                      0, off_2C5A
    ck                      FG_ENEMY, 105, 1
    gosub                   main_14
    endif
    nop

off_2C5A:
    set                     FG_ENEMY, 105, 1
    aot_reset               2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 209, 153, 224, 227, 218, 157
    aot_on                  2
    else                    0, off_2C86

off_2C6E:
    aot_reset               2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 209, 153, 224, 227, 218, 157
    aot_on                  2
    aot_reset               2, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_13, 0, 0
    nop
    nop

off_2C86:
    evt_end                 0

.proc main_14
    set                     FG_STATE, 7, 1
    sce_fade_set            2, 2, 7, 0, 4
    sleep                   10, 20
    cut_chg                 13
    work_set                WK_ENEMY, 0
    nop
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_OR, V_TEMP, 2
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             0, V_TEMP
    nop
    pos_set                 0, -2695, 0, -2521
    member_set              15, 0, 4
    member_set              23, 1, 0
    sce_fade_set            2, 2, 7, 0, 254
    sleep                   10, 120
    member_set              23, 1, 0
    sleep                   10, 120
    se_on                   2, 13, 3, 0, 0, 0
    sleep                   10, 80
    set                     FG_STATE, 7, 0
    evt_end                 0

.proc main_15
    if                      0, off_2CFE
    ck                      FG_GENERAL_2, 4, 0
    set                     FG_GENERAL_2, 4, 1
    message_on              0, 0, 0, 255, 255
    else                    0, off_2D16

off_2CFE:
    if                      0, off_2D0C
    ck                      FG_ITEM, 13, 0
    aot_on                  3
    else                    0, off_2D14

off_2D0C:
    message_on              0, 0, 0, 255, 255
    nop
    nop

off_2D14:
    nop
    nop

off_2D16:
    evt_end                 0

.proc main_16
    set                     FG_GAME, 25, 1
    aot_reset               9, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               0, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               10, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_11, 0, 0
    nop_8a                  0, 4, 0, 0, 0
    nop_8b                  100, 10, 0, 0, 0
    nop_8c                  0, 100, 200, 10, 0, 10, 0
    nop_8b                  200, 15, 0, 20, 0
    se_on                   2, 268, 1, 0, 0, 0
    evt_exec                255, I_GOSUB, main_20
    sleep                   10, 5
    set                     FG_STATE, 7, 1
    sleep                   10, 5
    set                     FG_GAME, 27, 1
    work_set                WK_PLAYER, 0
    nop
    plc_neck                1, -5836, -5400, 584, 128, 128
    sleep                   10, 4
    plc_dest                0, 21, 32, 2291, 128
    gosub                   main_23
    evt_chain               0, 24, 24
    evt_end                 0

.proc main_17
    set                     FG_GAME, 25, 1
    set                     FG_STATE, 7, 1
    aot_reset               9, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               0, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               10, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_11, 0, 0
    nop_8a                  0, 4, 0, 0, 0
    nop_8b                  100, 10, 0, 0, 0
    nop_8c                  0, 100, 200, 10, 0, 10, 0
    nop_8b                  200, 15, 0, 20, 0
    se_on                   2, 268, 1, 0, 0, 0
    evt_exec                255, I_GOSUB, main_20
    sleep                   10, 10
    set                     FG_GAME, 27, 1
    work_set                WK_PLAYER, 0
    nop
    plc_neck                1, -5836, -5400, 584, 128, 128
    sleep                   10, 4
    plc_dest                0, 21, 32, 2931, 128
    gosub                   main_23
    plc_motion              11, 1, 0
    sleep                   10, 10
    evt_chain               0, 24, 24
    evt_end                 0

.proc main_18
    nop_8b                  255, 20, 0, 0, 0
    nop_8c                  0, 255, 150, 20, 0, 20, 0
    nop_8b                  100, 30, 0, 40, 0
    nop_8c                  0, 100, 70, 20, 0, 70, 0
    evt_exec                255, I_GOSUB, main_1F
    sleep                   10, 5
    evt_exec                255, I_GOSUB, main_19
    evt_exec                255, I_GOSUB, main_1A
    evt_exec                255, I_GOSUB, main_1B
    evt_exec                255, I_GOSUB, main_1C
    evt_exec                255, I_GOSUB, main_1D
    evt_exec                255, I_GOSUB, main_1E
    cut_chg                 15
    set                     FG_GAME, 29, 1
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -3813, 0, -2045
    member_set              15, 251, 8
    plc_motion              10, 15, 0
    sleep                   10, 35
    member_set              12, 0, 0
    set                     FG_GAME, 29, 0
    sleep                   10, 80
    work_set                WK_ENEMY, 0
    nop
    member_copy             V_TEMP, 7
    nop
    calc                    0, OP_AND, V_TEMP, 32767
    member_set2             7, V_TEMP
    nop
    cut_chg                 14
    cut_auto                1
    sca_id_set              21, 128, 252
    work_set                WK_PLAYER, 0
    plc_ret
    set                     FG_STATE, 7, 0
    set                     FG_GAME, 27, 0
    set                     FG_GAME, 25, 0
    evt_end                 0

.proc main_19
    work_set                WK_OBJECT, 1
    nop
    speed_set               1, 50
    speed_set               2, -80
    speed_set               3, -110
    for                     0, off_2EC4, 11
    add_speed
    evt_next
    next                    0

off_2EC4:
    speed_set               1, 0
    speed_set               2, 0
    speed_set               3, 20
    for                     0, off_2EDA, 20
    add_speed
    evt_next
    next                    0

off_2EDA:
    speed_set               1, 0
    speed_set               7, 20
    speed_set               3, 0
    for                     0, off_2EF2, 25
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_2EF2:
    member_copy             V_TEMP, 1
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             1, V_TEMP
    nop
    evt_end                 0

.proc main_1A
    work_set                WK_OBJECT, 2
    nop
    speed_set               1, 100
    speed_set               7, 20
    speed_set               5, 64
    speed_set               4, 64
    for                     0, off_2F22, 30
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_2F22:
    member_copy             V_TEMP, 1
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             1, V_TEMP
    nop
    evt_end                 0

.proc main_1B
    sleep                   10, 5
    work_set                WK_OBJECT, 3
    nop
    speed_set               1, 100
    speed_set               7, 20
    speed_set               5, -32
    speed_set               4, 32
    for                     0, off_2F56, 30
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_2F56:
    member_copy             V_TEMP, 1
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             1, V_TEMP
    nop
    evt_end                 0

.proc main_1C
    work_set                WK_OBJECT, 4
    nop
    speed_set               1, 100
    speed_set               2, 20
    speed_set               7, 20
    speed_set               5, 64
    speed_set               4, -32
    for                     0, off_2F8A, 30
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_2F8A:
    member_copy             V_TEMP, 1
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             1, V_TEMP
    nop
    evt_end                 0

.proc main_1D
    work_set                WK_OBJECT, 5
    nop
    speed_set               1, 50
    speed_set               2, 80
    speed_set               3, 101
    for                     0, off_2FB4, 11
    add_speed
    evt_next
    next                    0

off_2FB4:
    speed_set               1, 0
    speed_set               2, 0
    speed_set               3, 10
    for                     0, off_2FCA, 10
    add_speed
    evt_next
    next                    0

off_2FCA:
    speed_set               3, -10
    for                     0, off_2FD8, 10
    add_speed
    evt_next
    next                    0

off_2FD8:
    speed_set               3, 10
    for                     0, off_2FE6, 10
    add_speed
    evt_next
    next                    0

off_2FE6:
    speed_set               3, -10
    for                     0, off_2FF4, 10
    add_speed
    evt_next
    next                    0

off_2FF4:
    speed_set               3, 10
    for                     0, off_3002, 10
    add_speed
    evt_next
    next                    0

off_3002:
    speed_set               3, -10
    for                     0, off_3010, 10
    add_speed
    evt_next
    next                    0

off_3010:
    speed_set               1, 0
    speed_set               7, 20
    speed_set               3, 0
    for                     0, off_3028, 25
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_3028:
    nop_8a                  0, 5, 0, 0, 0
    se_on                   2, 270, 1284, 0, 0, 0
    member_copy             V_TEMP, 1
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             1, V_TEMP
    nop
    evt_end                 0

.proc main_1E
    sleep                   10, 3
    work_set                WK_OBJECT, 6
    nop
    speed_set               1, 100
    speed_set               2, 20
    speed_set               7, 20
    speed_set               5, -64
    speed_set               4, -64
    for                     0, off_3072, 30
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_3072:
    member_copy             V_TEMP, 1
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             1, V_TEMP
    nop
    evt_end                 0

.proc main_1F
    sce_espr_on             0, 4, 0, 5632, -4800, -5600, -800, 0
    sce_espr_on             0, 4, 0, 6656, -4500, -4800, -1400, 0
    sce_espr_on             0, 4, 0, 6144, -4500, -5000, -2000, 0
    sce_espr_on             0, 41, 0, 5632, -4800, -6600, -800, 0
    sce_espr_on             0, 809, 0, 2560, -4500, -5800, -1400, 0
    sce_espr_on             0, 297, 0, 6144, -4500, -6000, -2000, 0
    sleep                   10, 4
    sce_espr_on             0, 4, 0, 5632, -4800, -5600, -800, 0
    sce_espr_on             0, 4, 0, 6400, -4200, -5800, -2300, 0
    sce_espr_on             0, 4, 0, 6144, -4500, -5800, -2400, 0
    sce_espr_on             0, 297, 0, 6144, -3800, -7600, -1500, 0
    sce_espr_on             0, 553, 0, 5120, -4200, -6800, -2300, 0
    sleep                   10, 5
    sce_espr_on             0, 4, 0, 5632, -5800, -5600, -800, 0
    sce_espr_on             0, 4, 0, 6144, -4800, -5600, -1500, 0
    sce_espr_on             0, 4, 0, 6400, -5200, -5800, -2300, 0
    sce_espr_on             0, 4, 0, 6144, -4500, -5800, -1400, 0
    sce_espr_on             0, 4, 0, 6144, -4500, -5800, -2400, 0
    sleep                   10, 13
    sce_espr_on             0, 809, 0, 2048, -3500, -5800, -1400, 0
    sleep                   10, 10
    sce_espr_on             0, 553, 0, 2048, -3000, -5800, -2400, 0
    sce_espr_on             0, 25, 0, 4096, -4800, -5600, -800, 0
    sce_espr_on             0, 281, 0, 6144, -3800, -5600, -1500, 0
    sce_espr_on             0, 25, 0, 5120, -4200, -5800, -2300, 0
    sleep                   10, 5
    sce_espr_on             0, 281, 0, 2048, -3500, -5800, -1400, 0
    sce_espr_on             0, 25, 0, 4096, -3000, -5800, -2400, 0
    evt_end                 0

.proc main_20
    sce_espr_on             0, 25, 0, 4096, -4500, -5400, -1300, 0
    sce_espr_on             0, 281, 0, 6144, -5000, -5400, -400, 0
    sce_espr_on             0, 25, 0, 5120, -4800, -5400, -800, 0
    sleep                   10, 5
    sce_espr_on             0, 281, 0, 6144, -4900, -5400, -400, 0
    sce_espr_on             0, 25, 0, 4096, -4700, -5400, -1000, 0
    sleep                   10, 3
    sce_espr_on             0, 809, 0, 4096, -5000, -5400, -300, 0
    sleep                   10, 7
    sce_espr_on             0, 809, 0, 4096, -4500, -5400, -500, 0
    evt_end                 0

.proc main_21
    obj_model_set           1, 0, 0, 0, 0, 0, 0, 10, 0, -4600, -5400, -2500, 0, 1024, 1024, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 0, -4000, -5400, -2500, 0, 1024, 1024, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           3, 0, 0, 0, 0, 0, 0, 10, 0, -3400, -5400, -2500, 0, 1024, 1024, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           4, 0, 0, 0, 0, 0, 0, 10, 0, -4600, -5400, -1400, 0, 1024, 1024, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           5, 0, 0, 0, 0, 0, 0, 10, 0, -4000, -5400, -1400, 0, 1024, 1024, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           6, 0, 0, 0, 0, 0, 0, 10, 0, -3400, -5400, -1400, 0, 1024, 1024, 0, 0, 0, 0, 0, 0, 0, 0
    evt_end                 0

.proc main_22
    sleep                   10, 151
    aot_reset               5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 20, 0, 30, 0, 205, 0
    evt_end                 0

.proc main_23
    do                      0, off_3388
    evt_next
    nop
    edwhile                 off_3388
    ck                      FG_GENERAL_2, 32, 0

off_3388:
    evt_end                 0

.proc main_24
    sce_bgmtbl_set          0, 9, 1, 1800, 32768
    evt_end                 0

.proc main_25
    sce_bgmtbl_set          0, 9, 1, 1800, 32768
    evt_end                 0
