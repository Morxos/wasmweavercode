(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_1284610403 (mut f32) (f32.const -6.231229812501905e+18))
(global $global_3438721392 (mut f64) (f64.const 3.54018615719508e+17))
(func $run (export "run") (result i64)
    (local i32 f32 i64 i64 f32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_1776947896 (param i32)
        (i64.const -6411)
        f32.convert_i64_u
        global.set $global_1284610403
        block
            (f64.const 6.562538998619733e-126)
            i32.trunc_f64_u
            block (param i32) (result f64)
                nop
                local.set 0
                global.get $global_1284610403
                local.get 0
                f32.convert_i32_s
                global.get $global_1284610403
                f32.add
                f32.eq
                i64.extend_i32_s
                (i32.const 997074807)
                i64.extend_i32_s
                i64.gt_s
                f32.convert_i32_u
                local.set 1
                (f32.const -4.6127289130579294e-34)
                f32.abs
                (f32.const -3716.34619140625)
                (i64.const 944366457)
                (i32.const -234704622)
                (i64.const -4936497)
                nop
                i64.eqz
                i32.rotr
                global.get $global_1284610403
                global.set $global_1284610403
                f32.convert_i32_s
                i64.trunc_f32_s
                i64.rem_u
                f64.reinterpret_i64
                nop
                i64.trunc_f64_u
                f32.convert_i64_s
                global.set $global_1284610403
                f32.min
                (f32.const -2.8435915981398935e+33)
                f32.min
                f32.neg
                drop
                (f32.const 1.493635409133276e-05)
                local.set 1
                (i64.const -3)
                br 3
                f64.reinterpret_i64
            end

            f64.ceil
            i64.reinterpret_f64
            i64.clz
            i64.clz
            local.set 2
        end

        (f32.const 1.843923905277665e+28)
        f32.floor
        f32.sqrt
        (i64.const 55411)
        i64.clz
        i64.clz
        global.get $global_1284610403
        f32.ceil
        f32.ceil
        f32.floor
        local.get 0
        i32.clz
        block (param f32 i32)
            i32.clz
            i64.extend_i32_u
            global.get $global_1284610403
            local.set 1
            i64.extend16_s
            f64.convert_i64_u
            global.set $global_3438721392
            f32.abs
            drop
        end

        nop
        nop
        (i64.const 1632)
        local.tee 3
        i64.gt_s
        i32.clz
        local.set 0
        i64.trunc_f32_s
        f32.convert_i64_u
        local.set 1
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_1776947896
        drop
    end
    (i64.const -659960539)
    f32.convert_i64_u
    block
        (i32.const 93139240)
        i64.extend_i32_u
        i64.extend32_s
        i64.clz
        f64.reinterpret_i64
        f64.sqrt
        f64.floor
        f32.demote_f64
        local.tee 4
        (i32.const -307731131)
        local.get 0
        i32.shl
        local.set 0
        f32.floor
        nop
        f32.neg
        f64.promote_f32
        i32.trunc_f64_s
        local.get 0
        i32.shl
        br_if 0
        block
            nop
            global.get $global_1284610403
            (f64.const 8.469361852133413e+212)
            drop
            (f32.const -1375.9638671875)
            i64.trunc_f32_s
            f32.convert_i64_s
            f32.neg
            f32.eq
            f64.convert_i32_s
            drop
            nop
        end

        (i32.const -4)
        br_if 0
        nop
    end

    global.set $global_1284610403
    (i64.const 78641)
)

)