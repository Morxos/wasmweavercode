(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1613000954 (mut i32) (i32.const -8635445))
(global $global_3135798356 (mut f64) (f64.const 1.6830669559632425e+18))
(global $global_352345608 (mut f32) (f32.const -7.733380949102035e+18))
(func $run (export "run")
    (local f32 f64)
    (local $temp i32)
    (i64.const -571)
    i64.extend32_s
    ;;INSPECT
    i64.popcnt
    f32.convert_i64_u
    local.get 0
    local.get 0
    f32.eq
    global.set $global_1613000954
    f32.abs
    f32.trunc
    i32.trunc_f32_s
    i32.extend8_s
    i64.extend_i32_s
    f64.convert_i64_s
    f64.trunc
    local.tee 1
    f64.floor
    f64.sqrt
    global.set $global_3135798356
    local.get 0
    global.set $global_352345608
    (f32.const -3.572987719076702e+19)
    f32.neg
    global.set $global_352345608
)

)