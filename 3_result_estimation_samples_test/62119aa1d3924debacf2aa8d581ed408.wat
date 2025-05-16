(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_2701241436 (mut i32) (i32.const 745949323))
(global $global_678436849 (mut f32) (f32.const 1.5513167611088077e+18))
(func $run (export "run") (result i64)
    (local i32 i32 i32 i64 f64)
    (local $temp i32)
    i32.const 9
    loop $b_loop_291946743 (param i32)
        i32.const 9
        loop $b_loop_2396893806 (param i32)
            i32.const 9
            loop $b_loop_1156798962 (param i32)
                local.get 0
                (i32.const 400913069)
                nop
                i32.rotl
                i32.extend8_s
                i32.clz
                local.tee 1
                i32.extend8_s
                global.set $global_2701241436
                (f32.const 264992608.0)
                f32.abs
                (i64.const 9)
                drop
                global.set $global_678436849
                i32.const 1
                i32.sub
                local.tee $temp
                local.get $temp
                i32.const 0
                i32.gt_s
                br_if $b_loop_1156798962
                drop
            end
            block
                nop
                local.get 0
                i64.extend_i32_s
                i64.extend16_s
                f64.reinterpret_i64
                drop
            end

            (f64.const 3.049788853333474e+191)
            i32.const 9
            loop $b_loop_3802885443 (param i32)
                (i64.const 4339701527566800214)
                i64.ctz
                f64.convert_i64_s
                f64.sqrt
                i32.trunc_f64_s
                f32.convert_i32_u
                f32.ceil
                i32.reinterpret_f32
                i64.extend_i32_u
                return
                (f32.const 6768617472.0)
                local.get 0
                local.tee 2
                f32.convert_i32_u
                f32.eq
                br_if 3
                i64.ctz
                local.set 3
                (i64.const -62697)
                f64.reinterpret_i64
                f64.floor
                drop
                i32.const 1
                i32.sub
                local.tee $temp
                local.get $temp
                i32.const 0
                i32.gt_s
                br_if $b_loop_3802885443
                drop
            end
            f64.floor
            drop
            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_2396893806
            drop
        end
        (i64.const -8576077794774502592)
        f32.convert_i64_u
        f32.ceil
        drop
        (i32.const -711451731)
        drop
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_291946743
        drop
    end
    (f64.const 6875563715552.103)
    i64.trunc_f64_u
    f64.reinterpret_i64
    local.set 4
    (f32.const -7.433820264502152e+31)
    i32.reinterpret_f32
    i32.eqz
    i64.extend_i32_u
)

)