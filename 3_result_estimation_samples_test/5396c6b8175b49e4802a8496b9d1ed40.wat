(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_2958546967 (mut f32) (f32.const -3.7785489495440753e+18))
(func $run (export "run") (result i32)
    (local $temp i32)
    (i32.const -9681293)
    drop
    (i32.const 0)
    (f32.const 0.0006128256791271269)
    f32.nearest
    global.set $global_2958546967
)

)