(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i32 f64)
    (local $temp i32)
    ;;INSPECT
    local.get 0
    f64.convert_i32_u
    f64.trunc
    f64.sqrt
    local.tee 1
    f64.trunc
    f64.trunc
    f64.trunc
    f64.sqrt
    f64.nearest
    i64.trunc_f64_s
    i64.eqz
    i64.extend_i32_s
    i64.popcnt
    i64.eqz
    i32.popcnt
    local.get 0
    i32.ge_s
    i32.clz
    i32.ctz
    f32.reinterpret_i32
    f32.abs
    f32.abs
    i64.trunc_f32_u
    i64.clz
    f64.convert_i64_s
    f64.sqrt
    f64.sqrt
    f64.sqrt
    f64.sqrt
    f64.sqrt
    f64.sqrt
    i32.trunc_f64_u
    drop
)

)