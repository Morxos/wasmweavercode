(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_479654413 (mut f32) (f32.const 5.464203354139787e+18))
(global $global_3403417828 (mut i64) (i64.const -7598486530500785331))
(func $run (export "run") (result f32)
    (local $temp i32)
    global.get $global_479654413
    global.get $global_479654413
    global.get $global_479654413
    i64.trunc_f32_s
    global.set $global_3403417828
    f32.eq
    f32.convert_i32_u
    f32.nearest
)

)