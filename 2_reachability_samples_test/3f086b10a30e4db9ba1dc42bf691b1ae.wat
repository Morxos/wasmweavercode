(module
(type $sig_function_250452516 (func))
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3558215944 (mut f32) (f32.const 9.163006099710804e+18))
(global $global_2056878564 (mut i32) (i32.const 860382088))
(func $function_250452516 (export "function_250452516")
    (local $temp i32)
    ;;FLAG_0
    (f32.const 1.8635749749460785e-14)
    i64.trunc_f32_u
    f64.reinterpret_i64
    i32.trunc_f64_s
    i32.extend8_s
    (br_table 0)
    ;;FLAG_1
    nop
)
(func $run (export "run")
    (local f32)
    (local $temp i32)
    global.get $global_3558215944
    local.set 0
    block
        ;;FLAG_3
        global.get $global_3558215944
        call $function_250452516
        (i64.const 620689293)
        i64.eqz
        global.get $global_3558215944
        f32.floor
        i32.reinterpret_f32
        i32.shr_s
        i32.clz
        global.set $global_2056878564
        i32.reinterpret_f32
        (br_table 1 0)
        ;;FLAG_4
    end

    ;;FLAG_2
    nop
    call $function_250452516
)

)