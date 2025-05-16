(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_4047960783 (mut f32) (f32.const -2.2903201040527524e+18))
(global $global_270121751 (mut i64) (i64.const -2648433831207980002))
(func $run (export "run")
    (local f64 f64 i64 f64 i64)
    (local $temp i32)
    local.get 0
    local.tee 1
    f32.demote_f64
    f32.ceil
    i32.reinterpret_f32
    f32.reinterpret_i32
    f32.ceil
    i32.reinterpret_f32
    i64.extend_i32_s
    i64.extend32_s
    i64.popcnt
    i64.extend32_s
    i64.popcnt
    local.tee 2
    i64.clz
    f64.reinterpret_i64
    f64.sqrt
    local.tee 3
    i64.reinterpret_f64
    local.tee 4
    i32.wrap_i64
    i32.popcnt
    f32.reinterpret_i32
    f32.sqrt
    global.set $global_4047960783
    local.get 0
    f64.nearest
    f64.nearest
    i64.trunc_f64_s
    i64.popcnt
    i64.extend16_s
    f64.convert_i64_s
    i32.trunc_f64_u
    f32.reinterpret_i32
    i32.reinterpret_f32
    i64.extend_i32_u
    ;;INSPECT
    i64.extend8_s
    i64.clz
    global.set $global_270121751
)

)