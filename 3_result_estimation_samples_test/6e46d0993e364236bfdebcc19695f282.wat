(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i64)
    (local f32)
    (local $temp i32)
    (i32.const 673834986)
    f32.convert_i32_u
    drop
    (i64.const 304544)
    local.get 0
    f64.promote_f32
    i64.reinterpret_f64
    i64.le_s
    drop
    (i64.const -64)
    i64.extend8_s
    i64.extend8_s
)

)