(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2740583379 (mut i64) (i64.const 5864735197745048994))
(global $global_3622741972 (mut i32) (i32.const -898089801))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    ;;FLAG_0
    (f64.const 2.3062457163961742e-234)
    local.get 0
    global.get $global_2740583379
    i64.eq
    i64.extend_i32_u
    nop
    f32.convert_i64_s
    f32.nearest
    (f32.const -3.451751916619516e+20)
    f32.le
    f32.convert_i32_u
    i32.trunc_f32_u
    i64.extend_i32_u
    global.set $global_2740583379
    f64.abs
    f64.nearest
    f64.trunc
    i64.reinterpret_f64
    f32.convert_i64_s
    f32.sqrt
    f32.nearest
    f32.sqrt
    i64.trunc_f32_u
    f32.convert_i64_s
    f32.floor
    i32.reinterpret_f32
    global.set $global_3622741972
    local.get 0
    local.get 0
    i64.or
    global.get $global_2740583379
    i64.rotl
    drop
)

)