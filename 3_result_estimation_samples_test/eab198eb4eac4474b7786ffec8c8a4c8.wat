(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i64)
    (local $temp i32)
    (i32.const 2147161941)
    i32.extend8_s
    drop
    (i32.const 7)
    f32.convert_i32_s
    i64.trunc_f32_s
)

)