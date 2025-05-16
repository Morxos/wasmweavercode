(module
(type $sig_function_3583331346 (func))
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_3197168309 (mut f64) (f64.const -7.355913073532252e+18))
(func $function_3583331346 (export "function_3583331346")
    (local $temp i32)
    (i64.const 33)
    f64.convert_i64_s
    f32.demote_f64
    (i32.const -745498124)
    i32.eqz
    f32.convert_i32_s
    drop
    f32.abs
    drop
)
(func $run (export "run") (result f64)
    (local f64 f32)
    (local $temp i32)
    (f64.const 0.0)
    f64.trunc
    call $function_3583331346
    local.get 0
    f64.ge
    (i64.const -8)
    drop
    f32.convert_i32_u
    local.set 1
    global.get $global_3197168309
)

)