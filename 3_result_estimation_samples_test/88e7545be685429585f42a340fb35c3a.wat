(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_2595639534 (mut i32) (i32.const 87446635))
(global $global_1463999219 (mut f32) (f32.const 8.689356831430017e+18))
(global $global_2484929582 (mut f64) (f64.const 1.511115618917251e+18))
(func $run (export "run") (result i64)
    (local i64 f64 f32 i32)
    (local $temp i32)
    (f32.const 3.8297296900643446e+24)
    f32.neg
    drop
    i32.const 9
    loop $b_loop_1903791315 (param i32)
        i32.const 9
        loop $b_loop_1157108972 (param i32)
            (f64.const 3.0925348302429975e+69)
            (f32.const 0.1597694456577301)
            drop
            drop
            local.get 0
            f64.reinterpret_i64
            local.set 1
            (f32.const -4.362417200809432e-07)
            f32.floor
            local.tee 2
            f32.neg
            i32.const 9
            loop $b_loop_2215139332 (param i32)
                (i32.const 433743)
                f32.reinterpret_i32
                f32.sqrt
                drop
                (i32.const 620775)
                i64.extend_i32_s
                i64.extend16_s
                i64.ctz
                i64.popcnt
                i64.clz
                (i32.const 434838190)
                br_if 3
                i64.extend8_s
                drop
                (f64.const 4.7474340853993e-147)
                i32.trunc_f64_s
                f64.convert_i32_u
                i64.trunc_f64_s
                f32.convert_i64_u
                (i32.const 67856)
                local.set 3
                f32.abs
                f32.neg
                i32.reinterpret_f32
                f32.reinterpret_i32
                (i32.const 874902367)
                global.set $global_2595639534
                global.set $global_1463999219
                i32.const 1
                i32.sub
                local.tee $temp
                local.get $temp
                i32.const 0
                i32.gt_s
                br_if $b_loop_2215139332
                drop
            end
            i32.trunc_f32_s
            f64.convert_i32_u
            f64.nearest
            i32.trunc_f64_u
            f32.convert_i32_u
            f32.nearest
            f64.promote_f32
            global.set $global_2484929582
            (f32.const 42615.3515625)
            i64.trunc_f32_u
            br 2
            f32.convert_i64_s
            i32.reinterpret_f32
            i32.clz
            f32.convert_i32_s
            f32.sqrt
            i32.reinterpret_f32
            f32.convert_i32_u
            i64.trunc_f32_u
            f64.reinterpret_i64
            f64.floor
            drop
            (i64.const 33186435)
            f64.convert_i64_s
            i32.const 9
            loop $b_loop_3615664507 (param i32)
                local.get 0
                global.get $global_2595639534
                f64.convert_i32_u
                i64.reinterpret_f64
                i64.lt_u
                global.set $global_2595639534
                i32.const 1
                i32.sub
                local.tee $temp
                local.get $temp
                i32.const 0
                i32.gt_s
                br_if $b_loop_3615664507
                drop
            end
            i32.trunc_f64_s
            local.set 3
            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_1157108972
            drop
        end
        local.get 0
        i64.ctz
        f64.convert_i64_s
        f64.trunc
        i64.reinterpret_f64
        f32.convert_i64_u
        global.set $global_1463999219
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_1903791315
        drop
    end
    (i64.const -9)
    drop
    (i32.const -6263)
    i64.extend_i32_s
)

)