(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2821002272 (mut f64) (f64.const 1.1960099574392074e+18))
(func $run (export "run")
    (local f64)
    (local $temp i32)
    ;;FLAG_0
    block
        block
            ;;FLAG_3
            global.get $global_2821002272
            local.tee 0
            global.set $global_2821002272
            (f32.const 8742392299520.0)
            i32.reinterpret_f32
            (br_table 1 0 2)
            ;;FLAG_4
        end

        ;;FLAG_1
        (f64.const 4.823369438234342e-302)
        (i32.const 1)
        i32.clz
        f32.reinterpret_i32
        f64.promote_f32
        f64.le
        (br_table 1 0)
        ;;FLAG_2
    end

    (i32.const 33793)
    i64.extend_i32_s
    i64.eqz
    i64.extend_i32_s
    i64.popcnt
    i64.eqz
    (br_table 0)
    br 0
)

)