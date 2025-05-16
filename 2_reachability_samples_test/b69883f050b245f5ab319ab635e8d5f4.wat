(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_993604672 (mut f32) (f32.const 3.674848785248289e+18))
(global $global_3940622768 (mut i32) (i32.const 489871728))
(func $run (export "run")
    (local f32 i32)
    (local $temp i32)
    block
        ;;FLAG_1
        block
            ;;FLAG_2
            block
                (i64.const 3)
                i64.clz
                i64.extend16_s
                f32.convert_i64_u
                i32.reinterpret_f32
                global.get $global_993604672
                local.tee 0
                drop
                br_if 0
            end

            (i64.const 73545)
            (f32.const 1.3491147488893043e-31)
            f32.sqrt
            block (param f32) (result i32)
                i32.trunc_f32_u
                i32.ctz
                f32.reinterpret_i32
                f32.neg
                i32.reinterpret_f32
                i32.extend8_s
            end

            ;;FLAG_3
            local.set 1
            i64.eqz
            (br_table 1 0 2)
            ;;FLAG_4
        end

        nop
        (i64.const -164580908)
        i64.eqz
        i64.extend_i32_s
        i64.eqz
        i32.clz
        i32.clz
        nop
        global.set $global_3940622768
    end

    ;;FLAG_0
    (f64.const 3.442571077366235e-190)
    i32.trunc_f64_s
    f32.convert_i32_s
    i32.trunc_f32_u
    local.get 0
    global.set $global_993604672
    (br_table 0)
)

)