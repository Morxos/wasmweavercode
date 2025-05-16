(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2167495757 (mut f32) (f32.const -3.4209369157785354e+18))
(global $global_2194560742 (mut i32) (i32.const -1473818571))
(func $run (export "run")
    (local i64 i64 i64)
    (local $temp i32)
    local.get 0
    i64.extend32_s
    i64.extend32_s
    f64.convert_i64_s
    i64.trunc_f64_u
    f32.convert_i64_u
    i64.trunc_f32_u
    f64.convert_i64_u
    f64.trunc
    f64.sqrt
    f64.trunc
    ;;INSPECT
    f64.trunc
    f32.demote_f64
    i64.trunc_f32_u
    i64.ctz
    nop
    f64.reinterpret_i64
    f64.trunc
    f64.abs
    drop
    global.get $global_2167495757
    f32.neg
    i64.trunc_f32_s
    local.tee 1
    local.tee 2
    i64.eqz
    global.set $global_2194560742
)

)