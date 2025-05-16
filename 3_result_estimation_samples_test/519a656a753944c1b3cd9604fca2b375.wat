(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i32)
    (local $temp i32)
    (i64.const 5185871)
    f64.reinterpret_i64
    i32.trunc_f64_s
    f64.convert_i32_u
    drop
    (i32.const 96873)
)

)