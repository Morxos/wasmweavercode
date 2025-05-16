(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1126784598 (mut i32) (i32.const 41996383))
(func $run (export "run")
    (local f32 i32 f32)
    (local $temp i32)
    block
        block
            ;;FLAG_2
            block
                (i64.const -899)
                f64.convert_i64_u
                i64.reinterpret_f64
                f32.convert_i64_u
                f32.nearest
                nop
                local.tee 0
                f64.promote_f32
                i64.trunc_f64_s
                f32.convert_i64_s
                i32.reinterpret_f32
                i32.extend8_s
                (br_table 0 2 3 1)
            end

            ;;FLAG_3
            (i32.const 56)
            i64.extend_i32_u
            (f64.const 7.97616474723059e-211)
            i64.trunc_f64_s
            f64.convert_i64_s
            i32.trunc_f64_s
            i64.extend_i32_s
            i64.eq
            (br_table 0 1 2)
            ;;FLAG_4
        end

        ;;FLAG_1
        local.get 0
        i32.reinterpret_f32
        local.tee 1
        (f32.const -471535747072.0)
        (f64.const 6.642497475467805e-40)
        i32.trunc_f64_s
        i32.extend16_s
        i32.extend16_s
        i64.extend_i32_s
        i64.extend16_s
        i64.eqz
        f64.convert_i32_s
        f32.demote_f64
        f32.eq
        i32.gt_u
        f32.convert_i32_u
        i32.trunc_f32_u
        global.set $global_1126784598
    end

    ;;FLAG_0
    (f32.const -63331167633408.0)
    f32.nearest
    local.tee 2
    local.set 0
)

)