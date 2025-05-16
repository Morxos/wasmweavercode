(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3957605619 (mut i64) (i64.const 7627549841966369471))
(func $run (export "run")
    (local f64 f64 f32 i32 i32)
    (local $temp i32)
    local.get 0
    local.tee 1
    i64.reinterpret_f64
    i64.popcnt
    i64.extend32_s
    f64.reinterpret_i64
    f64.trunc
    local.get 0
    f64.sub
    f32.demote_f64
    f32.ceil
    f32.neg
    local.tee 2
    i64.trunc_f32_u
    f64.convert_i64_s
    f64.abs
    i64.trunc_f64_s
    i32.wrap_i64
    i32.popcnt
    local.tee 3
    i32.eqz
    f32.convert_i32_u
    i64.trunc_f32_u
    i64.eqz
    local.tee 4
    f64.convert_i32_s
    f64.trunc
    ;;INSPECT
    f64.abs
    f64.sqrt
    f32.demote_f64
    f32.abs
    i32.trunc_f32_s
    f32.reinterpret_i32
    f32.ceil
    i32.reinterpret_f32
    f64.convert_i32_s
    i64.reinterpret_f64
    i64.extend32_s
    global.set $global_3957605619
)

)