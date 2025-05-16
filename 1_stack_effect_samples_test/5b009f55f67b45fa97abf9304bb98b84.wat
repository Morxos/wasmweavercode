(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2738194953 (mut i32) (i32.const -944079238))
(global $global_3109454474 (mut f32) (f32.const -3.024878533802459e+18))
(func $run (export "run")
    (local f64 i64)
    (local $temp i32)
    local.get 0
    f64.trunc
    f64.abs
    f64.trunc
    f64.trunc
    f64.sqrt
    f64.abs
    f64.trunc
    f64.trunc
    f32.demote_f64
    i64.trunc_f32_u
    i32.wrap_i64
    local.get 0
    f64.trunc
    f64.sqrt
    f64.trunc
    f32.demote_f64
    global.get $global_2738194953
    f32.convert_i32_s
    f32.ceil
    drop
    i64.trunc_f32_u
    i64.eqz
    i32.extend8_s
    i64.extend_i32_s
    local.tee 1
    ;;INSPECT
    i64.popcnt
    f64.convert_i64_s
    i64.reinterpret_f64
    f32.convert_i64_s
    f32.trunc
    global.set $global_3109454474
    global.set $global_2738194953
)

)