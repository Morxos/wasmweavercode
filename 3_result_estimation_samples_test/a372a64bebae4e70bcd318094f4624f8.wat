(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i64)
    (local i32)
    (local $temp i32)
    nop
    (f32.const -6.899710590935139e-21)
    f64.promote_f32
    drop
    local.get 0
    i32.extend16_s
    drop
    local.get 0
    nop
    drop
    (i32.const 5754432)
    local.set 0
    local.get 0
    f32.convert_i32_u
    i64.trunc_f32_u
    br 0
)

)