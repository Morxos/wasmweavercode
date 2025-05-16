(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_3966045188 (mut i32) (i32.const -135008900))
(global $global_3767470659 (mut f32) (f32.const 1.5315511154541855e+18))
(func $run (export "run") (result f32)
    (local $temp i32)
    nop
    (i32.const -948648014)
    global.get $global_3966045188
    i32.shl
    (f64.const 9.565000231355666e+304)
    f64.floor
    f64.trunc
    f64.floor
    drop
    f32.convert_i32_u
    global.set $global_3767470659
    global.get $global_3966045188
    f32.convert_i32_s
)

)