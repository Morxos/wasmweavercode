(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_1228880724 (mut i64) (i64.const 7029326570804846256))
(func $run (export "run") (result i64)
    (local i64)
    (local $temp i32)
    (i64.const -5000798)
    f64.convert_i64_s
    i64.reinterpret_f64
    global.set $global_1228880724
    local.get 0
)

)