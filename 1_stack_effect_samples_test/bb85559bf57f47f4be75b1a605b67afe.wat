(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1482986450 (mut i32) (i32.const 1204225917))
(func $run (export "run")
    (local i32 f32 f64)
    (local $temp i32)
    local.get 0
    i32.extend8_s
    local.get 0
    i32.shr_s
    (f32.const -25160084.0)
    f32.neg
    i32.reinterpret_f32
    ;;INSPECT
    i32.shr_s
    f32.convert_i32_u
    i64.trunc_f32_u
    i64.ctz
    f64.reinterpret_i64
    f32.demote_f64
    f32.abs
    f32.abs
    f32.trunc
    i32.reinterpret_f32
    global.set $global_1482986450
    global.get $global_1482986450
    f32.convert_i32_u
    local.tee 1
    f32.trunc
    i32.trunc_f32_s
    f32.convert_i32_s
    i64.trunc_f32_u
    f64.reinterpret_i64
    f64.neg
    i64.trunc_f64_s
    f64.convert_i64_s
    f64.trunc
    local.set 2
)

)