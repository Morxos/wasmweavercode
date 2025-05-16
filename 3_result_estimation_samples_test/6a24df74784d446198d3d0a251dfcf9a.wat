(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_581858851 (mut i32) (i32.const -262410120))
(global $global_2337654880 (mut f32) (f32.const 4.05436638917401e+18))
(func $run (export "run") (result i32)
    (local i64 f64 f32 i32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_1777126901 (param i32)
        local.get 0
        i32.const 9
        loop $b_loop_1450863978 (param i32)
            (f64.const 1.6761515653727687e+120)
            drop
            (i64.const 44527850)
            f32.convert_i64_u
            block
                (f64.const 9.021660665081115e+279)
                local.get 0
                f64.reinterpret_i64
                f64.gt
                global.set $global_581858851
                (f32.const 4.716972520502454e-26)
                f64.promote_f32
                drop
                (f64.const 8.090597929494068e-11)
                (i64.const 161536971270315101)
                local.set 0
                f64.sqrt
                local.tee 1
                local.set 1
                global.get $global_581858851
                br_if 0
            end

            i32.trunc_f32_s
            i32.extend16_s
            if
                (i32.const 2064538418)
                i32.eqz
                i64.extend_i32_s
                drop
                (f64.const 3.208554415900849e+224)
                drop
            else
                (i32.const 69808)
                f32.convert_i32_u
                global.set $global_2337654880
                global.get $global_581858851
                i64.extend_i32_s
                i64.extend16_s
                i64.extend16_s
                i64.extend16_s
                local.get 0
                drop
                i64.extend16_s
                i64.extend32_s
                (i64.const 9)
                i64.gt_s
                i32.clz
                f32.reinterpret_i32
                local.set 2
            end

            (f64.const 1.0497174479376189e-110)
            (i64.const 43718)
            (i32.const 220584851)
            i32.extend8_s
            drop
            i32.wrap_i64
            f32.reinterpret_i32
            (i32.const 8552299)
            (i32.const -958424)
            nop
            f32.convert_i32_s
            i64.trunc_f32_s
            (i64.const 85004)
            i64.le_u
            i32.lt_u
            i32.popcnt
            local.set 3
            i64.trunc_f32_s
            i64.clz
            i64.extend16_s
            f64.convert_i64_s
            f64.ge
            return
            i32.eqz
            local.set 3
            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_1450863978
            drop
        end
        (f64.const 8.286844192870453e+138)
        drop
        i64.ctz
        f32.convert_i64_u
        local.set 2
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_1777126901
        drop
    end
    (i32.const -6422)
    i32.extend8_s
    f32.convert_i32_s
    i32.trunc_f32_s
)

)