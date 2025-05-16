(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i64 f32)
    (local $temp i32)
    nop
    local.get 0
    f32.convert_i64_u
    f32.sqrt
    i64.trunc_f32_u
    i64.eqz
    f32.convert_i32_u
    i64.trunc_f32_u
    f64.convert_i64_s
    (f32.const -2.099128873246758e+34)
    f32.neg
    f32.trunc
    f64.promote_f32
    f64.floor
    (f32.const 257337898041344.0)
    f64.promote_f32
    f64.sqrt
    f64.floor
    drop
    f64.sqrt
    f64.div
    f64.sqrt
    f32.demote_f64
    local.tee 1
    f32.nearest
    i32.trunc_f32_s
    ;;INSPECT
    i32.clz
    f32.convert_i32_u
    f32.ceil
    f32.ceil
    nop
    f32.neg
    local.set 1
)

)