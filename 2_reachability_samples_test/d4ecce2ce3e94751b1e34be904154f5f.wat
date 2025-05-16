(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32 f32)
    (local $temp i32)
    block
        ;;FLAG_1
        nop
        (f32.const 3846670.5)
        local.tee 0
        f32.sqrt
        f32.neg
        f64.promote_f32
        local.get 0
        local.tee 1
        f32.neg
        f32.floor
        block (param f32)
            i64.trunc_f32_s
            drop
            (i32.const 82490)
            i64.extend_i32_u
            i64.eqz
            nop
            (br_table 0 1 2)
            ;;FLAG_4
        end

        ;;FLAG_2
        i32.trunc_f64_s
        i32.extend8_s
        (br_table 1 0)
        ;;FLAG_3
        br 0
    end

    ;;FLAG_0
    (f64.const 9.267454518093936e+60)
    i64.reinterpret_f64
    (f64.const 1.5964788580408012e+100)
    f64.neg
    drop
    f32.convert_i64_u
    drop
)

)