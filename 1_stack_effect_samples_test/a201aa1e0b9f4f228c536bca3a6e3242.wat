(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3629393048 (mut f64) (f64.const 2.18097176881348e+18))
(func $run (export "run")
    (local i64 f32 i32)
    (local $temp i32)
    local.get 0
    i64.eqz
    f32.convert_i32_u
    f32.sqrt
    i64.trunc_f32_u
    i64.eqz
    f64.convert_i32_s
    i64.trunc_f64_u
    i64.extend8_s
    f64.convert_i64_s
    i32.trunc_f64_u
    f32.convert_i32_s
    f32.ceil
    f32.abs
    local.tee 1
    i32.reinterpret_f32
    local.tee 2
    f32.convert_i32_s
    i32.reinterpret_f32
    f32.convert_i32_u
    i32.reinterpret_f32
    i32.ctz
    i32.extend8_s
    f32.convert_i32_u
    f32.sqrt
    f32.neg
    ;;INSPECT
    f32.abs
    f32.abs
    f32.ceil
    f32.sqrt
    f32.abs
    f32.sqrt
    i64.trunc_f32_u
    (f32.const -7.70438888467867e-13)
    f32.neg
    f64.promote_f32
    global.set $global_3629393048
    i64.eqz
    i32.extend16_s
    f64.convert_i32_s
    drop
)

)