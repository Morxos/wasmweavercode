(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1100463733 (mut f64) (f64.const -7.574569192544811e+18))
(func $run (export "run")
    (local f64 f64)
    (local $temp i32)
    local.get 0
    i32.trunc_f64_u
    i32.popcnt
    i64.extend_i32_s
    i64.popcnt
    f32.convert_i64_u
    f32.nearest
    i64.trunc_f32_u
    i64.extend32_s
    i64.eqz
    f32.reinterpret_i32
    local.get 0
    f64.sqrt
    f64.sqrt
    f64.trunc
    f64.trunc
    f64.trunc
    f64.sqrt
    i64.reinterpret_f64
    i64.clz
    f32.convert_i64_u
    f32.add
    f32.floor
    f32.sqrt
    f32.floor
    f32.floor
    i32.reinterpret_f32
    i32.clz
    i32.popcnt
    local.get 0
    f64.sqrt
    f64.sqrt
    local.tee 1
    ;;INSPECT
    f64.abs
    f64.neg
    i64.reinterpret_f64
    f64.convert_i64_s
    global.set $global_1100463733
    f32.convert_i32_u
    f32.ceil
    drop
)

)