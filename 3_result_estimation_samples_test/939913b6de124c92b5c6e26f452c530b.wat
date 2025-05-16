(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i32)
    (local $temp i32)
    (i64.const -7510)
    f32.convert_i64_u
    f32.floor
    f32.neg
    f32.abs
    nop
    f32.sqrt
    i64.trunc_f32_s
    i64.popcnt
    (f32.const 403664142336.0)
    i64.trunc_f32_s
    i64.extend32_s
    i64.lt_u
)

)