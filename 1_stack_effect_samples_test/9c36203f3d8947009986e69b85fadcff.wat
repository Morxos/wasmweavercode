(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3805589101 i32 (i32.const -1751439538))
(func $run (export "run")
    (local f32 f32)
    (local $temp i32)
    (f64.const 2.592421067059742e+241)
    drop
    local.get 0
    f64.promote_f32
    f64.neg
    i32.trunc_f64_s
    f32.convert_i32_s
    f32.neg
    f32.neg
    local.tee 1
    i32.reinterpret_f32
    f32.convert_i32_s
    f32.ceil
    i64.trunc_f32_u
    f64.reinterpret_i64
    f64.trunc
    f64.sqrt
    ;;INSPECT
    f64.trunc
    drop
    global.get $global_3805589101
    i64.extend_i32_u
    i64.popcnt
    f64.convert_i64_u
    f64.floor
    drop
)

)