(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i64)
    (local $temp i32)
    nop
    nop
    nop
    (f32.const 63683.203125)
    f32.abs
    i32.trunc_f32_u
    f32.convert_i32_s
    i64.trunc_f32_s
)

)