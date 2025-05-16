(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result f64)
    (local f64)
    (local $temp i32)
    (i64.const -66955)
    f64.convert_i64_u
    local.tee 0
    local.get 0
    f64.max
)

)