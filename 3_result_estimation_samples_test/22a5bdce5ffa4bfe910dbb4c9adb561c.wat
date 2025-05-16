(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i32)
    (local i32)
    (local $temp i32)
    (f64.const 6.77750378205188e+102)
    drop
    (i64.const -5)
    i32.wrap_i64
    local.tee 0
)

)