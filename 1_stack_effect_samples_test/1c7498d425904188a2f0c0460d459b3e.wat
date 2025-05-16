(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2187140643 (mut i32) (i32.const -2043801735))
(func $run (export "run")
    (local f32 f64)
    (local $temp i32)
    (i32.const -78)
    i32.extend8_s
    i64.extend_i32_u
    f32.convert_i64_s
    f32.sqrt
    i32.trunc_f32_u
    global.set $global_2187140643
    global.get $global_2187140643
    i64.extend_i32_s
    f64.convert_i64_s
    f64.floor
    f64.floor
    f64.sqrt
    f64.nearest
    i32.trunc_f64_u
    (f32.const -4.3451810723519996e-32)
    ;;INSPECT
    nop
    local.tee 0
    f32.abs
    f32.nearest
    f32.trunc
    f32.sqrt
    f32.abs
    f32.trunc
    i32.reinterpret_f32
    i32.shr_s
    f64.convert_i32_u
    local.set 1
    (f32.const 4.6362222056580547e+24)
    f64.promote_f32
    f64.floor
    f64.floor
    drop
)

)