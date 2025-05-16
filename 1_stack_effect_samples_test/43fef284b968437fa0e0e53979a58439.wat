(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i64 i32)
    (local $temp i32)
    local.get 0
    f64.convert_i64_s
    f64.trunc
    f64.nearest
    f64.neg
    f32.demote_f64
    i32.reinterpret_f32
    i32.eqz
    local.tee 1
    i32.popcnt
    f32.convert_i32_u
    f32.floor
    i32.reinterpret_f32
    f64.convert_i32_u
    f64.neg
    f64.nearest
    f64.abs
    i64.trunc_f64_s
    f32.convert_i64_u
    local.get 0
    f64.reinterpret_i64
    f64.trunc
    i64.trunc_f64_u
    i64.ctz
    f64.convert_i64_u
    i32.trunc_f64_u
    i32.extend8_s
    f32.convert_i32_u
    f32.ceil
    f32.add
    f32.sqrt
    ;;INSPECT
    f32.trunc
    drop
)

)