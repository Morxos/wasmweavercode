(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_1795817203 f64 (f64.const 6.338444427837125e+18))
(func $run (export "run") (result f64)
    (local i64 i32)
    (local $temp i32)
    (i64.const -1814)
    local.tee 0
    i32.wrap_i64
    local.set 1
    global.get $global_1795817203
    f64.ceil
)

)