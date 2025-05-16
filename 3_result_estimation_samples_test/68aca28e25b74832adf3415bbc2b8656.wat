(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i64)
    (local f64)
    (local $temp i32)
    (f64.const 1.4462423413793758e+85)
    f64.neg
    local.set 0
    (f32.const 1.315282367246009e+26)
    i32.reinterpret_f32
    f32.convert_i32_u
    f32.neg
    f32.neg
    f32.abs
    i64.trunc_f32_u
)

)