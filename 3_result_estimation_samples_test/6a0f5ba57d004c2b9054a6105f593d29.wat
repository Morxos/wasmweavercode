(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i32)
    (local i32)
    (local $temp i32)
    (i64.const 28)
    i32.wrap_i64
    i32.eqz
    i32.extend8_s
    local.tee 0
    (f64.const 1.5752533786491374e+308)
    drop
)

)