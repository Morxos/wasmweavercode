(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i32)
    (local $temp i32)
    (i64.const 967228)
    f64.convert_i64_u
    i32.trunc_f64_u
    f32.convert_i32_u
    f32.floor
    nop
    f64.promote_f32
    i64.reinterpret_f64
    i64.popcnt
    i64.ctz
    f32.convert_i64_u
    drop
    (i64.const 6005)
    i32.wrap_i64
)

)