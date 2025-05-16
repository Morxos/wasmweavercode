(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32 i32 i64 i64)
    (local $temp i32)
    local.get 0
    f32.neg
    f64.promote_f32
    f64.trunc
    f64.trunc
    i64.trunc_f64_s
    ;;INSPECT
    f32.convert_i64_u
    f64.promote_f32
    i64.trunc_f64_u
    f32.convert_i64_u
    i32.reinterpret_f32
    f64.convert_i32_s
    f64.floor
    f64.nearest
    i64.trunc_f64_u
    f64.convert_i64_s
    f32.demote_f64
    i32.reinterpret_f32
    local.tee 1
    f32.reinterpret_i32
    f32.ceil
    f32.ceil
    f32.abs
    f32.abs
    i64.trunc_f32_u
    (f32.const -2.2850685162532483e+29)
    drop
    f64.reinterpret_i64
    i64.reinterpret_f64
    drop
    local.get 0
    drop
    (i64.const 511)
    local.tee 2
    local.tee 3
    i64.clz
    drop
)

)