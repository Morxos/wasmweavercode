(module
(type $sig_function_3069758126 (func))
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2512175539 (mut f64) (f64.const -8.62019707050512e+18))
(func $function_3069758126 (export "function_3069758126")
    (local f64)
    (local $temp i32)
    ;;FLAG_0
    (f64.const 1.5997238840436704e-151)
    f64.sqrt
    f64.neg
    global.set $global_2512175539
    global.get $global_2512175539
    local.set 0
)
(func $run (export "run")
    (local f32)
    (local $temp i32)
    ;;FLAG_1
    block
        ;;FLAG_4
        (f32.const 2.3588244811299873e+22)
        f32.floor
        local.set 0
        (i64.const -245025997424323967)
        f64.reinterpret_i64
        drop
    end

    ;;FLAG_2
    (i32.const -9794)
    i64.extend_i32_s
    f64.reinterpret_i64
    f64.abs
    f64.neg
    f64.abs
    f64.trunc
    call $function_3069758126
    f64.ceil
    f64.trunc
    (i32.const -282)
    i64.extend_i32_s
    i64.eqz
    f32.convert_i32_s
    i64.trunc_f32_u
    i64.extend16_s
    i64.extend16_s
    f64.convert_i64_u
    f64.le
    (br_table 0)
    ;;FLAG_3
    nop
)

)