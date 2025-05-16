(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2962753766 (mut f64) (f64.const 5.540063091522601e+18))
(global $global_1859157048 (mut i64) (i64.const -5322640478651939020))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_3
        (i64.const -5179)
        i32.wrap_i64
        f32.convert_i32_u
        global.get $global_2962753766
        i64.trunc_f64_s
        global.set $global_1859157048
        f32.trunc
        (f32.const -48550708772864.0)
        f32.le
        (br_table 0 1)
        ;;FLAG_4
    end

    ;;FLAG_1
    global.get $global_2962753766
    f64.nearest
    i64.trunc_f64_s
    i64.popcnt
    i32.wrap_i64
    (f64.const 2.224629601761288e-170)
    i64.trunc_f64_s
    i64.clz
    (f32.const 2.276679532578137e-21)
    i64.trunc_f32_u
    i64.eq
    drop
    (br_table 0)
    ;;FLAG_2
    br 0
)

)