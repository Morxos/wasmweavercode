(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_4089328062 (mut i64) (i64.const 5123557949361919720))
(func $run (export "run") (result f64)
    (local $temp i32)
    (i64.const -1041834916714344620)
    i64.popcnt
    f32.convert_i64_s
    f32.abs
    i64.trunc_f32_u
    global.set $global_4089328062
    (i32.const 2689)
    f64.convert_i32_s
)

)