(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2591241103 (mut i64) (i64.const -1545919470700671459))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    local.get 0
    i32.ctz
    ;;INSPECT
    i64.extend_i32_s
    (i64.const 7146594)
    i64.sub
    local.get 0
    f64.convert_i32_s
    f64.sqrt
    f32.demote_f64
    i64.trunc_f32_u
    i64.popcnt
    i64.shr_s
    i64.ctz
    f64.convert_i64_s
    (f32.const 0.0)
    f32.abs
    f32.abs
    f32.abs
    f32.ceil
    f32.neg
    f32.ceil
    f32.sqrt
    f32.abs
    i32.reinterpret_f32
    i32.extend16_s
    f32.convert_i32_s
    i64.trunc_f32_u
    i64.eqz
    f64.convert_i32_s
    f64.sub
    f64.abs
    i64.reinterpret_f64
    global.set $global_2591241103
)

)