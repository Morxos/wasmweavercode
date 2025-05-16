(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_4099198340 (mut i32) (i32.const 1245860205))
(func $run (export "run")
    (local i32 i64 f32)
    (local $temp i32)
    local.get 0
    f32.convert_i32_u
    i64.trunc_f32_s
    f64.convert_i64_u
    i64.trunc_f64_u
    i64.ctz
    i64.popcnt
    f64.convert_i64_u
    i64.reinterpret_f64
    local.tee 1
    f64.convert_i64_s
    drop
    (f32.const -771476480.0)
    f32.ceil
    local.tee 2
    i32.reinterpret_f32
    i32.clz
    f32.convert_i32_u
    ;;INSPECT
    f32.neg
    i32.reinterpret_f32
    i32.eqz
    f32.convert_i32_s
    (i32.const -9597688)
    local.get 0
    i32.lt_u
    i32.clz
    f32.convert_i32_s
    f32.max
    i32.reinterpret_f32
    f32.convert_i32_u
    f32.trunc
    f32.trunc
    i32.trunc_f32_u
    global.set $global_4099198340
)

)