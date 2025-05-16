(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i64 f64)
    (local $temp i32)
    local.get 0
    i32.wrap_i64
    f32.convert_i32_s
    i64.trunc_f32_u
    i64.clz
    (f32.const 4.567090581986122e-05)
    f32.nearest
    i32.reinterpret_f32
    f32.convert_i32_u
    i64.trunc_f32_s
    (f32.const 8.690705506034998e+34)
    f64.promote_f32
    f32.demote_f64
    f32.ceil
    f64.promote_f32
    ;;INSPECT
    (f64.const 1.9283342879326536e+207)
    local.set 1
    drop
    i64.gt_u
    drop
)

)