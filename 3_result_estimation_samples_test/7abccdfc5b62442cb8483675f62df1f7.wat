(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_1513875936 (mut i64) (i64.const 8249443379476242012))
(global $global_270452898 (mut f64) (f64.const 3.03724993756331e+18))
(func $run (export "run") (result i32)
    (local i64)
    (local $temp i32)
    (f64.const 4.185177288218738e-36)
    i64.reinterpret_f64
    local.set 0
    nop
    (f64.const 1.0334077101110352e-25)
    i32.trunc_f64_u
    (i64.const -8600613036145238231)
    global.get $global_1513875936
    i64.rem_u
    f64.convert_i64_s
    global.set $global_270452898
)

)