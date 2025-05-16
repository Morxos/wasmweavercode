(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2025993327 f32 (f32.const 2.4005543910745047e+18))
(func $run (export "run")
    (local f64)
    (local $temp i32)
    ;;FLAG_0
    block
        block
            block
                ;;FLAG_3
                (f64.const 8.534499664998544e+254)
                f64.trunc
                f64.floor
                local.tee 0
                f64.sqrt
                f64.trunc
                nop
                local.get 0
                f64.le
                (i32.const -10)
                i32.lt_u
                (br_table 3 2 1 0)
                ;;FLAG_4
                (i32.const -5)
                drop
            end

            (i64.const 4679912)
            i64.ctz
            f64.convert_i64_u
            f64.floor
            i64.reinterpret_f64
            drop
            nop
            br 0
            br 0
        end

        (i32.const -8)
        f32.convert_i32_s
        nop
        global.get $global_2025993327
        f32.floor
        f32.eq
        (br_table 1 0)
        ;;FLAG_2
    end

    ;;FLAG_1
    (f32.const 51197685760.0)
    f32.nearest
    global.get $global_2025993327
    i64.trunc_f32_u
    i64.extend8_s
    i64.eqz
    (i32.const 21835137)
    f32.convert_i32_s
    i32.trunc_f32_u
    i32.shr_s
    f32.reinterpret_i32
    f32.eq
    (br_table 0)
    br 0
)

)