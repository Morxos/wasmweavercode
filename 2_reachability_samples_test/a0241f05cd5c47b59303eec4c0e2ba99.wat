(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2110409117 (mut i64) (i64.const -8286492093722122822))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    ;;FLAG_0
    (f64.const 2.2238703797416416e-05)
    f64.neg
    f64.neg
    f64.nearest
    f64.neg
    i32.trunc_f64_s
    f64.convert_i32_u
    (i64.const -22099159)
    f64.convert_i64_s
    f64.le
    f64.convert_i32_s
    i64.trunc_f64_s
    i64.extend16_s
    i64.clz
    global.set $global_2110409117
    (i64.const 3116554)
    local.tee 0
    drop
    return
)

)