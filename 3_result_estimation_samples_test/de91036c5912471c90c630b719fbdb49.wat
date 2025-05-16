(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_2258493807 (mut i32) (i32.const 444750539))
(func $run (export "run") (result i32)
    (local f32 i32 f64 f64)
    (local $temp i32)
    i32.const 9
    loop $b_loop_634440818 (param i32)
        local.get 0
        i32.const 9
        loop $b_loop_1813701707 (param i32)
            i32.const 9
            loop $b_loop_1511829514 (param i32)
                nop
                (i64.const -453)
                (f64.const 9.573566003810647e-07)
                i64.trunc_f64_s
                i64.le_u
                i32.eqz
                global.set $global_2258493807
                (i32.const -975456)
                return
                f32.convert_i32_s
                drop
                global.get $global_2258493807
                local.set 1
                (f64.const 5.4984071367661387e+42)
                (f64.const 1.0937310073906318e+60)
                local.tee 2
                local.tee 3
                f64.min
                f64.neg
                f64.floor
                (i32.const -3)
                i32.extend16_s
                local.set 1
                drop
                i32.const 1
                i32.sub
                local.tee $temp
                local.get $temp
                i32.const 0
                i32.gt_s
                br_if $b_loop_1511829514
                drop
            end
            (i64.const 606853)
            i64.eqz
            i32.eqz
            i64.extend_i32_u
            f64.reinterpret_i64
            i64.trunc_f64_s
            f64.reinterpret_i64
            i32.trunc_f64_u
            i32.clz
            i32.popcnt
            local.set 1
            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_1813701707
            drop
        end
        (i32.const 1375613510)
        f64.convert_i32_u
        f32.demote_f64
        f32.eq
        local.set 1
        (f64.const 1.3042414742041756e-199)
        local.set 2
        (i64.const -4)
        i64.extend16_s
        f64.convert_i64_s
        drop
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_634440818
        drop
    end
    (i64.const 243)
    nop
    i64.popcnt
    f64.reinterpret_i64
    i32.trunc_f64_u
    i32.ctz
)

)