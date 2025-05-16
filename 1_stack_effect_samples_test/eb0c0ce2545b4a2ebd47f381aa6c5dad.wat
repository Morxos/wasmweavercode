(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_711965056 (mut f32) (f32.const 8.164653389980893e+18))
(func $run (export "run")
    (local i64 f32 i32)
    (local $temp i32)
    local.get 0
    i64.eqz
    f32.convert_i32_u
    ;;INSPECT
    f32.ceil
    f64.promote_f32
    f64.nearest
    f64.neg
    i64.reinterpret_f64
    f64.convert_i64_s
    f32.demote_f64
    f32.neg
    i32.reinterpret_f32
    f32.convert_i32_s
    f32.abs
    local.tee 1
    f32.trunc
    global.set $global_711965056
    nop
    (i32.const -92068)
    local.set 2
    local.get 0
    i64.eqz
    f32.convert_i32_u
    global.set $global_711965056
)

)