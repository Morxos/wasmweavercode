(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i32)
    (local $temp i32)
    nop
    (i64.const 579033132)
    nop
    i64.extend8_s
    f32.convert_i64_s
    f32.neg
    i64.trunc_f32_s
    i64.eqz
)

)