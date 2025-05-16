(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_1096858952 (mut i32) (i32.const -382000159))
(func $run (export "run") (result f64)
    (local $temp i32)
    (f64.const 7.791772647847567e-119)
    f64.floor
    drop
    nop
    global.get $global_1096858952
    global.set $global_1096858952
    (f32.const -57638792.0)
    f64.promote_f32
)

)