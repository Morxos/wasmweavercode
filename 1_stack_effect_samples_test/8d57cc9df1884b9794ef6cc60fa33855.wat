(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_4163153912 (mut f64) (f64.const -9.512678909577728e+17))
(func $run (export "run")
    (local i32 f32)
    (local $temp i32)
    local.get 0
    i32.popcnt
    f32.reinterpret_i32
    local.tee 1
    f32.abs
    f32.abs
    f32.abs
    i64.trunc_f32_s
    i64.clz
    i64.popcnt
    ;;INSPECT
    i64.extend32_s
    i64.extend16_s
    i64.eqz
    (f32.const -1.2411689235786603e+20)
    drop
    f32.convert_i32_s
    i32.trunc_f32_u
    f32.convert_i32_u
    f32.floor
    i64.trunc_f32_u
    f32.convert_i64_u
    f32.nearest
    i64.trunc_f32_u
    i64.popcnt
    f64.reinterpret_i64
    i64.reinterpret_f64
    f64.reinterpret_i64
    i64.trunc_f64_s
    drop
    global.get $global_4163153912
    f64.abs
    f64.sqrt
    global.set $global_4163153912
)

)