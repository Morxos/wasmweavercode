(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1125042587 (mut f32) (f32.const -4.134843699660063e+17))
(global $global_3680661600 (mut i32) (i32.const 857677122))
(func $run (export "run")
    (local f32 f32)
    (local $temp i32)
    (f32.const -1.0202753343603854e-22)
    f32.trunc
    f64.promote_f32
    i64.trunc_f64_u
    i64.eqz
    ;;INSPECT
    i32.clz
    global.get $global_1125042587
    f32.neg
    f32.sqrt
    i32.trunc_f32_u
    i32.or
    global.set $global_3680661600
    local.get 0
    f32.ceil
    f32.ceil
    i64.trunc_f32_u
    i64.eqz
    i64.extend_i32_u
    i64.popcnt
    i64.popcnt
    i64.extend32_s
    i64.eqz
    i32.extend16_s
    i32.extend16_s
    f64.convert_i32_s
    i64.reinterpret_f64
    i64.ctz
    i64.eqz
    f32.reinterpret_i32
    f32.ceil
    nop
    local.tee 1
    f32.neg
    drop
)

)