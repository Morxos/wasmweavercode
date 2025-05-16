(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i32 i64 f64)
    (local $temp i32)
    block
        ;;FLAG_1
        (i32.const 0)
        i32.extend16_s
        local.tee 0
        i32.clz
        (f64.const 1.1557335858965293e-229)
        f64.ceil
        i64.reinterpret_f64
        i64.ctz
        f64.convert_i64_u
        i64.reinterpret_f64
        local.set 1
        if
            (f64.const 1.7607776256876413e+28)
            f32.demote_f64
            i32.reinterpret_f32
            f64.convert_i32_u
            i64.trunc_f64_u
            i64.eqz
            (br_table 0 2 1)
        else
            nop
            block
                (f64.const 3.08046622177026e+280)
                local.set 2
                (f32.const 2.1293589643660624e-19)
                i32.trunc_f32_u
                f32.convert_i32_u
                i32.trunc_f32_u
                (br_table 1 0 3 2)
                ;;FLAG_3
                (f32.const 8.453394742828548e-15)
                i32.trunc_f32_u
                (br_table 2 0 1 3)
                ;;FLAG_4
            end

            (f64.const 2.427203864134263e+139)
            i64.reinterpret_f64
            i64.extend16_s
            i64.extend8_s
            i64.clz
            f32.convert_i64_s
            i32.trunc_f32_u
            f32.convert_i32_s
            f32.trunc
            i32.trunc_f32_u
            i32.popcnt
            (br_table 2 0 1)
            ;;FLAG_2
        end

    end

    local.get 0
    i32.eqz
    f64.convert_i32_u
    i32.trunc_f64_s
    (br_table 0)
    ;;FLAG_0
    br 0
)

)