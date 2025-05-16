(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f64 i64 i64)
    (local $temp i32)
    local.get 0
    f64.trunc
    f64.trunc
    f64.trunc
    i64.trunc_f64_u
    (f32.const 5.056088944216989e+29)
    f64.promote_f32
    ;;INSPECT
    local.get 0
    (f32.const 0.0)
    f32.neg
    f32.neg
    i64.trunc_f32_u
    i32.wrap_i64
    i32.extend8_s
    i64.extend_i32_u
    i64.extend32_s
    i64.extend32_s
    local.tee 1
    local.tee 2
    i64.extend16_s
    i64.extend16_s
    i32.wrap_i64
    i32.clz
    select
    f64.floor
    f64.floor
    drop
    f64.convert_i64_s
    f64.sqrt
    f64.sqrt
    f64.sqrt
    f64.sqrt
    f64.neg
    drop
)

)