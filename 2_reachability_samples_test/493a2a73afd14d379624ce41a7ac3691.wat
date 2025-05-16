(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1622557111 (mut i64) (i64.const -6739357671802764507))
(global $global_2582555638 (mut f32) (f32.const -2.2304753354203464e+18))
(func $run (export "run")
    (local i32 f32 f64)
    (local $temp i32)
    ;;FLAG_0
    block
        block
            (i64.const 728083)
            (i32.const 0)
            local.tee 0
            i64.extend_i32_u
            i64.mul
            i32.wrap_i64
            i32.extend16_s
            local.get 0
            i32.ne
            (br_table 0 2 1)
            ;;FLAG_2
            br 0
        end

        global.get $global_1622557111
        i64.extend8_s
        global.set $global_1622557111
        block
            ;;FLAG_3
            block
                ;;FLAG_4
                (f32.const 2.1076936569409795e-35)
                nop
                global.set $global_2582555638
                (f64.const 2.733937005457685e-186)
                i64.trunc_f64_s
                drop
            end

            (i64.const 78)
            i64.clz
            nop
            drop
        end

    end

    (i64.const -8517259)
    f32.convert_i64_u
    f64.promote_f32
    f64.sqrt
    f64.ceil
    i64.reinterpret_f64
    f32.convert_i64_s
    local.tee 1
    local.get 0
    (f32.const 3090764529664.0)
    i32.reinterpret_f32
    i32.or
    i64.extend_i32_s
    i64.extend32_s
    f64.reinterpret_i64
    local.tee 2
    i64.reinterpret_f64
    global.get $global_1622557111
    i64.eq
    f64.convert_i32_s
    i32.trunc_f64_s
    f32.convert_i32_s
    f32.ne
    (br_table 0)
    ;;FLAG_1
)

)