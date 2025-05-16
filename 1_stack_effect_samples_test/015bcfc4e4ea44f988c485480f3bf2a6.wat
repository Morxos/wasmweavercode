(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2372101994 (mut i32) (i32.const -1087905207))
(global $global_2006996789 (mut f32) (f32.const 5.055386239234998e+18))
(func $run (export "run")
    (local f64)
    (local $temp i32)
    (i64.const -6579643)
    f64.convert_i64_s
    local.tee 0
    f64.abs
    local.set 0
    (i32.const 538697005)
    nop
    global.set $global_2372101994
    local.get 0
    ;;INSPECT
    i32.trunc_f64_u
    f32.convert_i32_s
    (i32.const 104763)
    f32.reinterpret_i32
    f32.lt
    (i32.const -40)
    i32.div_s
    f32.convert_i32_u
    i32.reinterpret_f32
    f32.reinterpret_i32
    i32.trunc_f32_u
    f32.convert_i32_u
    global.set $global_2006996789
)

)