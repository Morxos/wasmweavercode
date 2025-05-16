(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3932485179 (mut f64) (f64.const -2.1716628265281556e+18))
(global $global_1548644015 (mut f32) (f32.const 8.812709391682765e+18))
(func $run (export "run")
    (local f32 f32)
    (local $temp i32)
    ;;INSPECT
    local.get 0
    i32.trunc_f32_u
    i32.popcnt
    i32.extend8_s
    global.get $global_3932485179
    f64.abs
    local.get 0
    global.set $global_1548644015
    f64.ceil
    f32.demote_f64
    local.tee 1
    f32.nearest
    local.get 0
    f32.copysign
    f32.trunc
    global.set $global_1548644015
    i32.clz
    i32.eqz
    f32.reinterpret_i32
    (i32.const 71)
    drop
    i32.reinterpret_f32
    i32.clz
    i32.clz
    i32.clz
    i32.clz
    i32.clz
    f32.reinterpret_i32
    local.get 0
    f32.max
    drop
)

)