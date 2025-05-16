(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i64 f64 i32)
    (local $temp i32)
    ;;FLAG_0
    (f32.const 1.759717743072045e+26)
    i32.reinterpret_f32
    i64.extend_i32_s
    (f64.const 2.4056326228716348e-223)
    f64.ceil
    f64.nearest
    i64.trunc_f64_s
    i64.and
    (f32.const 8.462148457510921e-07)
    i32.reinterpret_f32
    nop
    (i32.const 9217)
    nop
    f64.convert_i32_u
    i64.trunc_f64_s
    local.tee 0
    drop
    f64.convert_i32_s
    i64.trunc_f64_s
    i64.div_u
    (f64.const 5.8961626806035115e+119)
    local.set 1
    i64.popcnt
    i64.ctz
    i64.extend8_s
    i64.extend8_s
    (f64.const 1.930677306340313e+157)
    (i32.const -224831783)
    f32.reinterpret_i32
    i32.reinterpret_f32
    f64.convert_i32_u
    f64.eq
    local.tee 2
    f32.convert_i32_u
    i32.trunc_f32_u
    i32.extend16_s
    i64.extend_i32_s
    i64.eq
    drop
)

)