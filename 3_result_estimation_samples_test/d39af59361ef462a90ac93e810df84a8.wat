(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i32)
    (local f32)
    (local $temp i32)
    (f32.const 9.355301001358218e-29)
    local.set 0
    (i64.const 9379)
    i64.extend16_s
    i64.eqz
    i32.extend16_s
)

)