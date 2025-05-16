(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_811812862 (mut f64) (f64.const 7.111965179331301e+18))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_2
        (i64.const 1392)
        i64.ctz
        nop
        (i64.const 0)
        i64.rotl
        (f32.const 2014520.625)
        (i32.const 491133071)
        f64.convert_i32_s
        global.set $global_811812862
        f32.neg
        drop
        drop
    end

    ;;FLAG_1
    (f32.const 7.25111021893099e-05)
    drop
    global.get $global_811812862
    f64.trunc
    i64.reinterpret_f64
    f32.convert_i64_u
    f32.sqrt
    f64.promote_f32
    drop
)

)