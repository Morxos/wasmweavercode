(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f64 f64)
    (local $temp i32)
    (f32.const 1.1567625080033395e-08)
    i32.reinterpret_f32
    (i32.const 65094827)
    i32.lt_u
    f64.convert_i32_u
    i64.reinterpret_f64
    i64.eqz
    i32.extend8_s
    i64.extend_i32_s
    i64.ctz
    f64.convert_i64_s
    f64.trunc
    f64.sqrt
    f64.sqrt
    i32.trunc_f64_s
    f64.convert_i32_s
    ;;INSPECT
    f64.nearest
    drop
    local.get 0
    f64.sqrt
    f64.trunc
    f64.trunc
    i64.trunc_f64_u
    f64.reinterpret_i64
    local.tee 1
    f64.nearest
    drop
)

)