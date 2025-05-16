(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_1582201916 (mut f32) (f32.const 4.645208478690836e+18))
(func $run (export "run") (result f64)
    (local $temp i32)
    (i64.const 8637329137860300319)
    f32.convert_i64_u
    global.set $global_1582201916
    (i64.const -7820)
    f64.reinterpret_i64
)

)