(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_3912311925 (mut f64) (f64.const -1.3821134837394022e+17))
(func $run (export "run") (result f32)
    (local f64 i32 f32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_1730508621 (param i32)
        (f32.const -1.0566675030625194e-13)
        f32.neg
        f64.promote_f32
        local.set 0
        (i32.const -74928683)
        block
            i32.const 9
            loop $b_loop_1168460562 (param i32)
                (i32.const 974)
                i64.extend_i32_u
                i64.eqz
                local.set 1
                (i32.const 60525034)
                br_if 1
                (f32.const -9.559351222696953e+30)
                (i64.const -7318658086194139748)
                f64.convert_i64_s
                local.set 0
                f32.neg
                f32.abs
                f64.promote_f32
                global.set $global_3912311925
                i32.const 1
                i32.sub
                local.tee $temp
                local.get $temp
                i32.const 0
                i32.gt_s
                br_if $b_loop_1168460562
                drop
            end
            global.get $global_3912311925
            f64.ceil
            f32.demote_f64
            local.set 2
            i32.const 9
            loop $b_loop_621882294 (param i32)
                (i32.const 77118)
                i32.extend16_s
                i32.ctz
                i32.extend16_s
                f32.convert_i32_s
                (i64.const 35)
                f32.convert_i64_s
                f32.floor
                f32.gt
                f32.convert_i32_s
                return
                f64.promote_f32
                drop
                (f64.const 2.1639050272884967e-58)
                global.set $global_3912311925
                i32.const 1
                i32.sub
                local.tee $temp
                local.get $temp
                i32.const 0
                i32.gt_s
                br_if $b_loop_621882294
                drop
            end
            local.get 0
            f32.demote_f64
            f32.trunc
            (f64.const 5.515407120739278e+267)
            global.get $global_3912311925
            local.set 0
            f64.floor
            global.set $global_3912311925
            i32.trunc_f32_u
            br_if 0
            (i64.const -569311439)
            f64.convert_i64_s
            f32.demote_f64
            return
            i64.trunc_f32_s
            f32.convert_i64_s
            nop
            i32.trunc_f32_s
            drop
        end

        f64.convert_i32_u
        nop
        global.set $global_3912311925
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_1730508621
        drop
    end
    global.get $global_3912311925
    f64.trunc
    local.set 0
    nop
    global.get $global_3912311925
    i32.trunc_f64_u
    f32.convert_i32_s
)

)