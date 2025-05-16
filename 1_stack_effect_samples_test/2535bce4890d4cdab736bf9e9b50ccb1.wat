(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32 f32 i64)
    (local $temp i32)
    local.get 0
    f32.ceil
    local.tee 1
    f32.floor
    i32.trunc_f32_u
    f64.convert_i32_s
    f64.neg
    f64.neg
    f64.trunc
    f64.trunc
    f64.trunc
    f64.neg
    f64.neg
    i64.trunc_f64_s
    i64.extend32_s
    i64.eqz
    nop
    drop
    (f32.const 3.3000449661813036e-07)
    i64.trunc_f32_u
    local.tee 2
    f32.convert_i64_u
    i64.trunc_f32_u
    nop
    f32.convert_i64_u
    f32.abs
    ;;INSPECT
    i32.trunc_f32_s
    f64.convert_i32_s
    f64.sqrt
    f64.sqrt
    drop
)

)