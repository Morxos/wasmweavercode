(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_4027046837 (mut f64) (f64.const -3.148094010296316e+18))
(func $run (export "run")
    (local f32 f32 i32)
    (local $temp i32)
    local.get 0
    i32.reinterpret_f32
    i32.eqz
    f32.convert_i32_s
    i64.trunc_f32_u
    i64.extend32_s
    f64.convert_i64_s
    f64.trunc
    f64.sqrt
    i64.trunc_f64_u
    i64.ctz
    f64.convert_i64_s
    i64.trunc_f64_u
    f64.reinterpret_i64
    i64.trunc_f64_s
    i64.popcnt
    local.get 0
    local.tee 1
    i64.trunc_f32_u
    local.get 0
    i32.trunc_f32_s
    local.tee 2
    i32.eqz
    ;;INSPECT
    select
    i64.ctz
    f64.convert_i64_u
    f64.sqrt
    f64.sqrt
    f64.sqrt
    f64.neg
    i64.trunc_f64_s
    i64.popcnt
    f64.convert_i64_s
    global.set $global_4027046837
)

)