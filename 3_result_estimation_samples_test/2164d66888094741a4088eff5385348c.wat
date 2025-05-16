(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_2644797252 (mut f64) (f64.const 2.2218528023831798e+18))
(global $global_1772087222 (mut f32) (f32.const 3.406950852995318e+18))
(global $global_2869194652 (mut i32) (i32.const 870011559))
(global $global_2922435949 (mut i64) (i64.const 2849185604900379941))
(func $run (export "run") (result f64)
    (local i32 f64 i64 f32 i32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_214909983 (param i32)
        i32.const 9
        loop $b_loop_3027199394 (param i32)
            i32.const 9
            loop $b_loop_3860783455 (param i32)
                local.get 0
                i32.popcnt
                f64.convert_i32_u
                i32.trunc_f64_u
                i32.eqz
                f64.convert_i32_s
                local.tee 1
                i64.reinterpret_f64
                f64.convert_i64_s
                local.get 0
                f32.convert_i32_s
                i64.trunc_f32_s
                i64.clz
                i64.ctz
                local.tee 2
                local.set 2
                (f32.const -2.105681691600783e-32)
                i32.reinterpret_f32
                drop
                global.set $global_2644797252
                (f64.const 2.2777275079085583e-269)
                f64.sqrt
                (f64.const 3.015181423401748e-45)
                f64.nearest
                f64.sqrt
                drop
                global.get $global_2644797252
                f64.copysign
                (i64.const -957)
                i64.ctz
                f32.convert_i64_u
                f32.neg
                (i64.const 0)
                f32.convert_i64_u
                f32.eq
                f64.convert_i32_s
                global.get $global_2644797252
                f64.sqrt
                f64.copysign
                f64.copysign
                return
                f64.sqrt
                i64.reinterpret_f64
                f64.reinterpret_i64
                f32.demote_f64
                global.set $global_1772087222
                i32.const 1
                i32.sub
                local.tee $temp
                local.get $temp
                i32.const 0
                i32.gt_s
                br_if $b_loop_3860783455
                drop
            end
            nop
            (f32.const -1.6128698469504123e+28)
            global.set $global_1772087222
            (i64.const 72557915)
            i64.extend16_s
            f64.convert_i64_u
            i64.trunc_f64_u
            f64.convert_i64_s
            f64.trunc
            i32.trunc_f64_s
            f32.convert_i32_u
            i32.trunc_f32_u
            f64.convert_i32_s
            block
                (i32.const -9)
                i64.extend_i32_s
                f32.convert_i64_s
                i64.trunc_f32_s
                f64.convert_i64_s
                global.set $global_2644797252
            end

            block
                local.get 0
                i32.popcnt
                f32.convert_i32_u
                (i32.const 76)
                i32.clz
                i32.clz
                i64.extend_i32_u
                drop
                f32.abs
                drop
            end

            f64.trunc
            f32.demote_f64
            i32.reinterpret_f32
            global.set $global_2869194652
            block
                nop
                (i64.const -215)
                nop
                drop
                (i64.const 5807315)
                global.set $global_2922435949
            end

            block
                (i32.const -95)
                (i32.const 679181574)
                i32.rotl
                f64.convert_i32_s
                global.set $global_2644797252
                (f32.const 5.884165978157493e+36)
                global.set $global_1772087222
                nop
            end

            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_3027199394
            drop
        end
        i32.const 9
        loop $b_loop_763720402 (param i32)
            (i32.const -506103)
            i32.clz
            (f32.const 5.5756489692218605e-18)
            i32.trunc_f32_u
            block
                local.get 0
                i32.ctz
                i32.extend8_s
                f32.convert_i32_s
                f64.promote_f32
                i32.trunc_f64_s
                global.set $global_2869194652
                (i64.const 71655426)
                global.get $global_2644797252
                global.set $global_2644797252
                global.get $global_2644797252
                f64.abs
                f32.demote_f64
                f64.promote_f32
                i64.trunc_f64_s
                i64.shl
                f64.reinterpret_i64
                i32.trunc_f64_s
                i32.extend16_s
                i64.extend_i32_s
                f32.convert_i64_s
                i64.trunc_f32_u
                f64.convert_i64_s
                f64.trunc
                i64.reinterpret_f64
                f64.reinterpret_i64
                br 3
                i32.trunc_f64_s
                i32.extend8_s
                i32.eqz
                br_if 0
                (f32.const -1.182633923110148e-14)
                local.tee 3
                local.set 3
            end

            i32.rotr
            block (param i32) (result f32)
                f32.reinterpret_i32
                f32.floor
                local.set 3
                (i32.const -75277)
                local.set 0
                (i64.const -62249)
                f32.convert_i64_s
            end

            local.set 3
            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_763720402
            drop
        end
        (f64.const 1.9289316481245775e-86)
        i64.trunc_f64_u
        f32.convert_i64_s
        i32.trunc_f32_u
        local.tee 4
        f32.convert_i32_u
        f64.promote_f32
        global.set $global_2644797252
        block
            local.get 0
            i64.extend_i32_s
            f32.convert_i64_s
            f64.promote_f32
            local.get 0
            f64.convert_i32_s
            f64.min
            f64.sqrt
            f32.demote_f64
            f32.neg
            (i64.const -339812)
            f32.convert_i64_u
            block (param f32)
                (f64.const 3.2521204805434366e-100)
                f64.sqrt
                i32.trunc_f64_s
                (i64.const -7327)
                (i64.const 69703060)
                i64.rem_u
                i64.extend8_s
                f32.convert_i64_s
                global.set $global_1772087222
                i32.clz
                local.set 0
                f32.sqrt
                i64.trunc_f32_s
                nop
                f32.convert_i64_u
                local.set 3
            end

            i64.trunc_f32_s
            drop
            local.get 0
            i32.eqz
            (i32.const 73155530)
            i32.shl
            i32.clz
            i32.clz
            br_if 0
        end

        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_214909983
        drop
    end
    (i32.const 898481)
    f64.convert_i32_u
    (f32.const 0.004237466026097536)
    local.set 3
    f64.sqrt
)

)