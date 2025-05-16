(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3432354480 (mut i32) (i32.const -1082664886))
(global $global_1269781497 (mut f64) (f64.const 6.684989796420878e+18))
(func $run (export "run")
    (local i64 i64)
    (local $temp i32)
    local.get 0
    (f32.const 3.522486606772937e-31)
    i32.trunc_f32_s
    f32.convert_i32_s
    i64.trunc_f32_s
    global.get $global_3432354480
    i64.extend_i32_u
    i64.or
    i64.rotl
    i64.ctz
    i32.wrap_i64
    ;;INSPECT
    i32.ctz
    i64.extend_i32_s
    f64.convert_i64_s
    f64.ceil
    f64.sqrt
    f64.neg
    i64.trunc_f64_s
    i64.ctz
    i64.popcnt
    i32.wrap_i64
    f64.convert_i32_s
    i64.trunc_f64_u
    local.tee 1
    f32.convert_i64_u
    f32.sqrt
    i32.trunc_f32_u
    i32.eqz
    i32.extend8_s
    i32.extend16_s
    f64.convert_i32_s
    f64.abs
    f64.trunc
    f64.sqrt
    i32.trunc_f64_u
    f64.convert_i32_s
    global.set $global_1269781497
)

)