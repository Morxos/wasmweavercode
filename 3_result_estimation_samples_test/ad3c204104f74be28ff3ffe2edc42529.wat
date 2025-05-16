(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i32)
    (local $temp i32)
    (i32.const -40544)
    i32.extend16_s
    i64.extend_i32_u
    i64.extend8_s
    nop
    drop
    (i64.const -63939)
    f64.convert_i64_s
    f32.demote_f64
    drop
    nop
    (i64.const 4958277)
    i64.extend32_s
    i64.eqz
)

)