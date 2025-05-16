(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2105728966 (mut f32) (f32.const -4.875604543221531e+18))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_3
        nop
        global.get $global_2105728966
        (f64.const 1.5225887110993703e+187)
        i64.reinterpret_f64
        local.set 0
        f64.promote_f32
        f64.nearest
        f64.abs
        f32.demote_f64
        global.set $global_2105728966
    end

    ;;FLAG_1
    (f64.const 1.8102431189589417e+283)
    f64.nearest
    i64.reinterpret_f64
    drop
    (i64.const 93)
    i64.ctz
    f64.convert_i64_s
    f64.nearest
    i32.trunc_f64_s
    (br_table 0)
    ;;FLAG_2
)

)