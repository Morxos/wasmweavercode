(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_671407917 (mut i32) (i32.const 616997225))
(func $run (export "run") (result i64)
    (local f64)
    (local $temp i32)
    (f32.const -2.54110710448409e+29)
    i32.reinterpret_f32
    f64.convert_i32_u
    f64.floor
    local.set 0
    (f64.const 1.0889190114200884e-75)
    (f64.const 2.491423653827058e+72)
    f64.gt
    global.set $global_671407917
    (i64.const -7246498895382647057)
    return
)

)