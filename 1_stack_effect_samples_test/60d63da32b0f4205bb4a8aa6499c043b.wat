(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1083257206 (mut i64) (i64.const -3578094186093645087))
(func $run (export "run")
    (local f32 f64)
    (local $temp i32)
    (f32.const 0.00825667567551136)
    local.tee 0
    i64.trunc_f32_u
    i64.eqz
    i32.clz
    i32.eqz
    i32.extend16_s
    f32.convert_i32_u
    i32.reinterpret_f32
    i64.extend_i32_u
    i64.eqz
    i32.clz
    i64.extend_i32_s
    f64.convert_i64_u
    f64.sqrt
    f64.abs
    f64.trunc
    local.tee 1
    i64.trunc_f64_u
    f64.convert_i64_s
    i64.trunc_f64_s
    i64.clz
    i64.eqz
    i32.extend8_s
    i32.extend16_s
    f64.convert_i32_s
    i64.reinterpret_f64
    i64.popcnt
    i64.popcnt
    i64.popcnt
    ;;INSPECT
    f64.reinterpret_i64
    i64.reinterpret_f64
    f64.convert_i64_s
    i64.reinterpret_f64
    f64.convert_i64_s
    f64.sqrt
    f64.sqrt
    i64.reinterpret_f64
    global.set $global_1083257206
)

)