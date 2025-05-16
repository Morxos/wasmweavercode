(module
(type $sig_function_569671739 (func (param f32 i32)))
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3661472108 (mut f64) (f64.const 1.4387151286625137e+18))
(func $function_569671739 (export "function_569671739") (param f32 i32)
    (local $temp i32)
    ;;FLAG_0
    global.get $global_3661472108
    f64.sqrt
    f64.ceil
    i64.trunc_f64_s
    f64.convert_i64_s
    f64.nearest
    f64.trunc
    f64.neg
    i32.trunc_f64_s
    i32.extend16_s
    (br_table 0)
    ;;FLAG_1
    return
)
(func $run (export "run")
    (local f32 f32)
    (local $temp i32)
    ;;FLAG_2
    (f64.const 5.837496484353412e-31)
    i64.trunc_f64_s
    f32.convert_i64_s
    local.tee 0
    f32.ceil
    (i32.const -940284242)
    i32.popcnt
    block (param f32 i32)
        ;;FLAG_3
        call $function_569671739
        (f32.const 5.6703115143243216e+23)
        local.tee 1
        i32.reinterpret_f32
        i32.extend16_s
        (br_table 1 0)
        ;;FLAG_4
    end

)

)