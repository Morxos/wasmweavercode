(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result f32)
    (local f64)
    (local $temp i32)
    (f32.const -1.836710875037655e-17)
    (f64.const 3.707349354741541e+53)
    local.set 0
    (i32.const 591)
    f32.convert_i32_u
    drop
)

)