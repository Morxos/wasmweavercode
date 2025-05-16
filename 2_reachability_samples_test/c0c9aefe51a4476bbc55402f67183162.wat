(module
(type $sig_function_508716569 (func))
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2155691719 f32 (f32.const 7.242248346427982e+18))
(global $global_4194839813 (mut f32) (f32.const -4.230860820298334e+18))
(global $global_4190111502 (mut funcref) (ref.null func))
(func $function_508716569 (export "function_508716569")
    (local $temp i32)
    (f64.const 4.32455609076096e-255)
    i64.trunc_f64_s
    f64.reinterpret_i64
    f64.nearest
    i64.reinterpret_f64
    f64.reinterpret_i64
    f64.sqrt
    global.get $global_2155691719
    f32.abs
    global.set $global_4194839813
    i64.reinterpret_f64
    f64.reinterpret_i64
    i64.trunc_f64_s
    drop
)
(func $run (export "run")
    (local f32 i64)
    (local $temp i32)
    block
        ;;FLAG_1
        block
            global.get $global_2155691719
            call $function_508716569
            local.get 0
            global.get $global_2155691719
            i64.trunc_f32_s
            local.set 1
            f32.ne
            (br_table 1 2 0)
            ;;FLAG_3
            (i64.const 873)
            f64.reinterpret_i64
            call $function_508716569
            i32.trunc_f64_s
            (br_table 1 0 2)
            ;;FLAG_4
        end

        ;;FLAG_2
        (f32.const 7.257333436427871e-06)
        i32.trunc_f32_u
        call $function_508716569
        i32.ctz
        (br_table 0 1)
        (f32.const -7.021279782458245e+35)
        drop
    end

    ;;FLAG_0
    ref.func $function_508716569
    global.set $global_4190111502
    call $function_508716569
    call $function_508716569
)

)