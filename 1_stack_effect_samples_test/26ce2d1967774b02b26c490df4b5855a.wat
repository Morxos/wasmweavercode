(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_475319740 (mut f64) (f64.const -7.755138056223212e+17))
(func $run (export "run")
    (local f32 i32 f64 f32)
    (local $temp i32)
    local.get 0
    i32.reinterpret_f32
    i32.popcnt
    i64.extend_i32_s
    i64.extend32_s
    i64.extend16_s
    i32.wrap_i64
    local.tee 1
    f64.convert_i32_s
    i64.reinterpret_f64
    f64.convert_i64_s
    local.tee 2
    f64.trunc
    f64.floor
    i64.reinterpret_f64
    local.get 0
    i64.trunc_f32_u
    f32.convert_i64_s
    local.tee 3
    i32.reinterpret_f32
    i32.popcnt
    ;;INSPECT
    i32.popcnt
    i32.eqz
    i32.extend16_s
    f64.convert_i32_s
    i32.trunc_f64_u
    f32.convert_i32_s
    i64.trunc_f32_u
    i64.shl
    f32.convert_i64_u
    i64.trunc_f32_u
    i64.extend32_s
    i64.ctz
    f64.convert_i64_s
    f32.demote_f64
    i64.trunc_f32_u
    i64.popcnt
    i64.eqz
    f64.convert_i32_s
    global.set $global_475319740
)

)