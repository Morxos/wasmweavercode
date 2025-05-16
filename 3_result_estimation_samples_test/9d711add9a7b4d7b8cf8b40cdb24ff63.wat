(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_4069200834 (mut f64) (f64.const -4.659871752030609e+18))
(global $global_3613560265 (mut i32) (i32.const 387654317))
(func $run (export "run") (result f32)
    (local $temp i32)
    (f64.const 8.58867582593476e+103)
    global.set $global_4069200834
    (i32.const -44480)
    i32.eqz
    global.set $global_3613560265
    (i64.const 2122005545485241290)
    f32.convert_i64_u
    f32.trunc
)

)