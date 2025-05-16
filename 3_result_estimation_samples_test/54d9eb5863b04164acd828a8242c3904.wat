(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_2560715368 (mut f64) (f64.const -7.934526632195473e+18))
(global $global_4224874195 (mut i64) (i64.const -7596770566519755989))
(func $run (export "run") (result i64)
    (local i64 i32 f64)
    (local $temp i32)
    i32.const 9
    loop $b_loop_2646529219 (param i32)
        block
            i32.const 9
            loop $b_loop_77245903 (param i32)
                (i32.const 2151)
                i32.extend8_s
                i64.extend_i32_u
                i64.extend8_s
                f32.convert_i64_u
                i32.trunc_f32_u
                local.get 0
                i64.extend16_s
                f64.reinterpret_i64
                f32.demote_f64
                i64.trunc_f32_u
                drop
                i64.extend_i32_u
                br 3
                f64.reinterpret_i64
                drop
                i32.const 1
                i32.sub
                local.tee $temp
                local.get $temp
                i32.const 0
                i32.gt_s
                br_if $b_loop_77245903
                drop
            end
            i32.const 9
            loop $b_loop_3179932221 (param i32)
                global.get $global_2560715368
                (f64.const 1.9377149940403674e-240)
                i32.trunc_f64_s
                local.set 1
                f64.neg
                i64.trunc_f64_u
                i64.extend16_s
                f64.reinterpret_i64
                f64.trunc
                global.set $global_2560715368
                i32.const 1
                i32.sub
                local.tee $temp
                local.get $temp
                i32.const 0
                i32.gt_s
                br_if $b_loop_3179932221
                drop
            end
            global.get $global_2560715368
            (i64.const 0)
            f64.convert_i64_u
            f64.sub
            i32.trunc_f64_u
            nop
            (i64.const -822995069)
            f32.convert_i64_s
            f32.floor
            i32.reinterpret_f32
            i32.shl
            br_if 0
            global.get $global_2560715368
            local.set 2
            global.get $global_2560715368
            global.set $global_2560715368
        end

        (i64.const -6)
        global.set $global_4224874195
        local.get 0
        drop
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_2646529219
        drop
    end
    global.get $global_2560715368
    (f64.const 1.9133590135837915e+281)
    f64.add
    f64.neg
    i64.reinterpret_f64
)

)