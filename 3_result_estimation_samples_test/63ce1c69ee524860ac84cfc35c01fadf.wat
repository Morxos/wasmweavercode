(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_3643847688 (mut f64) (f64.const -3.562447285555034e+18))
(global $global_129307546 (mut f32) (f32.const -4.696656277021917e+18))
(func $run (export "run") (result i32)
    (local f64)
    (local $temp i32)
    (f64.const 5.200469283062957e+175)
    f64.abs
    drop
    nop
    global.get $global_3643847688
    local.set 0
    (f32.const 1.442760331333192e-23)
    f32.trunc
    f32.floor
    global.set $global_129307546
    (i32.const -1880633)
    i32.eqz
)

)