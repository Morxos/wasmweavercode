(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result f64)
    (local f32)
    (local $temp i32)
    (f32.const 167.61740112304688)
    local.set 0
    nop
    (i64.const -40607)
    f64.reinterpret_i64
    br 0
)

)