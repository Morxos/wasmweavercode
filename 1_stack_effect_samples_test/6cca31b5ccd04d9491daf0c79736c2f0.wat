(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1952463068 (mut f32) (f32.const 8.539373549796721e+18))
(func $run (export "run")
    (local i32 f32 i32 i64)
    (local $temp i32)
    local.get 0
    local.get 0
    f32.reinterpret_i32
    local.tee 1
    i64.trunc_f32_u
    i64.popcnt
    i64.ctz
    f64.convert_i64_s
    f64.sqrt
    i64.trunc_f64_u
    i64.eqz
    i32.shr_s
    local.tee 2
    i32.extend8_s
    f64.convert_i32_s
    i64.reinterpret_f64
    f32.convert_i64_s
    f32.abs
    i32.reinterpret_f32
    ;;INSPECT
    f32.convert_i32_s
    f32.abs
    f32.ceil
    i32.reinterpret_f32
    f64.convert_i32_s
    f64.neg
    i64.reinterpret_f64
    i64.extend32_s
    i64.ctz
    local.tee 3
    f64.convert_i64_s
    f64.floor
    f64.sqrt
    f64.sqrt
    f64.sqrt
    f64.sqrt
    f64.ceil
    f64.abs
    i64.trunc_f64_s
    f32.convert_i64_u
    global.set $global_1952463068
)

)