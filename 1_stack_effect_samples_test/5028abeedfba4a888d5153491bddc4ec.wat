(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f64 f64 i32)
    (local $temp i32)
    local.get 0
    f64.nearest
    f32.demote_f64
    f32.sqrt
    f32.ceil
    local.get 0
    i64.trunc_f64_u
    drop
    f32.trunc
    f32.sqrt
    i64.trunc_f32_u
    f64.reinterpret_i64
    ;;INSPECT
    f32.demote_f64
    i64.trunc_f32_u
    f64.convert_i64_s
    i32.trunc_f64_u
    i32.extend8_s
    f64.convert_i32_u
    f64.sqrt
    f64.trunc
    i64.reinterpret_f64
    i64.clz
    f32.convert_i64_s
    f32.sqrt
    f32.ceil
    local.get 0
    f64.abs
    f64.neg
    f64.abs
    local.tee 1
    f32.demote_f64
    i32.reinterpret_f32
    nop
    local.tee 2
    i64.extend_i32_s
    i64.clz
    i64.extend8_s
    drop
    drop
)

)