(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3418324310 (mut f64) (f64.const 5.353820379162225e+18))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    local.get 0
    i64.extend32_s
    i64.clz
    i64.eqz
    i32.clz
    local.get 0
    i64.clz
    f64.convert_i64_s
    f64.sqrt
    global.set $global_3418324310
    i32.extend8_s
    ;;INSPECT
    f64.convert_i32_u
    drop
    (f32.const 2.7053231359880808e-31)
    i64.trunc_f32_u
    i32.wrap_i64
    i32.extend8_s
    i32.popcnt
    f64.convert_i32_s
    f64.sqrt
    global.set $global_3418324310
    (i64.const -69)
    i64.extend32_s
    i64.extend32_s
    i64.eqz
    f64.convert_i32_u
    f64.nearest
    f64.sqrt
    f64.sqrt
    f64.sqrt
    i64.reinterpret_f64
    i64.ctz
    f64.convert_i64_s
    f64.sqrt
    f64.sqrt
    f64.abs
    drop
)

)