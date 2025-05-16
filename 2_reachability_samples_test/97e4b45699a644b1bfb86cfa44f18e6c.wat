(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_107484705 (mut i32) (i32.const 1384935041))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    ;;FLAG_0
    local.get 0
    block
        ;;FLAG_3
        local.get 0
        i32.ctz
        f32.convert_i32_u
        (i32.const 77718)
        global.set $global_107484705
        (i32.const -8)
        f32.convert_i32_u
        f32.ne
        (br_table 1 0)
        ;;FLAG_4
    end

    ;;FLAG_1
    global.get $global_107484705
    i32.shr_s
    i32.extend16_s
    nop
    (br_table 0)
    ;;FLAG_2
    br 0
)

)