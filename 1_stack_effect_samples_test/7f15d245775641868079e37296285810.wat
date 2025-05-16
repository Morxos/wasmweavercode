(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_156613258 (mut f64) (f64.const 7.113581220707318e+18))
(global $global_2580777827 (mut f32) (f32.const 7.469677378831122e+18))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    local.get 0
    ;;INSPECT
    i32.extend8_s
    i32.eqz
    f32.convert_i32_s
    f32.floor
    f32.trunc
    f32.neg
    f32.trunc
    drop
    global.get $global_156613258
    f64.floor
    (f32.const 6.20006588292199e-08)
    global.set $global_2580777827
    f64.floor
    global.set $global_156613258
    global.get $global_156613258
    f64.floor
    f64.floor
    f64.trunc
    f64.floor
    drop
)

)