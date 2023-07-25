.version 2

.init
.proc init
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26700, -25700, 1800, 1800, -24400, 0, -25000, 2048, 0, 13, 4, 0, 0, 1, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, -18400, -1200, -13450, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           1, 0, 0, 0, 0, 0, 0, 10, 48, -26200, -1200, -16450, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            3, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -19550, -14000, 1600, 1600, ITEM_70, 1, 105, 0, 0
    item_aot_set            4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0, ITEM_CRANK, 1, 106, 1, 0
    aot_set                 5, SCE_HIKIDASHI, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26864, -16800, 1800, 1300, 18, 0, 4, 0, 7, 0
    set                     31, 18, 1
    aot_set                 6, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -22800, -24000, 3350, 3850, 18, 0, 0, 0, 255, 255
    aot_set                 7, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27000, -23300, 1800, 5000, 19, 0, 0, 0, 255, 255
    aot_set                 8, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -17700, -19800, 1800, 1200, 20, 0, 0, 0, 255, 255
    aot_set                 9, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -23000, -14000, 2900, 1800, 21, 0, 0, 0, 255, 255
    evt_end                 0

.proc aot
    if                      0, off_1DD6
    ck                      FG_GAME, F_SCENARIO, 1
    ck                      FG_ITEM, 106, 1
    ck                      FG_GENERAL_1, 80, 0
    sce_bgmtbl_set          0, 13, 1, 65310, 64
    endif
    nop

off_1DD6:
    evt_end                 0

.proc main_02
    work_set                WK_PLAYER, 0
    plc_ret
    set                     FG_STATE, 7, 0
    set                     FG_GAME, 27, 0
    cut_auto                1
    evt_end                 0
