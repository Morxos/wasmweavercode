(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_4276319784 (mut f32) (f32.const -6.00455944312193e+18))
(func $run (export "run") (result i32)
    (local f32)
    (local $temp i32)
    (f64.const 3.7711576667756696e-184)
    (f32.const -1.4400644743901316e-18)
    i64.trunc_f32_s
    f32.convert_i64_s
    local.set 0
    (i64.const 288543836949330718)
    i64.extend16_s
    f32.convert_i64_u
    global.set $global_4276319784
    i32.trunc_f64_u
)

)