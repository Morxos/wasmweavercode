(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i64)
    (local $temp i32)
    (i32.const 4961669)
    f32.convert_i32_u
    f64.promote_f32
    i64.trunc_f64_s
    (i32.const 737296076)
    br_if 0
)

)