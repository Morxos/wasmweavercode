(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i32 i64)
    (local $temp i32)
    local.get 0
    i32.popcnt
    i64.extend_i32_s
    f64.convert_i64_u
    i64.trunc_f64_s
    i64.extend32_s
    i64.ctz
    i64.extend32_s
    ;;INSPECT
    i64.eqz
    i64.extend_i32_s
    i64.extend32_s
    local.tee 1
    i64.popcnt
    i32.wrap_i64
    i32.popcnt
    i32.extend16_s
    (f32.const -8.29137552223799e+37)
    drop
    f64.convert_i32_u
    f64.neg
    i32.trunc_f64_u
    f64.convert_i32_s
    f64.trunc
    i64.trunc_f64_u
    f64.convert_i64_u
    i64.reinterpret_f64
    f64.reinterpret_i64
    i64.reinterpret_f64
    i64.eqz
    f32.convert_i32_s
    f32.abs
    f32.ceil
    f32.ceil
    i32.trunc_f32_u
    local.set 0
)

)