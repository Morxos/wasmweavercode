(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i64)
    (local $temp i32)
    (f32.const -2.357935895147545e-12)
    (i32.const 170226369)
    i32.eqz
    f32.convert_i32_s
    drop
    f64.promote_f32
    nop
    drop
    (i64.const 68)
)

)