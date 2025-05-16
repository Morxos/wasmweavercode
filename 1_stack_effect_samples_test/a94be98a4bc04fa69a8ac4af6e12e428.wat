(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    (i64.const 347185014)
    f64.reinterpret_i64
    f64.nearest
    i64.reinterpret_f64
    i64.extend32_s
    i64.ctz
    i64.popcnt
    i64.eqz
    f32.convert_i32_s
    f32.ceil
    i32.reinterpret_f32
    f32.convert_i32_s
    f32.sqrt
    local.tee 0
    drop
    local.get 0
    f32.ceil
    f32.ceil
    ;;INSPECT
    f32.nearest
    i64.trunc_f32_u
    i64.clz
    i64.popcnt
    i64.extend32_s
    i64.eqz
    local.get 0
    f32.ceil
    i64.trunc_f32_u
    i64.ctz
    f64.convert_i64_s
    f64.sqrt
    f64.trunc
    f64.sqrt
    drop
    i64.extend_i32_s
    drop
)

)