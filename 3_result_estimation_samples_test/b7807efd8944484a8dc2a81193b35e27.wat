(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result f64)
    (local i32)
    (local $temp i32)
    nop
    (i64.const -7039822678673434687)
    i64.extend16_s
    f64.convert_i64_u
    i32.trunc_f64_u
    local.set 0
    (f64.const 1.321461112227191e+51)
)

)