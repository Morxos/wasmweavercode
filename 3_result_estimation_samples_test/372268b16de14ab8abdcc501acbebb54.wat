(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result f32)
    (local f32)
    (local $temp i32)
    (i32.const -2253)
    f32.convert_i32_u
    local.tee 0
    f32.sqrt
    f32.trunc
)

)