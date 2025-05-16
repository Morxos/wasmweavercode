(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f64 i32)
    (local $temp i32)
    local.get 0
    f64.abs
    f64.trunc
    f32.demote_f64
    f32.nearest
    i64.trunc_f32_u
    i64.popcnt
    i64.clz
    i64.eqz
    i32.popcnt
    i32.clz
    f32.convert_i32_u
    f32.ceil
    f32.sqrt
    f32.sqrt
    i32.trunc_f32_u
    i32.extend16_s
    f32.convert_i32_s
    f32.ceil
    (f32.const 1.1133874875977701e+33)
    f32.lt
    f32.reinterpret_i32
    i32.reinterpret_f32
    f64.convert_i32_u
    f64.trunc
    f64.sqrt
    f64.nearest
    ;;INSPECT
    f64.neg
    i64.trunc_f64_s
    i64.extend32_s
    f64.reinterpret_i64
    f32.demote_f64
    i32.reinterpret_f32
    i32.eqz
    f64.convert_i32_u
    f64.sqrt
    i64.reinterpret_f64
    i64.extend32_s
    i64.eqz
    local.set 1
)

)