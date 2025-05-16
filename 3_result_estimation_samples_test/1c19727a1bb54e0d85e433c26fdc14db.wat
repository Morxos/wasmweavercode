(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_3192234363 f64 (f64.const 3.3855636970599137e+18))
(func $run (export "run") (result i32)
    (local f64)
    (local $temp i32)
    global.get $global_3192234363
    nop
    local.set 0
    (i64.const -15)
    i64.extend16_s
    (i32.const 4833)
    f32.convert_i32_u
    drop
    i64.eqz
)

)