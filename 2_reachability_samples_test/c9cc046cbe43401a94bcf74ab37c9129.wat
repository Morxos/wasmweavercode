(module
(type $sig_function_1962674425 (func))
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2933012565 (mut f64) (f64.const -5.280990126783148e+18))
(func $function_1962674425 (export "function_1962674425")
    (local f32 i32)
    (local $temp i32)
    ;;FLAG_0
    block
        block
            (i64.const -6)
            i64.ctz
            (f64.const 5.281227216866246e-289)
            i64.trunc_f64_s
            i64.eq
            (br_table 0 2 1)
        end

        ;;FLAG_3
        (f32.const -8.986297441693368e-18)
        i32.trunc_f32_s
        i32.extend16_s
        f32.convert_i32_s
        local.set 0
    end

    ;;FLAG_1
    global.get $global_2933012565
    f64.ceil
    f64.trunc
    f64.trunc
    f64.trunc
    (f64.const 842559.55515071)
    f64.gt
    (br_table 0)
    ;;FLAG_2
    block
        global.get $global_2933012565
        drop
        (i32.const -900)
        i32.ctz
        local.tee 1
        i64.extend_i32_u
        global.get $global_2933012565
        f64.neg
        f64.sqrt
        global.set $global_2933012565
        (f32.const 4.5832526477331005e+19)
        local.set 0
        i64.eqz
        f32.convert_i32_s
        drop
    end

)
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_4
    (f64.const 6.611325856702868e-141)
    call $function_1962674425
    i64.trunc_f64_u
    f32.convert_i64_s
    f64.promote_f32
    drop
)

)