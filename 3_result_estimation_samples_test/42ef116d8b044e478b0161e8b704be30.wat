(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_3086507938 (mut i32) (i32.const -241188427))
(global $global_2815324818 (mut f32) (f32.const -7.237969940525875e+16))
(global $global_3073715026 (mut i64) (i64.const -1944875471231433902))
(func $run (export "run") (result i64)
    (local f32)
    (local $temp i32)
    block
        i32.const 9
        loop $b_loop_3388838338 (param i32)
            i32.const 9
            loop $b_loop_3743776398 (param i32)
                local.get 0
                f32.trunc
                local.set 0
                nop
                local.get 0
                f64.promote_f32
                f64.trunc
                f32.demote_f64
                i32.reinterpret_f32
                f32.convert_i32_u
                f32.neg
                nop
                local.set 0
                global.get $global_3086507938
                br_if 2
                local.get 0
                global.set $global_2815324818
                i32.const 1
                i32.sub
                local.tee $temp
                local.get $temp
                i32.const 0
                i32.gt_s
                br_if $b_loop_3743776398
                drop
            end
            (i64.const 114188)
            f32.convert_i64_s
            local.set 0
            (f32.const 3.44656485909683e-30)
            i64.trunc_f32_s
            global.set $global_3073715026
            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_3388838338
            drop
        end
        global.get $global_3086507938
        (f32.const 4.666796844324532e-16)
        f32.neg
        (i32.const 893702245)
        (i64.const -85334)
        f32.convert_i64_u
        f32.nearest
        nop
        f32.trunc
        global.set $global_2815324818
        f32.convert_i32_s
        f32.eq
        i32.shl
        br_if 0
    end

    nop
    local.get 0
    i64.trunc_f32_s
    i64.extend16_s
    i64.clz
    i64.ctz
)

)