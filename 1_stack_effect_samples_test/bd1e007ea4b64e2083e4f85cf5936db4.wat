(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_415362680 i32 (i32.const 518614865))
(global $global_558868940 (mut i64) (i64.const 7007072240917531823))
(global $global_920426426 (mut f32) (f32.const 8.410793911265526e+18))
(func $run (export "run")
    (local f64 f32)
    (local $temp i32)
    local.get 0
    f64.trunc
    i64.trunc_f64_u
    i64.ctz
    f64.convert_i64_s
    f64.trunc
    f32.demote_f64
    f32.sqrt
    f32.nearest
    i64.trunc_f32_s
    ;;INSPECT
    i64.eqz
    i64.extend_i32_s
    i64.popcnt
    global.get $global_415362680
    f64.convert_i32_u
    local.get 0
    f64.sub
    f64.sqrt
    drop
    global.set $global_558868940
    global.get $global_415362680
    f32.convert_i32_u
    local.tee 1
    i32.trunc_f32_u
    i32.extend16_s
    f32.reinterpret_i32
    i64.trunc_f32_u
    i32.wrap_i64
    f32.convert_i32_u
    i32.trunc_f32_u
    f32.reinterpret_i32
    f32.trunc
    f32.ceil
    global.set $global_920426426
)

)