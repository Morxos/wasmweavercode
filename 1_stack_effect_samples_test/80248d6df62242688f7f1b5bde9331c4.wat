(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32 f32)
    (local $temp i32)
    local.get 0
    f32.neg
    f32.trunc
    i32.reinterpret_f32
    drop
    (f32.const 1.2351627425353893e-34)
    local.tee 1
    i32.trunc_f32_u
    f32.convert_i32_s
    i32.reinterpret_f32
    f32.convert_i32_s
    i32.reinterpret_f32
    i64.extend_i32_s
    f32.convert_i64_u
    f32.trunc
    i64.trunc_f32_u
    i64.popcnt
    f64.reinterpret_i64
    i64.reinterpret_f64
    f64.convert_i64_u
    i64.trunc_f64_u
    f64.reinterpret_i64
    f64.trunc
    f64.sqrt
    i32.trunc_f64_u
    ;;INSPECT
    i32.popcnt
    (f32.const 2.942490619519635e-24)
    f32.abs
    i64.trunc_f32_u
    i64.eqz
    i32.shr_s
    f32.reinterpret_i32
    f32.abs
    local.set 0
)

)