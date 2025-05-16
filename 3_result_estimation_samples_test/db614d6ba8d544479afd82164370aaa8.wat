(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_2942594633 (mut i32) (i32.const -1379734569))
(global $global_855507052 (mut f64) (f64.const -3.270010063244767e+18))
(func $run (export "run") (result i32)
    (local f64 f64 f32)
    (local $temp i32)
    block
        local.get 0
        nop
        block (param f64)
            (i32.const 4124847)
            block
                local.get 0
                (i32.const 400212)
                i32.ctz
                i32.popcnt
                i32.extend16_s
                global.set $global_2942594633
                i32.trunc_f64_s
                drop
            end

            i32.extend16_s
            (i32.const 78502800)
            i32.div_s
            f64.convert_i32_s
            f64.add
            i32.trunc_f64_u
            i64.extend_i32_u
            f64.convert_i64_s
            i64.trunc_f64_s
            f32.convert_i64_s
            f32.ceil
            drop
            block
                (f64.const 0.0)
                i32.trunc_f64_u
                i32.clz
                i32.extend8_s
                f32.reinterpret_i32
                i32.trunc_f32_u
                br 3
                i32.ctz
                br_if 0
                global.get $global_2942594633
                br_if 0
            end

        end

        (i64.const -405608)
        nop
        f32.convert_i64_s
        (f32.const 131289720.0)
        f32.add
        f32.sqrt
        (f64.const 2.076940029119834e+203)
        nop
        nop
        f64.floor
        f64.sqrt
        f64.trunc
        i64.reinterpret_f64
        i64.extend8_s
        block (param i64)
            i32.const 9
            loop $b_loop_2343983568 (param i32)
                (i32.const 3837)
                (i64.const -74)
                i64.popcnt
                f32.convert_i64_u
                i32.trunc_f32_u
                i32.rotl
                i32.clz
                i32.popcnt
                (f32.const -1.9471317040500095e-36)
                f32.floor
                drop
                global.get $global_2942594633
                i32.shl
                global.set $global_2942594633
                i32.const 1
                i32.sub
                local.tee $temp
                local.get $temp
                i32.const 0
                i32.gt_s
                br_if $b_loop_2343983568
                drop
            end
            f64.convert_i64_u
            f64.floor
            drop
            local.get 0
            nop
            local.tee 1
            global.set $global_855507052
        end

        local.set 2
    end

    (i32.const -4)
    i32.ctz
    (f32.const -2.112250237692569e+19)
    local.set 2
)

)