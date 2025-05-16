(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2277145544 (mut i64) (i64.const 429512384527313595))
(global $global_4213253369 (mut i32) (i32.const 683786122))
(func $run (export "run")
    (local f32 f32 i64)
    (local $temp i32)
    local.get 0
    f32.ceil
    i32.trunc_f32_u
    f32.convert_i32_u
    f32.floor
    f32.ceil
    f32.ceil
    i32.trunc_f32_u
    f32.convert_i32_s
    local.tee 1
    f32.ceil
    i64.trunc_f32_s
    global.set $global_2277145544
    (f32.const -0.08096831291913986)
    f32.abs
    f32.ceil
    i64.trunc_f32_u
    i64.ctz
    ;;INSPECT
    i64.eqz
    i32.eqz
    f32.reinterpret_i32
    i32.reinterpret_f32
    i32.eqz
    i32.eqz
    i32.clz
    f32.convert_i32_s
    i32.reinterpret_f32
    global.set $global_4213253369
    nop
    global.get $global_2277145544
    f64.reinterpret_i64
    i64.reinterpret_f64
    local.set 2
)

)