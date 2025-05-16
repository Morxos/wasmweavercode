(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32 i32 f64 f64)
    (local $temp i32)
    local.get 0
    i32.trunc_f32_u
    i32.extend16_s
    i32.extend16_s
    f64.convert_i32_s
    i64.trunc_f64_s
    i64.ctz
    i64.eqz
    local.tee 1
    i32.popcnt
    i32.extend16_s
    i32.eqz
    i32.extend8_s
    f32.convert_i32_u
    f32.abs
    f32.sqrt
    i64.trunc_f32_u
    f64.convert_i64_u
    i32.trunc_f64_u
    f64.convert_i32_s
    f64.trunc
    local.tee 2
    (f32.const 1.2605193596458775e-16)
    i64.trunc_f32_u
    i64.eqz
    f32.convert_i32_s
    f32.abs
    i64.trunc_f32_u
    f64.convert_i64_s
    local.tee 3
    f64.max
    i32.trunc_f64_u
    i64.extend_i32_s
    f32.convert_i64_u
    i64.trunc_f32_s
    i64.extend32_s
    i64.popcnt
    ;;INSPECT
    f64.convert_i64_s
    i32.trunc_f64_u
    local.set 1
)

)