(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_2111194363 (mut i32) (i32.const 479119277))
(global $global_2739382160 (mut i64) (i64.const 985694131626584221))
(func $run (export "run") (result f64)
    (local $temp i32)
    global.get $global_2111194363
    f64.convert_i32_u
    i64.reinterpret_f64
    global.set $global_2739382160
    (f64.const 6.08484540010479e+55)
)

)