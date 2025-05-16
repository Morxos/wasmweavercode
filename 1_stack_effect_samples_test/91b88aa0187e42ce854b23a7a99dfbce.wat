(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1969373047 (mut f64) (f64.const 5.144931716868182e+18))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    local.get 0
    (f32.const 0.26584798097610474)
    i32.reinterpret_f32
    i32.shr_s
    f64.convert_i32_u
    f64.sqrt
    i64.reinterpret_f64
    i64.ctz
    f64.convert_i64_s
    f64.neg
    f64.trunc
    i64.trunc_f64_s
    i64.extend32_s
    i64.clz
    f32.convert_i64_u
    i64.trunc_f32_u
    f64.convert_i64_s
    f64.sqrt
    i32.trunc_f64_u
    i32.extend16_s
    f32.convert_i32_s
    i64.trunc_f32_u
    i64.popcnt
    i64.eqz
    i64.extend_i32_s
    i64.clz
    f32.convert_i64_u
    f32.sqrt
    f32.sqrt
    f32.abs
    i64.trunc_f32_u
    ;;INSPECT
    f64.reinterpret_i64
    f64.floor
    f64.sqrt
    global.set $global_1969373047
)

)