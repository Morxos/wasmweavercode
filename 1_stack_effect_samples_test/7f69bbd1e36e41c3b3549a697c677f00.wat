(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3264946018 (mut i64) (i64.const -4885069028768638372))
(func $run (export "run")
    (local i32 i64)
    (local $temp i32)
    local.get 0
    local.get 0
    i32.gt_u
    i32.extend16_s
    f32.convert_i32_s
    (i64.const 8)
    nop
    f64.reinterpret_i64
    f64.nearest
    f64.abs
    f64.abs
    f64.trunc
    i64.trunc_f64_u
    f64.convert_i64_s
    ;;INSPECT
    f32.demote_f64
    f32.le
    i32.eqz
    i32.extend8_s
    i64.extend_i32_u
    f64.convert_i64_s
    (i32.const -22697741)
    i32.eqz
    (i64.const 283475)
    local.tee 1
    i64.popcnt
    i64.clz
    global.set $global_3264946018
    nop
    drop
    f64.nearest
    i64.trunc_f64_u
    i64.clz
    f64.reinterpret_i64
    f64.neg
    i64.trunc_f64_s
    local.set 1
)

)