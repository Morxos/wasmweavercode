(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result f32)
    (local $temp i32)
    (f32.const 4.008788235591374e+22)
    f32.floor
    drop
    (i32.const 690)
    f32.convert_i32_u
)

)