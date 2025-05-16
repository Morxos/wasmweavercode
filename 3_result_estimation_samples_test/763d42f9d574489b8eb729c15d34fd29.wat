(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_779739516 i32 (i32.const -655197284))
(func $run (export "run") (result i64)
    (local i64 f64)
    (local $temp i32)
    global.get $global_779739516
    (i64.const 467034280)
    local.set 0
    f64.convert_i32_u
    f64.abs
    local.set 1
    local.get 0
)

)