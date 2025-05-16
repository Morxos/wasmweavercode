(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1250104218 (mut f32) (f32.const -3.3045659794842583e+18))
(func $run (export "run")
    (local f64)
    (local $temp i32)
    (i32.const -6)
    f64.convert_i32_s
    i64.trunc_f64_s
    i64.extend32_s
    f64.convert_i64_s
    f64.abs
    i64.reinterpret_f64
    f64.convert_i64_s
    f64.trunc
    f64.floor
    f64.floor
    f64.trunc
    f64.nearest
    local.set 0
    local.get 0
    f64.floor
    f64.floor
    f64.floor
    drop
    local.get 0
    f64.floor
    f64.floor
    f64.sqrt
    f64.floor
    ;;INSPECT
    f32.demote_f64
    global.set $global_1250104218
    local.get 0
    drop
)

)