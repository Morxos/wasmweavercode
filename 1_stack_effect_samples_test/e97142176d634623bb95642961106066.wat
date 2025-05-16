(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2174291619 (mut i64) (i64.const -2329424488414425727))
(func $run (export "run")
    (local f32 i32 i32 f64 f64)
    (local $temp i32)
    local.get 0
    (i32.const -95)
    local.tee 1
    i32.eqz
    ;;INSPECT
    f32.convert_i32_s
    f32.abs
    f32.abs
    f32.min
    i32.reinterpret_f32
    i32.popcnt
    f32.convert_i32_s
    f32.abs
    f32.nearest
    f32.nearest
    i32.trunc_f32_s
    i64.extend_i32_u
    f64.reinterpret_i64
    f64.ceil
    i32.trunc_f64_u
    i32.extend8_s
    i32.clz
    i32.ctz
    local.tee 2
    f64.convert_i32_s
    f64.sqrt
    f64.sqrt
    local.tee 3
    f64.abs
    f64.trunc
    local.tee 4
    i64.reinterpret_f64
    global.set $global_2174291619
)

)