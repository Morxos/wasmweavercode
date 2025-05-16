(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3598420427 (mut i64) (i64.const 1870456536160112965))
(global $global_905672086 (mut i32) (i32.const -345724126))
(global $global_2708816493 (mut f32) (f32.const 8.983698293208908e+18))
(func $run (export "run")
    (local f64 i64)
    (local $temp i32)
    local.get 0
    f64.sqrt
    f32.demote_f64
    global.get $global_3598420427
    i64.popcnt
    i32.wrap_i64
    local.get 0
    ;;INSPECT
    local.get 0
    f64.sub
    (f32.const 1.7316872860080151e+37)
    f64.promote_f32
    f64.floor
    f64.div
    f32.demote_f64
    f32.floor
    f32.sqrt
    f32.abs
    global.get $global_3598420427
    nop
    local.set 1
    f32.trunc
    i32.reinterpret_f32
    i32.lt_u
    global.set $global_905672086
    global.set $global_2708816493
)

)