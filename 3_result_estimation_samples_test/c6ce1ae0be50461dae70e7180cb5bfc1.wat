(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i32)
    (local $temp i32)
    (f32.const -4.0354122808595683e-22)
    f64.promote_f32
    f64.neg
    drop
    (i64.const -921)
    i64.eqz
)

)