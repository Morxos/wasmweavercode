(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1009504654 (mut i64) (i64.const 164275012990446853))
(global $global_324896190 (mut f64) (f64.const -8.450711048858952e+17))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    (i32.const 8703)
    local.get 0
    f32.ceil
    f32.floor
    i32.reinterpret_f32
    f32.convert_i32_u
    f32.floor
    f32.floor
    local.get 0
    f32.floor
    f32.abs
    f32.max
    ;;INSPECT
    i64.trunc_f32_s
    f64.convert_i64_s
    f64.abs
    i64.trunc_f64_u
    f64.convert_i64_s
    i64.trunc_f64_u
    global.set $global_1009504654
    i32.extend8_s
    f64.convert_i32_s
    f32.demote_f64
    f32.nearest
    f32.abs
    i64.trunc_f32_u
    i64.extend16_s
    local.get 0
    i64.trunc_f32_u
    i64.ctz
    i64.gt_s
    f64.convert_i32_s
    f64.abs
    f64.ceil
    f64.neg
    global.set $global_324896190
)

)