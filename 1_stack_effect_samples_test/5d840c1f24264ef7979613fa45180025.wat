(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_103435192 (mut f32) (f32.const 2.5884054029242204e+18))
(func $run (export "run")
    (local f32 f32)
    (local $temp i32)
    (f32.const 1.7956739384317189e-07)
    i64.trunc_f32_u
    i64.extend32_s
    f64.convert_i64_s
    f64.trunc
    i32.trunc_f64_u
    i32.ctz
    f32.convert_i32_u
    f32.abs
    f32.ceil
    local.get 0
    global.set $global_103435192
    f32.trunc
    f32.sqrt
    i64.trunc_f32_u
    i64.ctz
    i64.extend32_s
    i64.eqz
    f32.convert_i32_s
    f64.promote_f32
    f32.demote_f64
    f32.ceil
    f32.neg
    local.tee 1
    f32.ceil
    f32.ceil
    f32.abs
    f32.abs
    ;;INSPECT
    f32.abs
    i64.trunc_f32_u
    f64.reinterpret_i64
    i32.trunc_f64_u
    f64.convert_i32_s
    i64.reinterpret_f64
    drop
)

)