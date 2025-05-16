(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_2512918862 (mut f64) (f64.const 4.736486652461089e+18))
(func $run (export "run") (result i64)
    (local $temp i32)
    (i64.const -71)
    f64.convert_i64_u
    global.set $global_2512918862
    (i32.const -8625)
    i64.extend_i32_s
    br 0
)

)