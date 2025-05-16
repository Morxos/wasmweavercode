(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3763861539 (mut f64) (f64.const 8.547368599820579e+18))
(func $run (export "run")
    (local f64 i32 f32 i64 i64)
    (local $temp i32)
    block
        block
            ;;FLAG_2
            block
                ;;FLAG_4
                (i64.const -4616)
                f64.reinterpret_i64
                f64.abs
                f64.nearest
                f64.nearest
                f64.neg
                local.tee 0
                f64.abs
                global.set $global_3763861539
            end

            ;;FLAG_3
            (i64.const -149978)
            i32.wrap_i64
            i32.popcnt
            local.set 1
        end

        (f32.const 2.8942464402947057e-18)
        (i64.const -3733)
        f32.convert_i64_u
        f32.ge
        f64.convert_i32_u
        i64.trunc_f64_u
        f32.convert_i64_u
        (f32.const 1.7293700484406548e+33)
        local.set 2
        i32.trunc_f32_u
        f32.convert_i32_s
        i64.trunc_f32_u
        i64.popcnt
        drop
    end

    ;;FLAG_0
    (i32.const -6575677)
    i32.extend8_s
    (i64.const -5876545)
    local.tee 3
    local.tee 4
    global.get $global_3763861539
    f64.abs
    drop
    i64.ctz
    nop
    i64.eqz
    i32.lt_u
    f32.convert_i32_s
    i64.trunc_f32_s
    f64.convert_i64_u
    i32.trunc_f64_u
    (br_table 0)
    ;;FLAG_1
)

)