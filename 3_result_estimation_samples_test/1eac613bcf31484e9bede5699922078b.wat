(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i64)
    (local i32)
    (local $temp i32)
    nop
    nop
    (f64.const 4.708738501672394e+212)
    i64.reinterpret_f64
    i64.eqz
    local.tee 0
    i64.extend_i32_u
)

)