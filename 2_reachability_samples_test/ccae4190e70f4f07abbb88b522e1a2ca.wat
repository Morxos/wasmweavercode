(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3545074690 f64 (f64.const 2.655049954282699e+18))
(func $run (export "run")
    (local f64 f64)
    (local $temp i32)
    block
        ;;FLAG_0
        block
            ;;FLAG_3
            (f64.const 6.541188147391656e-54)
            global.get $global_3545074690
            f64.le
            i32.popcnt
            i32.clz
            (br_table 2 0 1)
            ;;FLAG_4
            local.get 0
            drop
        end

        ;;FLAG_1
        global.get $global_3545074690
        i64.trunc_f64_s
        i64.extend32_s
        i64.popcnt
        i64.extend16_s
        i64.clz
        i64.popcnt
        f64.convert_i64_u
        f64.ceil
        i32.trunc_f64_u
        br_if 0
        ;;FLAG_2
    end

    global.get $global_3545074690
    drop
    (f64.const 4366753440.754847)
    local.tee 1
    nop
    drop
    br 0
)

)