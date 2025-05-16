(module
(type $sig_function_3696815641 (func (param i32 f32 f64)))
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2497827693 (mut f64) (f64.const 2.3186549358132367e+18))
(func $function_3696815641 (export "function_3696815641") (param i32 f32 f64)
    (local f32)
    (local $temp i32)
    ;;FLAG_0
    (f32.const 2.1089553552057467e-31)
    i32.trunc_f32_u
    (f64.const 7.96127263702042e-184)
    f64.floor
    i32.trunc_f64_s
    f32.convert_i32_u
    f32.trunc
    i32.reinterpret_f32
    i32.gt_s
    f32.reinterpret_i32
    local.tee 3
    f32.nearest
    i32.trunc_f32_u
    (br_table 0)
    ;;FLAG_1
    (f32.const -0.04108116403222084)
    f32.nearest
    i32.trunc_f32_u
    (br_table 0)
    block
        ;;FLAG_3
        local.get 0
        f32.convert_i32_s
        i64.trunc_f32_u
        i64.eqz
        (f32.const -7.378165190353309e-17)
        f32.ceil
        i32.trunc_f32_u
        i32.lt_u
        (br_table 0 1)
        ;;FLAG_4
    end

    ;;FLAG_2
)
(func $run (export "run")
    (local i64 i64)
    (local $temp i32)
    local.get 0
    local.tee 1
    i32.wrap_i64
    f32.convert_i32_u
    f32.sqrt
    local.get 0
    (i64.const -7975)
    i64.ge_s
    i32.popcnt
    (f32.const 7.226546586025506e-05)
    global.get $global_2497827693
    call $function_3696815641
    i32.reinterpret_f32
    i32.eqz
    i32.ctz
    br_if 0
)

)