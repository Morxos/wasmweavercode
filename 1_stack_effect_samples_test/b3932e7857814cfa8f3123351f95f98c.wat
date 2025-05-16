(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3643811867 (mut f32) (f32.const 7.783074476630999e+18))
(global $global_3042691531 (mut i64) (i64.const 1749220552354255787))
(func $run (export "run")
    (local i64 f64)
    (local $temp i32)
    local.get 0
    i64.extend32_s
    i64.extend32_s
    i64.extend32_s
    ;;INSPECT
    i64.ctz
    f64.convert_i64_u
    f32.demote_f64
    i32.trunc_f32_s
    local.get 0
    i64.clz
    i64.popcnt
    f64.convert_i64_s
    f64.neg
    f64.neg
    f64.nearest
    f64.trunc
    local.tee 1
    f64.sqrt
    f64.neg
    f32.demote_f64
    f32.abs
    global.set $global_3643811867
    global.get $global_3643811867
    global.set $global_3643811867
    i32.extend8_s
    i32.extend8_s
    i64.extend_i32_s
    f64.convert_i64_s
    f64.sqrt
    f64.trunc
    i64.reinterpret_f64
    global.set $global_3042691531
)

)