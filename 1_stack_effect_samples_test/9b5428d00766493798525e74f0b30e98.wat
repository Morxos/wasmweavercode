(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3924294519 (mut f64) (f64.const -5.380220299159212e+18))
(global $global_160599 (mut f32) (f32.const 4.172853885351756e+18))
(global $global_4177189778 (mut i64) (i64.const 1671551582272537866))
(func $run (export "run")
    (local i32 f32)
    (local $temp i32)
    local.get 0
    i32.popcnt
    f64.convert_i32_s
    i64.reinterpret_f64
    i64.ctz
    f64.convert_i64_u
    f64.trunc
    i32.trunc_f64_u
    f32.convert_i32_u
    local.tee 1
    i64.trunc_f32_u
    global.get $global_3924294519
    f64.floor
    f64.floor
    f64.nearest
    global.set $global_3924294519
    f64.reinterpret_i64
    i64.trunc_f64_u
    i64.extend32_s
    drop
    nop
    (i32.const -406)
    i64.extend_i32_s
    i64.extend32_s
    i64.extend32_s
    f32.convert_i64_u
    ;;INSPECT
    f32.floor
    f32.sqrt
    f32.floor
    global.set $global_160599
    (i64.const -4195)
    global.set $global_4177189778
)

)