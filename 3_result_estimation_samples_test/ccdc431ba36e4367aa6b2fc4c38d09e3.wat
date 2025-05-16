(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_116795839 f64 (f64.const -2.9676227420689e+18))
(global $global_4192804078 (mut f64) (f64.const -2.842735614518538e+18))
(func $run (export "run") (result f64)
    (local $temp i32)
    global.get $global_116795839
    f64.abs
    global.set $global_4192804078
    (f32.const -114103.0859375)
    i32.trunc_f32_s
    i64.extend_i32_s
    f64.reinterpret_i64
)

)