(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    local.get 0
    i32.eqz
    i32.clz
    i32.clz
    i32.extend16_s
    i64.extend_i32_s
    i64.eqz
    f64.convert_i32_s
    f64.sqrt
    i64.trunc_f64_u
    f32.convert_i64_u
    i32.reinterpret_f32
    ;;INSPECT
    i32.popcnt
    local.get 0
    i32.shr_s
    f32.convert_i32_u
    i32.reinterpret_f32
    f64.convert_i32_s
    i64.reinterpret_f64
    i64.extend32_s
    i64.eqz
    f32.convert_i32_s
    f32.abs
    f32.abs
    i32.trunc_f32_s
    i32.clz
    i32.extend8_s
    i32.extend8_s
    i32.extend8_s
    i32.extend8_s
    i32.ctz
    i32.extend16_s
    local.set 0
)

)