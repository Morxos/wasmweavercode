(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1374475225 (mut i64) (i64.const -2086081584780108583))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_3
        (i64.const 1354019830744840808)
        i64.extend8_s
        (i64.const -7397808812856274351)
        i64.rem_u
        global.set $global_1374475225
    end

    ;;FLAG_1
    local.get 0
    f64.convert_i64_u
    i32.trunc_f64_s
    i32.extend8_s
    (br_table 0)
    ;;FLAG_2
    br 0
)

)