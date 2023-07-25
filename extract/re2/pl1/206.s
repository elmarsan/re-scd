.version 2

.init
.proc init
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -23953, -8594, 3900, 1800, -16798, 0, -10671, 3136, 1, 5, 4, 0, 17, 3, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main
    aot_set                 1, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -23551, -27891, 3000, 2000, 255, 0, I_GOSUB, main_08, 0, 0
    aot_set                 2, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -23551, -27891, 3000, 2000, 10, 0, ITEM_LIGHTER, 0, aot, 0
    item_aot_set            3, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 30000, 30000, 0, 0, ITEM_REDJEWEL, 1, 31, 0, 224
    aot_set                 6, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -23350, -20750, 3800, 1200, 2, 0, 0, 0, 255, 255
    aot_set                 7, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -30210, -15837, 2600, 3490, 1, 0, 0, 0, 255, 255
    aot_set                 8, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -16910, -15937, 1200, 3900, 0, 0, 0, 0, 255, 255
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 18, -22100, -23050, -27050, 3072, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 16, -22200, -180, -26600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           3, 0, 0, 0, 0, 0, 0, 10, 16, -21900, -180, -26800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           4, 0, 0, 0, 0, 0, 0, 10, 16, -22500, -180, -26800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_1666
    ck                      FG_GAME, F_SCENARIO, 0
    item_aot_set            4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -18353, -8594, 2200, 1800, ITEM_6C, 1, 19, 1, 0
    obj_model_set           1, 0, 0, 0, 0, 0, 0, 10, 16, -17203, -1620, -8150, 0, 1024, 64, 0, 0, 0, 0, 0, 0, 0, 0
    else                    0, off_16A4

off_1666:
    item_aot_set            4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -25422, -20122, 1500, 2500, ITEM_6C, 1, 19, 1, 0
    obj_model_set           1, 0, 0, 0, 0, 0, 0, 10, 16, -24850, -1800, -18700, 0, 1472, 0, 0, 0, 0, 0, 0, 0, 0, 0
    nop
    nop

off_16A4:
    if                      0, off_1740
    ck                      FG_0, F_DIFFICULT, 0
    if                      0, off_16FE
    ck                      FG_GAME, F_SCENARIO, 0
    if                      0, off_16FA
    ck                      FG_GAME, F_PLAYER, 0
    item_aot_set            5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -25422, -20122, 1500, 2500, ITEM_HANDGUNAMMO, 15, 28, 6, 0
    obj_model_set           6, 0, 0, 0, 0, 0, 0, 10, 16, -24850, -1800, -18700, 0, 1472, 0, 0, 0, 0, 0, 0, 0, 0, 0
    endif
    nop

off_16FA:
    else                    0, off_173C

off_16FE:
    item_aot_set            5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -18353, -8594, 2200, 1800, ITEM_HANDGUNAMMO, 15, 28, 6, 0
    obj_model_set           6, 0, 0, 0, 0, 0, 0, 10, 16, -17003, -1620, -8100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    nop
    nop

off_173C:
    else                    0, off_176A

off_1740:
    if                      0, off_1750
    ck                      FG_GAME, F_SCENARIO, 0
    ck                      FG_GAME, F_PLAYER, 1
    else                    0, off_1768

off_1750:
    item_aot_set            5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27532, -23412, 3060, 1700, ITEM_HANDGUNAMMO, 15, 28, 255, 1
    nop
    nop

off_1768:
    nop
    nop

off_176A:
    if                      0, off_17AC
    ck                      FG_GENERAL_1, 36, 1
    sce_espr3d_on           0, 23, 0, 4096, -22100, -3050, -27100, 0, 2040, 0, 0
    aot_reset               2, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    work_set                WK_OBJECT, 0
    nop
    pos_set                 0, -22100, -2400, -26855
    dir_set                 0, 0, 0, 0
    cut_be_set              6, 2, 0
    endif
    nop

off_17AC:
    evt_end                 0

.proc aot
    if                      0, off_17C2
    ck                      FG_GENERAL_1, 36, 0
    cmp                     0, V_USED_ITEM, CMP_EQ, 47
    evt_exec                255, I_GOSUB, main_02
    endif
    nop

off_17C2:
    evt_end                 0

.proc main_02
    set                     FG_GENERAL_1, 36, 1
    set                     FG_STATE, 7, 1
    set                     FG_GAME, 27, 1
    cut_chg                 11
    evt_exec                255, I_GOSUB, main_06
    evt_exec                9, I_GOSUB, main_03
    se_on                   2, 267, 1, 0, 0, 0
    sce_bgm_control         1, 1, 1, 110, 65
    save                    V_04, 2048
    save                    V_05, 3584
    save                    V_06, 1536
    save                    V_07, 3072
    for                     0, off_18DA, 10
    sce_espr_kill           5, 0, 4, 2
    sce_espr_kill           5, 2, 4, 2
    work_copy               4, 6, 1
    sce_espr_on             0, 5, 516, 0, 0, 0, 0, 0
    work_copy               5, 6, 1
    sce_espr_on             0, 517, 516, 0, 0, 0, 0, 0
    sleep                   10, 2
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_ADD, V_TEMP, 512
    copy                    V_04, V_TEMP
    nop
    copy                    V_TEMP, V_05
    nop
    calc                    0, OP_ADD, V_TEMP, 512
    copy                    V_05, V_TEMP
    nop
    sce_espr_kill           5, 0, 4, 3
    sce_espr_kill           5, 2, 4, 3
    sce_espr_kill           5, 0, 4, 4
    sce_espr_kill           5, 2, 4, 4
    work_copy               6, 6, 1
    sce_espr_on             0, 5, 772, 0, 0, 0, 0, 0
    work_copy               7, 6, 1
    sce_espr_on             0, 517, 772, 0, 0, 0, 0, 0
    work_copy               6, 6, 1
    sce_espr_on             0, 5, 1028, 0, 0, 0, 0, 0
    work_copy               7, 6, 1
    sce_espr_on             0, 517, 1028, 0, 0, 0, 0, 0
    sleep                   10, 2
    copy                    V_TEMP, V_06
    nop
    calc                    0, OP_ADD, V_TEMP, 512
    copy                    V_06, V_TEMP
    nop
    copy                    V_TEMP, V_07
    nop
    calc                    0, OP_ADD, V_TEMP, 512
    copy                    V_07, V_TEMP
    nop
    next                    0

off_18DA:
    sleep                   10, 30
    evt_kill                9
    cut_chg                 12
    sce_bgm_control         1, 0, 1, 80, 65
    sce_espr3d_on           0, 23, 0, 4096, -22100, -3050, -27100, 0, 2040, 0, 0
    sleep                   10, 36
    work_set                WK_OBJECT, 0
    nop
    member_set              12, 22, 244
    sleep                   10, 30
    gosub                   main_09
    sce_bgm_control         1, 2, 1, 80, 65
    sce_bgm_control         2, 1, 1, 110, 65
    work_set                WK_OBJECT, 0
    nop
    dir_set                 0, 0, 0, 0
    set                     FG_STATE, 7, 1
    cut_chg                 11
    evt_exec                255, I_GOSUB, main_07
    for                     0, off_1A10, 10
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_SUB, V_TEMP, 512
    copy                    V_04, V_TEMP
    nop
    copy                    V_TEMP, V_05
    nop
    calc                    0, OP_SUB, V_TEMP, 512
    copy                    V_05, V_TEMP
    nop
    sce_espr_kill           5, 0, 4, 2
    sce_espr_kill           5, 2, 4, 2
    work_copy               4, 6, 1
    sce_espr_on             0, 5, 516, 0, 0, 0, 0, 0
    work_copy               5, 6, 1
    sce_espr_on             0, 517, 516, 0, 0, 0, 0, 0
    sleep                   10, 2
    copy                    V_TEMP, V_06
    nop
    calc                    0, OP_SUB, V_TEMP, 512
    copy                    V_06, V_TEMP
    nop
    copy                    V_TEMP, V_07
    nop
    calc                    0, OP_SUB, V_TEMP, 512
    copy                    V_07, V_TEMP
    nop
    sce_espr_kill           5, 0, 4, 3
    sce_espr_kill           5, 2, 4, 3
    sce_espr_kill           5, 0, 4, 4
    sce_espr_kill           5, 2, 4, 4
    work_copy               6, 6, 1
    sce_espr_on             0, 5, 772, 0, 0, 0, 0, 0
    work_copy               7, 6, 1
    sce_espr_on             0, 517, 772, 0, 0, 0, 0, 0
    work_copy               6, 6, 1
    sce_espr_on             0, 5, 1028, 0, 0, 0, 0, 0
    work_copy               7, 6, 1
    sce_espr_on             0, 517, 1028, 0, 0, 0, 0, 0
    sleep                   10, 2
    next                    0

off_1A10:
    sce_espr_kill           5, 0, 4, 2
    sce_espr_kill           5, 2, 4, 2
    sce_espr_kill           5, 0, 4, 3
    sce_espr_kill           5, 2, 4, 3
    sce_espr_kill           5, 0, 4, 4
    sce_espr_kill           5, 2, 4, 4
    aot_reset               2, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    sce_bgmtbl_set          0, 6, 2, 65287, 0
    set                     FG_GAME, 27, 0
    set                     FG_STATE, 7, 0
    cut_chg                 6
    cut_auto                1
    cut_be_set              6, 2, 0
    evt_end                 0

.proc main_03

off_1A52:
    light_kido_set          0, 4000
    sleep                   10, 3
    light_kido_set          0, 2800
    sleep                   10, 1
    light_kido_set          0, 3400
    sleep                   10, 2
    goto                    255, 255, 0, off_1A52
    evt_end                 0

.proc main_04
    sleep                   10, 10
    sce_bgm_control         1, 5, 1, 110, 65
    evt_end                 0

.proc main_05
    sce_espr_on             0, 772, 0, 1024, -22100, -3050, -27050, 1024
    sce_espr_on             0, 772, 0, 768, -22000, -3000, -27050, 1024
    sce_espr_on             0, 772, 0, 1280, -22150, -3050, -27050, 1024
    sleep                   10, 35
    sce_espr_kill           4, 3, 0, 0
    nop
    evt_end                 0

.proc main_06
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -21965, 0, -24891
    member_set              15, 0, 4
    plc_motion              1, 6, 192
    evt_next
    plc_stop
    evt_end                 0

.proc main_07
    work_set                WK_PLAYER, 0
    plc_motion              1, 6, 192
    nop
    sleep                   10, 30
    plc_ret
    nop
    evt_end                 0

.proc main_08
    if                      0, off_1B0C
    ck                      FG_GENERAL_1, 36, 0
    set                     FG_STATE, 7, 1
    message_on              0, 3, 0, 255, 255
    evt_next
    cut_chg                 8
    nop
    sleep                   10, 10
    message_on              0, 4, 0, 255, 255
    evt_next
    cut_old
    set                     FG_STATE, 7, 0
    else                    0, off_1B38

off_1B0C:
    if                      0, off_1B2E
    ck                      FG_ITEM, 31, 0
    set                     FG_STATE, 7, 1
    cut_chg                 8
    sleep                   10, 30
    aot_on                  3
    evt_next
    cut_chg                 6
    cut_auto                1
    set                     FG_STATE, 7, 0
    nop
    else                    0, off_1B36

off_1B2E:
    message_on              0, 5, 0, 255, 255
    nop
    nop

off_1B36:
    nop
    nop

off_1B38:
    evt_end                 0

.proc main_09
    work_set                WK_OBJECT, 0
    nop
    speed_set               2, 10
    add_speed
    nop
    sleep                   10, 5
    speed_set               2, 5
    speed_set               1, 0
    speed_set               7, 1
    speed_set               3, 0
    speed_set               9, -10
    for                     0, off_1B68, 16
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_1B68:
    speed_set               2, 2
    speed_set               7, 20
    speed_set               3, 0
    speed_set               9, -21
    while                   6, off_1B88
    member_cmp              0, 12, 3, 160, 246
    evt_next
    add_speed
    add_aspeed
    nop
    ewhile                  0

off_1B88:
    se_on                   2, 268, 4, 0, 0, 0
    member_set              12, 159, 246
    evt_next
    nop
    speed_set               2, 20
    speed_set               1, -25
    speed_set               7, 10
    speed_set               3, -128
    speed_set               9, -20
    while                   6, off_1BBE
    member_cmp              0, 12, 3, 160, 246
    evt_next
    add_speed
    add_aspeed
    nop
    ewhile                  0

off_1BBE:
    member_set              12, 160, 246
    speed_set               2, 0
    speed_set               1, 0
    speed_set               7, 0
    speed_set               9, 0
    speed_set               3, 10
    speed_set               5, 40
    speed_set               11, -10
    speed_set               0, 10
    for                     0, off_1BEE, 3
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_1BEE:
    sleep                   10, 2
    speed_set               3, -10
    speed_set               5, -40
    speed_set               0, -10
    for                     0, off_1C0A, 6
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_1C0A:
    sleep                   10, 2
    speed_set               3, 10
    speed_set               5, 40
    speed_set               0, 10
    for                     0, off_1C26, 3
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_1C26:
    speed_set               3, 5
    speed_set               5, 25
    speed_set               11, -5
    speed_set               0, 5
    for                     0, off_1C42, 2
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_1C42:
    sleep                   10, 2
    speed_set               3, -5
    speed_set               5, -20
    speed_set               0, -5
    for                     0, off_1C5E, 4
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_1C5E:
    sleep                   10, 2
    speed_set               3, 5
    speed_set               5, 20
    speed_set               0, 5
    for                     0, off_1C7A, 2
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_1C7A:
    evt_end                 0
