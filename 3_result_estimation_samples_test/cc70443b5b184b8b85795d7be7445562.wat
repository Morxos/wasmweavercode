(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_3217635012 (mut i64) (i64.const 7337620959361879197))
(func $run (export "run") (result f64)
    (local f32)
    (local $temp i32)
    (f32.const 100.65310668945312)
    i64.trunc_f32_u
    global.set $global_3217635012
    (i32.const -68189)
    drop
    (f32.const 8.203804461747515e-33)
    local.set 0
    (f32.const 2.2953673823655585e-22)
    drop
    global.get $global_3217635012
    f64.convert_i64_u
)

)