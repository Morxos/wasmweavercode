(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_1091154306 (mut f32) (f32.const 4.1900255081985475e+18))
(func $run (export "run") (result i64)
    (local $temp i32)
    (f32.const -4.051635446347793e-27)
    global.set $global_1091154306
    nop
    global.get $global_1091154306
    drop
    (i64.const -4)
)

)