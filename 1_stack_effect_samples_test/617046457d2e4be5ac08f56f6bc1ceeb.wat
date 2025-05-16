(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2652230740 (mut f64) (f64.const -9.026141738240956e+18))
(func $run (export "run")
    (local i64 f64)
    (local $temp i32)
    local.get 0
    i64.popcnt
    f64.convert_i64_s
    f64.trunc
    local.tee 1
    global.set $global_2652230740
    (f32.const -8.721517951926216e-05)
    (f32.const -7.915115638650397e-14)
    (f32.const -0.1832476109266281)
    f32.add
    f32.add
    local.get 0
    i64.extend32_s
    f32.convert_i64_u
    f32.le
    i32.extend8_s
    f32.convert_i32_u
    ;;INSPECT
    f32.abs
    i64.trunc_f32_u
    f64.convert_i64_u
    f64.trunc
    f32.demote_f64
    drop
)

)