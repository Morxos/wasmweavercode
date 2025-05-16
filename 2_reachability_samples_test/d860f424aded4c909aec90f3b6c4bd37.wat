(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f64 i64)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_3
        (f64.const 1.2643859079322999e+209)
        local.set 0
        (f64.const 0.0)
        i64.trunc_f64_s
        f32.convert_i64_s
        i32.trunc_f32_u
        (i64.const 44927)
        i64.eqz
        i32.lt_u
        i64.extend_i32_u
        f32.convert_i64_s
        i32.trunc_f32_u
        (i64.const 8412)
        i64.ctz
        i64.extend16_s
        i64.extend16_s
        i64.clz
        f64.convert_i64_u
        f32.demote_f64
        i32.trunc_f32_u
        i32.add
        i32.eqz
        drop
        block
            (f64.const 2.897238993146908e-149)
            i64.trunc_f64_s
            f64.convert_i64_s
            nop
            local.get 0
            f64.le
            i32.extend16_s
            (br_table 0 2 1)
            nop
        end

        return
        (f32.const -7.021001002804894e-10)
        f32.trunc
        i32.trunc_f32_u
        (br_table 0 1)
        ;;FLAG_4
    end

    ;;FLAG_1
    (f64.const 6.674211007862876e+276)
    i64.reinterpret_f64
    local.tee 1
    i32.wrap_i64
    (br_table 0)
    ;;FLAG_2
)

)