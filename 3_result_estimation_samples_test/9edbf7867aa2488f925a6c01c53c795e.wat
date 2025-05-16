(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result f64)
    (local f32 f32)
    (local $temp i32)
    nop
    nop
    local.get 0
    f32.nearest
    f32.sqrt
    local.tee 1
    f64.promote_f32
)

)