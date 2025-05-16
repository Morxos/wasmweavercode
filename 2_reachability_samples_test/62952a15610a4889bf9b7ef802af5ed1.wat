(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1797810637 (mut f32) (f32.const 2.9205510981230264e+18))
(global $global_1371650777 (mut i32) (i32.const 1116851507))
(func $run (export "run")
    (local f32 f32 i64)
    (local $temp i32)
    block
        ;;FLAG_1
        block
            ;;FLAG_3
            block
                (i32.const 43855)
                (i32.const 37)
                (i64.const 423)
                f32.convert_i64_s
                local.set 0
                i32.shr_s
                f32.convert_i32_s
                f32.trunc
                local.tee 1
                f32.floor
                global.set $global_1797810637
            end

            ;;FLAG_4
            local.get 0
            i32.trunc_f32_u
            f64.convert_i32_s
            f32.demote_f64
            f32.nearest
            global.set $global_1797810637
        end

        (i32.const -40905)
        i32.ctz
        i32.extend8_s
        f32.reinterpret_i32
        (f32.const -3.431834333508261e+27)
        f32.le
        (br_table 0 1)
        ;;FLAG_2
    end

    ;;FLAG_0
    local.get 0
    i64.trunc_f32_u
    (i32.const 6)
    f32.reinterpret_i32
    (f64.const 1.3230829636850246e+290)
    i64.reinterpret_f64
    drop
    (i64.const -77172948)
    i64.eqz
    drop
    i32.reinterpret_f32
    global.set $global_1371650777
    local.set 2
)

)