(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32 i32 i64 f64)
    (local $temp i32)
    local.get 0
    f32.trunc
    f32.ceil
    f32.ceil
    i64.trunc_f32_u
    i64.eqz
    i32.popcnt
    local.tee 1
    i32.ctz
    i64.extend_i32_s
    local.tee 2
    i64.ctz
    i64.eqz
    i64.extend_i32_s
    f32.convert_i64_u
    f32.abs
    i32.trunc_f32_u
    ;;INSPECT
    i64.extend_i32_s
    i64.extend32_s
    i64.extend32_s
    i64.eqz
    f64.convert_i32_s
    i64.reinterpret_f64
    f64.convert_i64_s
    f64.floor
    f64.floor
    f64.trunc
    f64.sqrt
    local.set 3
)

)