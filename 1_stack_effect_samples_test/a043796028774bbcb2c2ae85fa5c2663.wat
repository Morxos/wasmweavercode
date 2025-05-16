(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1829547093 f64 (f64.const -1.1163531472613233e+18))
(global $global_3455334243 (mut f64) (f64.const -7.19377578314238e+17))
(func $run (export "run")
    (local i32 f32)
    (local $temp i32)
    local.get 0
    f64.convert_i32_s
    (f32.const 1.6071238889747751e-25)
    i64.trunc_f32_s
    i64.extend32_s
    i64.eqz
    ;;INSPECT
    global.get $global_1829547093
    f64.abs
    f64.abs
    f64.trunc
    f64.trunc
    f64.floor
    global.set $global_3455334243
    f64.convert_i32_u
    i64.reinterpret_f64
    drop
    f64.sqrt
    i64.reinterpret_f64
    f64.convert_i64_s
    f32.demote_f64
    f32.abs
    i32.reinterpret_f32
    i32.extend16_s
    f32.reinterpret_i32
    f32.neg
    i64.trunc_f32_u
    i64.eqz
    drop
    global.get $global_1829547093
    global.set $global_3455334243
    (f32.const -3.2509374122058625e+31)
    f32.neg
    local.set 1
)

)