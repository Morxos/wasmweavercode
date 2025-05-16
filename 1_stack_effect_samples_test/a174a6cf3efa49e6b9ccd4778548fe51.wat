(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2372235262 (mut i32) (i32.const -566362089))
(global $global_153498660 (mut i64) (i64.const 4512559094452623698))
(func $run (export "run")
    (local f64 f64 f32)
    (local $temp i32)
    local.get 0
    local.tee 1
    ;;INSPECT
    local.get 0
    f64.trunc
    f64.trunc
    f32.demote_f64
    i32.reinterpret_f32
    f32.convert_i32_s
    f32.abs
    i32.reinterpret_f32
    i32.eqz
    global.set $global_2372235262
    f64.trunc
    i64.trunc_f64_u
    i64.eqz
    i64.extend_i32_s
    i64.popcnt
    i64.ctz
    nop
    i64.eqz
    f32.convert_i32_s
    f32.abs
    local.get 0
    (f32.const 2.7180308061872874e+34)
    local.set 2
    i64.trunc_f64_s
    i64.clz
    i64.clz
    i64.popcnt
    global.set $global_153498660
    f32.nearest
    nop
    drop
)

)