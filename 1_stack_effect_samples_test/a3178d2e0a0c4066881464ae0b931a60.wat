(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1672524679 (mut i32) (i32.const 1011734381))
(func $run (export "run")
    (local i64 f32)
    (local $temp i32)
    local.get 0
    i64.extend32_s
    (f32.const 9.442950260862792e+23)
    f64.promote_f32
    f64.nearest
    f64.floor
    (i32.const 29542722)
    ;;INSPECT
    i32.eqz
    i32.clz
    i64.extend_i32_u
    f64.convert_i64_s
    f64.ne
    f32.reinterpret_i32
    global.get $global_1672524679
    f32.convert_i32_u
    f32.max
    local.set 1
    i64.eqz
    f32.reinterpret_i32
    i32.trunc_f32_u
    f32.reinterpret_i32
    i64.trunc_f32_u
    i64.extend16_s
    i64.clz
    i64.eqz
    f32.reinterpret_i32
    i32.reinterpret_f32
    f64.convert_i32_u
    f64.abs
    f64.nearest
    f64.nearest
    f64.nearest
    i64.trunc_f64_s
    f32.convert_i64_s
    i32.reinterpret_f32
    global.set $global_1672524679
)

)