(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_388460850 (mut f64) (f64.const -4.518170210154828e+18))
(func $run (export "run")
    (local f64 f32)
    (local $temp i32)
    local.get 0
    ;;INSPECT
    f32.demote_f64
    local.tee 1
    i32.reinterpret_f32
    f32.convert_i32_s
    f32.ceil
    i32.reinterpret_f32
    i32.extend8_s
    f32.convert_i32_s
    f32.ceil
    f32.ceil
    i64.trunc_f32_u
    i64.clz
    f32.convert_i64_s
    i32.reinterpret_f32
    i32.ctz
    i64.extend_i32_s
    i64.popcnt
    f64.reinterpret_i64
    f64.trunc
    i64.trunc_f64_u
    i64.eqz
    f64.convert_i32_u
    f32.demote_f64
    i64.trunc_f32_u
    f64.convert_i64_u
    f64.trunc
    i32.trunc_f64_u
    i32.popcnt
    f64.convert_i32_u
    f64.sqrt
    f64.sqrt
    f64.sqrt
    global.set $global_388460850
)

)