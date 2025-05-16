(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32 i32)
    (local $temp i32)
    local.get 0
    f32.ceil
    local.get 0
    i64.trunc_f32_u
    i64.extend32_s
    i64.extend32_s
    i64.popcnt
    i64.eqz
    f64.convert_i32_s
    f64.neg
    f32.demote_f64
    f32.min
    f32.nearest
    f32.floor
    i32.reinterpret_f32
    f64.convert_i32_s
    f64.abs
    f64.sqrt
    f64.floor
    f64.nearest
    f64.sqrt
    f64.sqrt
    f64.sqrt
    i64.trunc_f64_u
    f64.reinterpret_i64
    f32.demote_f64
    ;;INSPECT
    f32.neg
    i32.reinterpret_f32
    local.set 1
)

)