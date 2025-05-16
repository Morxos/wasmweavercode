(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i32 f32 f64)
    (local $temp i32)
    local.get 0
    local.get 0
    i32.extend16_s
    i32.shr_s
    (f32.const 0.003218043362721801)
    ;;INSPECT
    i64.trunc_f32_u
    i64.eqz
    i32.shr_s
    i32.extend16_s
    f32.convert_i32_u
    f32.trunc
    i32.trunc_f32_s
    f32.convert_i32_s
    (f32.const 0.005451032426208258)
    f32.min
    f32.trunc
    f32.ceil
    local.tee 1
    i64.trunc_f32_s
    f64.convert_i64_u
    f64.abs
    f64.abs
    i64.reinterpret_f64
    f64.reinterpret_i64
    local.tee 2
    f64.sqrt
    f64.sqrt
    i64.reinterpret_f64
    i64.extend32_s
    drop
)

)