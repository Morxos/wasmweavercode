(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i32)
    (local i64)
    (local $temp i32)
    (f64.const 1.2643482804251601e-34)
    drop
    (i64.const -134114004)
    (f32.const -2.6297461122622125e+31)
    f32.neg
    (f32.const -1.5787000179345867e-11)
    f32.eq
    drop
    local.set 0
    (i32.const 904)
)

)