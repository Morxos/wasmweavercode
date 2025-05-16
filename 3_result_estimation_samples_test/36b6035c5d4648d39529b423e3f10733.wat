(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_1749294498 (mut f64) (f64.const 2.6977612764126208e+17))
(func $run (export "run") (result i64)
    (local $temp i32)
    (i64.const 74327)
    f64.reinterpret_i64
    f64.floor
    f64.floor
    global.get $global_1749294498
    drop
    i32.trunc_f64_s
    i32.clz
    i64.extend_i32_u
)

)