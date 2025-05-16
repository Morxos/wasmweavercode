(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3747122987 (mut i32) (i32.const -1764553285))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    block
        ;;FLAG_1
        block
            ;;FLAG_3
            (i64.const 7)
            i64.ctz
            drop
            nop
            (i32.const 348104500)
            (br_table 2 1 0)
            ;;FLAG_4
        end

        ;;FLAG_2
        nop
        (i32.const 4817899)
        f32.reinterpret_i32
        nop
        f32.sqrt
        i32.reinterpret_f32
        global.set $global_3747122987
    end

    ;;FLAG_0
    local.get 0
    i32.clz
    i32.ctz
    local.set 0
    global.get $global_3747122987
    (br_table 0)
    return
)

)