(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2013609102 (mut i64) (i64.const -6500104032710196989))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_3
        global.get $global_2013609102
        drop
        global.get $global_2013609102
        (i64.const -973954)
        i64.ge_u
        (br_table 0 1)
        ;;FLAG_4
    end

    ;;FLAG_1
    global.get $global_2013609102
    i64.eqz
    (i32.const -8785871)
    i32.xor
    local.set 0
    local.get 0
    nop
    (br_table 0)
    ;;FLAG_2
    nop
    br 0
)

)