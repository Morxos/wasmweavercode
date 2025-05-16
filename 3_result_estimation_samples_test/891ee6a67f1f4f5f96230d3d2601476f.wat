(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_822366880 (mut i32) (i32.const 12142620))
(func $run (export "run") (result i32)
    (local $temp i32)
    (f32.const -6.620800198628719e-34)
    (i32.const 1683366171)
    global.set $global_822366880
    f32.trunc
    f32.sqrt
    f32.abs
    f32.ceil
    i64.trunc_f32_s
    drop
    (i64.const 61653881)
    i64.ctz
    f32.convert_i64_u
    i64.trunc_f32_u
    i64.extend32_s
    f64.reinterpret_i64
    f64.neg
    f64.nearest
    i64.reinterpret_f64
    f32.convert_i64_s
    drop
    (i32.const -117)
)

)