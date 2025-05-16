(module
(type $sig_function_4124624315 (func (param i64 f64)))
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2506046705 (mut i32) (i32.const -530564889))
(func $function_4124624315 (export "function_4124624315") (param i64 f64)
    (local f64)
    (local $temp i32)
    ;;FLAG_0
    (f32.const -5.3073102417857884e-15)
    f64.promote_f32
    f64.floor
    f64.floor
    local.tee 2
    i64.trunc_f64_s
    drop
)
(func $run (export "run")
    (local f32 i64 f64)
    (local $temp i32)
    ;;FLAG_1
    local.get 0
    i64.trunc_f32_s
    i64.popcnt
    local.get 0
    f32.floor
    f32.trunc
    (i32.const 6161)
    global.set $global_2506046705
    (f64.const 4.7804050148159154e+293)
    i64.reinterpret_f64
    local.set 1
    i32.trunc_f32_u
    i64.extend_i32_s
    f64.reinterpret_i64
    local.tee 2
    i32.trunc_f64_s
    f64.convert_i32_s
    f64.neg
    call $function_4124624315
)

)