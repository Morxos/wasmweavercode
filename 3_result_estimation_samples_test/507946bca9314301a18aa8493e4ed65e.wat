(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_1961983720 (mut f64) (f64.const -6.901964729896042e+18))
(func $run (export "run") (result i32)
    (local i32)
    (local $temp i32)
    (i64.const 503577513)
    (i32.const -74905)
    f64.convert_i32_u
    nop
    global.set $global_1961983720
    f32.convert_i64_s
    (f64.const 2.4694186338835792e+298)
    drop
    f32.abs
    (i32.const 2066963213)
    local.set 0
    (i32.const -3)
    f32.reinterpret_i32
    f32.le
)

)