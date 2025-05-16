(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f64 f64)
    (local $temp i32)
    local.get 0
    local.tee 1
    i64.trunc_f64_u
    i32.wrap_i64
    i32.popcnt
    i32.extend8_s
    i32.popcnt
    i32.popcnt
    i32.extend16_s
    i32.popcnt
    i32.popcnt
    f64.convert_i32_s
    f32.demote_f64
    f32.neg
    f32.sqrt
    i32.reinterpret_f32
    ;;INSPECT
    i64.extend_i32_s
    f64.convert_i64_s
    i64.reinterpret_f64
    i64.clz
    i64.extend32_s
    i64.eqz
    i32.eqz
    drop
)

)