(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result f64)
    (local i64)
    (local $temp i32)
    (i64.const -32)
    nop
    local.tee 0
    local.set 0
    (i64.const 4601907)
    f64.convert_i64_u
)

)