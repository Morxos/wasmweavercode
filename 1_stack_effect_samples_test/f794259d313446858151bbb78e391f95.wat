(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32 f64)
    (local $temp i32)
    local.get 0
    i64.trunc_f32_u
    f64.convert_i64_u
    f64.trunc
    i64.trunc_f64_u
    i64.eqz
    i32.extend8_s
    nop
    f32.convert_i32_s
    f32.ceil
    f32.trunc
    f64.promote_f32
    f64.trunc
    f64.sqrt
    f32.demote_f64
    f32.neg
    f32.nearest
    f32.ceil
    f32.nearest
    f32.ceil
    f32.abs
    f32.abs
    f32.abs
    i64.trunc_f32_u
    ;;INSPECT
    i32.wrap_i64
    i64.extend_i32_u
    f64.reinterpret_i64
    f64.trunc
    f64.neg
    local.set 1
)

)