(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i32 i32 f32)
    (local $temp i32)
    local.get 0
    local.tee 1
    i64.extend_i32_s
    f64.convert_i64_u
    i64.reinterpret_f64
    i64.ctz
    f64.reinterpret_i64
    i64.reinterpret_f64
    i64.eqz
    f64.convert_i32_s
    i64.reinterpret_f64
    i64.extend32_s
    i64.extend32_s
    i64.popcnt
    i64.eqz
    f64.convert_i32_s
    f64.neg
    f32.demote_f64
    i32.trunc_f32_s
    local.get 0
    i32.shr_s
    f32.convert_i32_s
    local.tee 2
    f32.nearest
    f32.neg
    i64.trunc_f32_u
    i64.eqz
    i32.extend8_s
    f32.convert_i32_s
    ;;INSPECT
    i32.reinterpret_f32
    i32.extend8_s
    local.set 0
)

)