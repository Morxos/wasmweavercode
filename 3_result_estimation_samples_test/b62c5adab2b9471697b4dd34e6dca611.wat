(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_1997791834 (mut f32) (f32.const -4.699375919033221e+18))
(func $run (export "run") (result f32)
    (local $temp i32)
    (i32.const -1679628858)
    f32.convert_i32_s
    f32.abs
    global.set $global_1997791834
    (f32.const 2.8172570597306696e-17)
)

)