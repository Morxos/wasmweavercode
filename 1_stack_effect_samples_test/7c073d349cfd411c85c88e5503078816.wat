(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i64 i64 f32)
    (local $temp i32)
    local.get 0
    i64.popcnt
    i64.extend32_s
    i64.extend32_s
    f32.convert_i64_u
    i64.trunc_f32_u
    i64.eqz
    i64.extend_i32_s
    f64.reinterpret_i64
    (f32.const -3.993639644109042e-15)
    f32.ceil
    f32.ceil
    f32.sqrt
    f32.abs
    i64.trunc_f32_u
    f64.reinterpret_i64
    f64.sub
    f32.demote_f64
    f32.abs
    i64.trunc_f32_u
    f64.convert_i64_u
    i64.reinterpret_f64
    local.tee 1
    i64.eqz
    (f32.const -9.409135787912408e+35)
    ;;INSPECT
    local.set 2
    f64.convert_i32_s
    f64.trunc
    f64.trunc
    f64.trunc
    drop
)

)