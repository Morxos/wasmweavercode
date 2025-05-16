(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3812297505 (mut f32) (f32.const -4.887963603673547e+18))
(func $run (export "run")
    (local f64)
    (local $temp i32)
    ;;FLAG_0
    nop
    nop
    block
        ;;FLAG_1
        block
            ;;FLAG_3
            (f64.const 1.3843645934254245e-228)
            i64.trunc_f64_s
            (i64.const 5848262)
            local.get 0
            i64.reinterpret_f64
            i64.eq
            f32.reinterpret_i32
            global.set $global_3812297505
            i64.eqz
            nop
            (br_table 2 0 1)
            ;;FLAG_4
        end

        (i64.const -2587)
        local.get 0
        f64.nearest
        i64.trunc_f64_s
        i64.gt_u
        local.get 0
        f32.demote_f64
        f32.sqrt
        f32.ceil
        (f32.const 5.0469284521967616e+17)
        f32.ne
        i32.xor
        i32.popcnt
        (br_table 1 0)
        ;;FLAG_2
    end

    (f32.const -1.1211693161058186e-14)
    nop
    i32.trunc_f32_s
    i32.extend8_s
    drop
)

)