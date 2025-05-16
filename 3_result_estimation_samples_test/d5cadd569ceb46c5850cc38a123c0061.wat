(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result f32)
    (local f64)
    (local $temp i32)
    (i32.const -2418031)
    f64.convert_i32_u
    local.tee 0
    f64.nearest
    local.set 0
    nop
    (f32.const -1465748.875)
)

)