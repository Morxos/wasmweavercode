(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32 i32)
    (local $temp i32)
    local.get 0
    f32.ceil
    f64.promote_f32
    i64.trunc_f64_u
    i64.ctz
    i64.ctz
    i64.eqz
    local.get 0
    f32.neg
    f32.floor
    f32.trunc
    f32.trunc
    i64.trunc_f32_u
    i64.eqz
    i32.shr_s
    i32.popcnt
    i32.popcnt
    i64.extend_i32_u
    i64.ctz
    f32.convert_i64_s
    f32.sqrt
    i64.trunc_f32_u
    i64.extend32_s
    i64.eqz
    i32.eqz
    i32.extend16_s
    i32.popcnt
    f32.convert_i32_u
    ;;INSPECT
    f32.sqrt
    f32.neg
    i32.trunc_f32_s
    local.get 0
    i64.trunc_f32_u
    i64.popcnt
    i32.wrap_i64
    f64.convert_i32_s
    f64.sqrt
    f64.sqrt
    i32.trunc_f64_u
    i32.shr_s
    local.set 1
)

)