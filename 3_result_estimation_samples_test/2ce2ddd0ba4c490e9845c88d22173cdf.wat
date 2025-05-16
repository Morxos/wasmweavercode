(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_4122646693 (mut f64) (f64.const -2.7120390255154913e+18))
(func $run (export "run") (result f64)
    (local i64)
    (local $temp i32)
    nop
    global.get $global_4122646693
    i64.trunc_f64_s
    local.set 0
    (f64.const 8.311190093503699e-75)
)

)