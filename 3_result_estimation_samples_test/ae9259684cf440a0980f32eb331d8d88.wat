(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_725983299 (mut f64) (f64.const 7.486245806033973e+18))
(func $run (export "run") (result i64)
    (local $temp i32)
    (i64.const -54)
    i64.ctz
    f64.reinterpret_i64
    f64.sqrt
    (i64.const -49147757)
    i64.extend16_s
    i64.extend8_s
    f64.convert_i64_u
    global.set $global_725983299
    f64.sqrt
    i64.reinterpret_f64
)

)