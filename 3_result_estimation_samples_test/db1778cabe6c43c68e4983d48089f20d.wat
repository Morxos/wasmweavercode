(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_4075892305 (mut f64) (f64.const 1.9757086952791654e+18))
(func $run (export "run") (result f64)
    (local $temp i32)
    (f64.const 1.3040050672015193e-289)
    global.set $global_4075892305
    global.get $global_4075892305
    i32.trunc_f64_s
    f64.convert_i32_s
)

)