(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_2244861252 (mut i32) (i32.const -2120542304))
(global $global_3429991335 (mut f64) (f64.const 4.244581814704429e+18))
(func $run (export "run") (result f32)
    (local i32)
    (local $temp i32)
    (i64.const 83289198)
    local.get 0
    i32.ctz
    global.set $global_2244861252
    i64.extend16_s
    f64.convert_i64_u
    global.set $global_3429991335
    (f64.const 1.0685015099557146e+65)
    i64.reinterpret_f64
    i64.extend16_s
    f32.convert_i64_s
    i32.trunc_f32_s
    i64.extend_i32_s
    f32.convert_i64_u
)

)