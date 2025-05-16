(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_424320296 (mut i64) (i64.const 4689342719862569459))
(func $run (export "run") (result i64)
    (local $temp i32)
    global.get $global_424320296
    i64.clz
    f64.convert_i64_s
    i64.reinterpret_f64
    global.get $global_424320296
    i64.extend16_s
    i64.mul
)

)