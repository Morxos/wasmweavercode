(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32 i64)
    (local $temp i32)
    local.get 0
    f32.ceil
    f32.ceil
    f64.promote_f32
    i64.trunc_f64_u
    ;;INSPECT
    i64.popcnt
    i64.eqz
    i32.extend16_s
    i32.extend16_s
    i32.extend8_s
    i32.extend16_s
    f64.convert_i32_u
    f64.sqrt
    f64.neg
    f32.demote_f64
    i32.reinterpret_f32
    i64.extend_i32_u
    local.tee 1
    i64.popcnt
    i64.popcnt
    f64.reinterpret_i64
    f32.demote_f64
    f32.trunc
    i32.reinterpret_f32
    i32.clz
    (f32.const -2.0334220691939036e+24)
    drop
    i32.clz
    i32.clz
    i64.extend_i32_s
    f64.convert_i64_s
    i64.trunc_f64_s
    drop
)

)