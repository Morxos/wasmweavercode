(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_3462766223 (mut f64) (f64.const 5.542221974561286e+18))
(func $run (export "run") (result i64)
    (local i64)
    (local $temp i32)
    (i64.const 5203682749167963035)
    i64.popcnt
    local.tee 0
    f64.reinterpret_i64
    drop
    (i64.const 59388004)
    f64.convert_i64_u
    global.set $global_3462766223
    (f64.const 7.923335068938461e+278)
    drop
    local.get 0
    (i64.const 2183615)
    i64.div_u
    nop
    drop
    nop
    local.get 0
)

)