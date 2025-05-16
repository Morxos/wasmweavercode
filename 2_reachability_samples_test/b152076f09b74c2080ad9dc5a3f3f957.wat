(module
(type $sig_function_234893136 (func))
(type $sig_run (func))
(import "env" "memory" (memory 1))
(table $tab_3403792001 10 funcref)
(global $global_1394766820 (mut i64) (i64.const -1374471395150837738))
(global $global_1464124984 (mut f32) (f32.const -3.0280242365695263e+18))
(func $function_234893136 (export "function_234893136")
    (local i64)
    (local $temp i32)
    ;;FLAG_0
    block
        block
            local.get 0
            local.set 0
            (f64.const 8.09848398683404e-49)
            i64.reinterpret_f64
            local.set 0
        end

        (f64.const 6.121211001777263e-147)
        i64.trunc_f64_u
        i64.eqz
        table.get $tab_3403792001
        nop
        drop
    end

    ;;FLAG_1
    global.get $global_1394766820
    drop
    (f32.const 1.5129523858188524e-24)
    i64.trunc_f32_u
    i64.eqz
    nop
    (br_table 0)
    global.get $global_1394766820
    f64.convert_i64_u
    i64.trunc_f64_u
    i64.eqz
    f32.convert_i32_u
    global.get $global_1394766820
    i64.ctz
    local.set 0
    f32.nearest
    global.set $global_1464124984
    block
        ;;FLAG_3
        global.get $global_1394766820
        i64.extend32_s
        local.set 0
        local.get 0
        (i64.const -98)
        i64.le_s
        (br_table 0 1)
    end

    ;;FLAG_2
)
(func $run (export "run")
    (local f32)
    (local $temp i32)
    local.get 0
    call $function_234893136
    i32.reinterpret_f32
    i32.popcnt
    (i64.const 172103)
    (i32.const 95750468)
    drop
    global.get $global_1394766820
    i64.gt_s
    i32.gt_s
    (br_table 0)
    ;;FLAG_4
)

)