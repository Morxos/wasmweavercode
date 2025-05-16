(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_1469568297 f32 (f32.const 2.9915333697889894e+18))
(global $global_628615415 (mut i64) (i64.const -760069393039600371))
(func $run (export "run") (result f32)
    (local $temp i32)
    (f32.const -4.955554008483887)
    drop
    global.get $global_1469568297
    i64.trunc_f32_s
    global.set $global_628615415
    global.get $global_1469568297
)

)