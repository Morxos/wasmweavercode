(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2821848297 (mut i64) (i64.const -6484327382976547828))
(global $global_1125461550 (mut f64) (f64.const 7.562105651173186e+18))
(func $run (export "run")
    (local i32 f32)
    (local $temp i32)
    (i64.const 95838566)
    global.set $global_2821848297
    local.get 0
    i32.eqz
    f32.convert_i32_s
    local.tee 1
    f32.trunc
    f32.sqrt
    i64.trunc_f32_u
    i32.wrap_i64
    f32.reinterpret_i32
    i32.reinterpret_f32
    local.get 0
    i32.shr_s
    f32.convert_i32_s
    f64.promote_f32
    f64.neg
    ;;INSPECT
    f64.trunc
    global.get $global_2821848297
    f32.convert_i64_s
    f64.promote_f32
    f64.floor
    local.get 0
    i32.eqz
    i32.clz
    select
    f64.trunc
    f64.trunc
    f64.trunc
    global.get $global_2821848297
    global.get $global_2821848297
    i64.rem_s
    global.set $global_2821848297
    global.set $global_1125461550
)

)