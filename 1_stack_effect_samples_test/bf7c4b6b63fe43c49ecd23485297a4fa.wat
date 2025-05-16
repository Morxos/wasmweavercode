(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3437503982 (mut f32) (f32.const 8.509091350300328e+18))
(global $global_3584550319 (mut i32) (i32.const 163409845))
(func $run (export "run")
    (local f64 f64 f64)
    (local $temp i32)
    local.get 0
    f64.neg
    ;;INSPECT
    f64.trunc
    i64.trunc_f64_u
    i64.eqz
    i64.extend_i32_s
    f64.reinterpret_i64
    f64.trunc
    f64.sqrt
    f64.nearest
    local.tee 1
    f64.neg
    local.tee 2
    f64.nearest
    f64.trunc
    f64.sqrt
    i64.reinterpret_f64
    i64.popcnt
    f64.reinterpret_i64
    f64.trunc
    f64.abs
    i64.reinterpret_f64
    i64.extend32_s
    f64.reinterpret_i64
    f64.abs
    i64.trunc_f64_s
    f32.convert_i64_s
    global.set $global_3437503982
    local.get 0
    drop
    global.get $global_3437503982
    i32.trunc_f32_s
    f64.convert_i32_u
    f64.trunc
    f64.sqrt
    i32.trunc_f64_u
    global.set $global_3584550319
)

)