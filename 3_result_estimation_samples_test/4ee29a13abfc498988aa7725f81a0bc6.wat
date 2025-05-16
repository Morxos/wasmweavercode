(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result f64)
    (local f64 i64)
    (local $temp i32)
    local.get 0
    (f64.const 1.0441984695526916e+284)
    local.set 0
    (i64.const 0)
    local.set 1
    br 0
)

)