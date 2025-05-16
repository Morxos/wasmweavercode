(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3114349670 (mut f64) (f64.const 5.282752060184181e+18))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    ;;FLAG_0
    global.get $global_3114349670
    f64.floor
    (i32.const 975436422)
    f32.convert_i32_u
    i32.trunc_f32_s
    f64.convert_i32_u
    f64.abs
    f64.floor
    f64.le
    local.tee 0
    (br_table 0)
    ;;FLAG_1
    br 0
)

)