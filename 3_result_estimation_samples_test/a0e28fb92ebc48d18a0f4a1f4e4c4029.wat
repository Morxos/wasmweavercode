(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_3412359716 (mut f32) (f32.const 3.062605251652616e+18))
(global $global_4262466865 (mut f64) (f64.const 1.180382783125457e+18))
(func $run (export "run") (result f64)
    (local f64)
    (local $temp i32)
    (i32.const -29611116)
    f32.convert_i32_u
    global.set $global_3412359716
    local.get 0
    global.set $global_4262466865
    (f64.const 5.5258260534330026e+54)
    f32.demote_f64
    (i32.const -972143)
    i32.ctz
    f32.convert_i32_u
    f32.le
    f64.convert_i32_u
)

)