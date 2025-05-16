(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_4243773265 (mut f32) (f32.const -3.1990312800375276e+18))
(func $run (export "run") (result i32)
    (local f32 f64 f64)
    (local $temp i32)
    (f32.const 9.48282170336506e-18)
    f32.trunc
    f32.floor
    global.set $global_4243773265
    (f32.const -539898.9375)
    f32.ceil
    f32.ceil
    local.set 0
    (i64.const 962412052)
    i64.extend8_s
    f64.reinterpret_i64
    f64.nearest
    local.set 1
    global.get $global_4243773265
    f64.promote_f32
    f64.neg
    local.tee 2
    i32.trunc_f64_s
    return
)

)