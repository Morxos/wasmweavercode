(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2443419743 f64 (f64.const 1.0504036480207565e+18))
(func $run (export "run")
    (local f64 f32 i32)
    (local $temp i32)
    global.get $global_2443419743
    nop
    global.get $global_2443419743
    f64.sqrt
    drop
    f64.floor
    i64.reinterpret_f64
    drop
    local.get 0
    ;;INSPECT
    f64.trunc
    f64.neg
    f64.trunc
    i32.trunc_f64_u
    f32.reinterpret_i32
    f32.trunc
    f32.trunc
    f32.trunc
    f32.trunc
    f32.floor
    f32.floor
    local.tee 1
    f32.trunc
    local.get 0
    f32.demote_f64
    f32.eq
    local.set 2
)

)