(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3398751722 (mut i64) (i64.const 4147087423514923650))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_3
        (i64.const 2110259177601471213)
        i64.extend32_s
        i64.extend16_s
        i64.popcnt
        global.set $global_3398751722
    end

    ;;FLAG_1
    nop
    local.get 0
    f32.floor
    f32.nearest
    i32.reinterpret_f32
    (br_table 0)
    ;;FLAG_2
    br 0
)

)