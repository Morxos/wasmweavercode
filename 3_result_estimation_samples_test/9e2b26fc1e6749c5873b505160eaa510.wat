(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i32)
    (local i64)
    (local $temp i32)
    local.get 0
    (f32.const 1.409695376520796e-28)
    i64.trunc_f32_s
    i64.le_u
    f32.reinterpret_i32
    f32.sqrt
    i32.trunc_f32_s
)

)