(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2919180607 (mut i64) (i64.const 5948797550331827533))
(func $run (export "run")
    (local f64 f32 i64)
    (local $temp i32)
    local.get 0
    f64.trunc
    f64.trunc
    i64.reinterpret_f64
    i64.extend32_s
    i64.eqz
    f64.convert_i32_u
    i64.trunc_f64_s
    i64.clz
    f64.convert_i64_s
    f32.demote_f64
    f32.sqrt
    i64.trunc_f32_u
    f64.convert_i64_u
    f64.trunc
    f64.nearest
    f64.sqrt
    f64.sqrt
    i64.trunc_f64_s
    f64.convert_i64_u
    f64.trunc
    f64.sqrt
    f64.nearest
    f64.trunc
    drop
    nop
    (i64.const 1)
    f32.convert_i64_u
    local.tee 1
    i64.trunc_f32_s
    local.tee 2
    f64.convert_i64_s
    ;;INSPECT
    f64.sqrt
    i64.reinterpret_f64
    global.set $global_2919180607
)

)