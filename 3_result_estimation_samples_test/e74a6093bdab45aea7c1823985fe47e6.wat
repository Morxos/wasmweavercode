(module
(type $sig_function_3694640701 (func))
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_2356069863 (mut i32) (i32.const -1871639144))
(global $global_3190601648 (mut f32) (f32.const -4.360119132381774e+18))
(global $global_1404141586 (mut i64) (i64.const -3963666588538479852))
(global $global_3836833186 (mut f64) (f64.const -3.203135206950818e+18))
(func $function_3694640701 (export "function_3694640701")
    (local f64 i32)
    (local $temp i32)
    block
        nop
        (f32.const 7.41020403438597e-06)
        drop
        (f64.const 2.1077058007441124e-45)
        drop
    end

    (f64.const 5.4835376678136135e-130)
    local.set 0
    global.get $global_2356069863
    local.tee 1
    i32.extend16_s
    br_if 0
)
(func $run (export "run") (result i32)
    (local f32 i32 f64 f32 i64)
    (local $temp i32)
    i32.const 9
    loop $b_loop_2707361281 (param i32)
        i32.const 9
        loop $b_loop_3099867047 (param i32)
            (i32.const 0)
            global.set $global_2356069863
            local.get 0
            global.set $global_3190601648
            i32.const 9
            loop $b_loop_988368294 (param i32)
                nop
                nop
                (f32.const -1.874161775056014e-16)
                f64.promote_f32
                (f64.const 5.489846721378146e-72)
                f64.ne
                local.tee 1
                return
                local.set 1
                global.get $global_2356069863
                local.get 0
                f32.abs
                f64.promote_f32
                f64.neg
                nop
                local.set 2
                i32.clz
                br 3
                f32.convert_i32_u
                f32.abs
                i32.trunc_f32_s
                drop
                nop
                local.get 0
                f32.abs
                i32.trunc_f32_s
                i32.clz
                drop
                (f32.const -1.7360123436916946e+22)
                local.set 0
                nop
                local.get 0
                local.set 0
                i32.const 1
                i32.sub
                local.tee $temp
                local.get $temp
                i32.const 0
                i32.gt_s
                br_if $b_loop_988368294
                drop
            end
            nop
            (i32.const 1839145062)
            i32.extend8_s
            i32.clz
            f32.convert_i32_u
            local.tee 3
            (f64.const 0.009306087537645566)
            (i32.const 925779)
            global.set $global_2356069863
            i64.trunc_f64_s
            f64.reinterpret_i64
            i64.reinterpret_f64
            global.set $global_1404141586
            f64.promote_f32
            drop
            global.get $global_2356069863
            i32.eqz
            i32.clz
            i64.extend_i32_u
            (i64.const 72533)
            i64.mul
            local.set 4
            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_3099867047
            drop
        end
        nop
        (f64.const 1.5275739154536523e-300)
        i32.trunc_f64_u
        (f64.const 4.199643152140376e+226)
        drop
        f64.convert_i32_s
        (i64.const 503)
        f64.reinterpret_i64
        f64.div
        i64.trunc_f64_u
        call $function_3694640701
        f64.reinterpret_i64
        f64.trunc
        f64.neg
        global.set $global_3836833186
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_2707361281
        drop
    end
    call $function_3694640701
    (f64.const 5.6144538403228925e-25)
    global.set $global_3836833186
    (i64.const 6)
    local.get 0
    drop
    drop
    ref.func $function_3694640701
    global.get $global_2356069863
    i64.extend_i32_s
    local.set 4
    drop
    (f32.const 8.090362893985382e+16)
    f32.neg
    f32.neg
    drop
    global.get $global_2356069863
)

)