---@class Techmino.I18N
local L={
    -- Info
    sureText={
        back="Press again to go back",
        quit="Press again to quit",
        reset="Press again to reset",
        enter="Press again to enter",
    },
    setting_needRestart="This setting will take effect after reboot",
    noMode="Could not load mode '$1': $2",
    interior_crash="Sandbox exited due to performance rate overflow",
    booting_changed="Booting application changed",
    musicroom_lowVolume="Please increase BGM volume (bottom right)",
    bgm_collected="BGM collected: $1",
    autoGC="[Auto GC] Low Memory",

    -- In-Game
    clearName={
        "Single",
        "Double",
        "Triple",
        "Techrash",
        "Pentacrash",
        "Hexacrash",
        "Heptacrash",
        "Octacrash",
        "Nonacrash",
        "Decacrash",
        "Undecacrash",
        "Dodecacrash",
        "Tridecacrash",
        "Tetradecacrash",
        "Pentadecacrash",
        "Hexadecacrash",
        "Heptadecacrash",
        "Octadecacrash",
        "Nonadecacrash",
        "Ultracrash",
        "Impossicrash",
    },
    clearLines="$1 Lines",

    combo_small="$1 Combo",
    combo_large="$1 Combo!",
    mega_combo="MEGACMB",

    charge="CHG",
    spin="$1-spin",

    allClear="ALL CLEAR",
    halfClear="Half Clear",

    target_piece="Piece",
    target_line="Line",
    target_time="Time",
    target_ac="AC",
    target_hc="HC",
    target_tss="TSS",
    target_tsd="TSD",
    target_tst="TST",
    target_tsq="TS?",
    target_tspin="T-Spin",
    target_techrash="Techrash",
    target_wave="Wave",

    -- About-Game
    pause="Pause",

    goal_reached="Goal Reached",

    -- Widget texts
    button_back="Back",

    simulation_title="Simulations",
    graph_brik_title="M-Graph", -- TRASLATING NOTE: from "Knowledge Graph" (AI domain)
    settings_title="Settings",

    setting_asd="ASD",
    setting_asp="ASP",
    setting_ash="AS Halt",
    setting_softdropSkipAsd="Skip Drop Delay",
    setting_shakeness="Shakiness",
    setting_hitWavePower="Hitwave Power",

    setting_mainVol="Main Volume",
    setting_bgm="BGM",
    setting_sfx="SFX",
    setting_vib="VIB",
    setting_handling="Handling…",
    setting_keymapping="Key mappings…",
    setting_enableTouching="Enable touch control",
    setting_touching="Touch controls…",
    setting_test="Test",
    setting_tryTestInGame="Cannot test during game",
    setting_tryApplyAudioInGame="Cannot apply during game",

    setting_sysCursor="External cursor",
    setting_clickFX="Click FX",
    setting_power="Terminal State",
    setting_clean="VRAM Boost",
    setting_fullscreen="Fullscreen",
    setting_portrait="Portrait",
    setting_autoMute="Mute when idle",
    setting_showTouch="Show touches",

    setting_maxFPS="Max FPS",
    setting_updRate="Update rate",
    setting_drawRate="Draw rate",
    setting_msaa="MSAA",
    setting_fmod_maxChannel="Max Channel",
    setting_fmod_DSPBufferCount="DSPBufferCount",
    setting_fmod_DSPBufferLength="DSPBufferLength",
    setting_apply="Apply",

    lang_note="Chinese is the original game language.\nAll translations are contributed by volunteers and it may not be 100% accurate\nThere are some terms not translated directly, please check Zictionary for more information.",

    keyset_title="Keybinds",
    keyset_brik_moveLeft=   "Move Left",
    keyset_brik_moveRight=  "Move Right",
    keyset_brik_rotateCW=   "Rotate CW",
    keyset_brik_rotateCCW=  "Rotate CCW",
    keyset_brik_rotate180=  "Rotate 180",
    keyset_brik_softDrop=   "Soft Drop",
    keyset_brik_hardDrop=   "Hard Drop",
    keyset_brik_holdPiece=  "Hold Piece",
    keyset_brik_skip=       "Skip",

    keyset_gela_moveLeft=   "Move Left",
    keyset_gela_moveRight=  "Move Right",
    keyset_gela_rotateCW=   "Rotate CW",
    keyset_gela_rotateCCW=  "Rotate CCW",
    keyset_gela_rotate180=  "Rotate180",
    keyset_gela_softDrop=   "Soft Drop",
    keyset_gela_hardDrop=   "Hard Drop",
    keyset_gela_skip=       "Skip",

    keyset_acry_swapLeft=    "Swap Left",
    keyset_acry_swapRight=   "Swap Right",
    keyset_acry_swapUp=      "Swap Up",
    keyset_acry_swapDown=    "Swap Down",
    keyset_acry_twistCW=     "Rotate CW",
    keyset_acry_twistCCW=    "Rotate CCW",
    keyset_acry_twist180=    "Rotate180",
    keyset_acry_moveLeft=    "Cursor Left",
    keyset_acry_moveRight=   "Cursor Right",
    keyset_acry_moveUp=      "Cursor Up",
    keyset_acry_moveDown=    "Cursor Down",
    keyset_acry_skip=        "Skip",

    keyset_func1= "Function 1",
    keyset_func2= "Function 2",
    keyset_func3= "Function 3",
    keyset_func4= "Function 4",
    keyset_func5= "Function 5",

    keyset_sys_view=    "View",
    keyset_sys_restart= "Restart",
    keyset_sys_chat=    "Chat",
    keyset_sys_back=    "Menu back",
    keyset_sys_quit=    "End game",
    keyset_sys_setting= "Setting",
    keyset_sys_help=    "Quick Help",
    keyset_sys_up=      "Up",
    keyset_sys_down=    "Down",
    keyset_sys_left=    "Left",
    keyset_sys_right=   "Right",
    keyset_sys_select=  "Select",

    keyset_pressKey="Press a key",
    keyset_deleted= "*Deleted*",
    keyset_info=    "[Esc]: cancel\n[Backspace]: delete\n[Double Esc]: set to Esc",

    stick2_switch="2-way joystick",
    stick4_switch="4-way joystick",
    setting_touch_button="Add/Remove button",
    setting_touch_buttonSize="Button size",
    setting_touch_iconSize="Icon size",
    setting_touch_buttonShape="Change button shape",
    setting_touch_stickSize="Stick length",
    setting_touch_ballSize="Stick size",

    main_in_dig="Dig Practice",
    main_in_sprint="40 Lines",
    main_in_marathon="Marathon",
    main_in_tutorial="Tutorial",
    main_in_sandbox="Sandbox",
    main_in_settings="Settings",

    main_out_settings="Settings",
    main_out_stat="Statistics",
    main_out_dict="Dictionary",
    main_out_lang="Language",
    main_out_about="System info",
    main_out_single="Single",
    main_out_multi="Multiple",

    musicroom_title="Musicroom",
    musicroom_fullband="Full Band",
    musicroom_section='Chorus',
    musicroom_autoplay="Auto Change",

    about_title="About",
    about_module="Modules:",
    about_toolchain="Toolchain:",
    about_peopleLost="You lost $1 !",

    -- Mode name
    exteriorModeInfo={ -- TRASLATING NOTE: Unnecessary to be accurate, try to quote some short proverbs in your language
        sprint=           {"Sprint","Speed ​​is all we need"},
        sequence=         {"Sequence","Face strange piece sequences"},
        hidden=           {"Hidden","Pieces are invisible after falling"},
        tspin=            {"T-Spin","Build special terrains"},
        marathon=         {"Marathon","Fight against increasing gravity"},
        allclear=         {"All Clear","Controllable All-Clear is possible"},
        combo=            {"Combo","Everyone loves combo"},
        hypersonic=       {"Hypersonic","Break the limit of gravity"},
        dig=              {"Dig","Deal with neat garbage lines"},
        excavate=         {"Excavate","Deal with complex garbage lines"},
        backfire=         {"Backfire","Attacks out, garbages in"},
        drill=            {"Drill","Deal with standard garbage lines"},
        survivor=         {"Survivor","Survive under pressure"},

        chain=            {"Chain","Connect same color to clear"},
        action=           {"Action","Use both keyboard & mouse"},
    },

    -- Achievement
    ---@enum (key) Techmino.Text.Achievement
    achievementMessage={
        dict_shortcut="Hotkey Expert",
        exterior_excavate_notDig="What are you doing?",
        exterior_hidden_superBrain="COOL",
        exterior_sprint_SZOpen="Really want to start with SZO?",
        exterior_tspin_10TSS="What's this?",
        exterior_tspin_10TST="EZ.",
        interior_console="What's this?",
        musicroom_recollection="Recollection is not a song",
    },

    -- Level
    tutorial_basic="The Basics",
    tutorial_sequence="Next & Hold",
    tutorial_piece="Piece shapes",
    tutorial_stackBasic="Basic Stacking",
    tutorial_twoRotatingKey="Two-way Rotation",
    tutorial_rotating="Rotating Practice",

    tutorial_notpass="Failed",
    tutorial_pass="PASS",

    tutorial_basic_1="Welcome to Techmino!",
    tutorial_basic_2="1. The Basics",
    tutorial_basic_3="Use the left and right keys to move your current piece.",
    tutorial_basic_4="Press the hard drop key to place the piece on the board.",
    tutorial_basic_5="You can also rotate the piece with the rotation keys.",

    tutorial_sequence_1="2. Next & Hold",
    tutorial_sequence_2="Oops, this piece doesn't seem to fit into the hole…",
    tutorial_sequence_3="…but now you can see what pieces are coming next.",
    tutorial_sequence_4="Use the Hold key to adjust the order of the pieces.",

    tutorial_shape_1="3. Piece shapes",
    tutorial_shape_2="Select one piece which fit the field better",

    tutorial_stackBasic_1="4. Basic Stacking",
    tutorial_stackBasic_m1="Please follow the follwing instructions:",
    tutorial_stackBasic_m2="It's recommended to keep the top levels as flat as you can.",
    tutorial_stackBasic_m3="Pieces are often placed \"lying down\", not \"standing up\".",
    tutorial_stackBasic_m4="Flat tops are easier to keep, and you can also avoid making holes.",
    tutorial_stackBasic_m5="You will usually be rewarded more for clearing four lines at once. Try to make another one.",
    tutorial_stackBasic_m6="Try finishing the Techrash with the last piece without a guide!",

    tutorial_twoRotatingKey_1="5. Two-way Rotations",
    tutorial_twoRotatingKey_m1="Follow the following guides, but try to use the least number of rotations as possible.",
    tutorial_twoRotatingKey_m2="If you can rotate it using one CCW, try not to use three CWs.",
    tutorial_twoRotatingKey_m3="This not only wastes your effort, but also slows you down.",
    tutorial_twoRotatingKey_m4="You should decide in your mind where to put each piece and not rely on the shadow pieces alone.",
    tutorial_twoRotatingKey_unnecessaryRotation="Redundant Rotation",

    tutorial_rotating_1="6. Rotating Practice",
    tutorial_rotating_2="Please rotating the top piece to align the bottom one",
}
return L
