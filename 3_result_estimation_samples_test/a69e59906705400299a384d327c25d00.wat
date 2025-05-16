(module
(type $sig_function_380521855 (func (param f32)))
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_616190586 (mut f32) (f32.const -6.147787875069985e+18))
(global $global_2040058207 (mut i32) (i32.const 1603624903))
(global $global_604128690 (mut f64) (f64.const 1.3941582117582356e+18))
(func $function_380521855 (export "function_380521855") (param f32)
    (local $temp i32)
    global.get $global_616190586
    i32.trunc_f32_s
    f32.reinterpret_i32
    f64.promote_f32
    nop
    drop
    nop
)
(func $run (export "run") (result f32)
    (local i32 i32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_710250010 (param i32)
        i32.const 9
        loop $b_loop_54586790 (param i32)
            block
                (f32.const 2.1536838115689772e-33)
                global.set $global_616190586
                (i32.const -32)
                local.tee 0
                i32.extend16_s
                (i64.const 655)
                i32.wrap_i64
                drop
                f32.convert_i32_s
                br 3
                global.get $global_616190586
                f32.eq
                i32.eqz
                global.set $global_2040058207
                (i64.const -700254892)
                f64.convert_i64_u
                f64.trunc
                global.set $global_604128690
                local.get 0
                br_if 0
            end

            (i64.const 576748186)
            i64.extend8_s
            f32.convert_i64_u
            drop
            global.get $global_616190586
            call $function_380521855
            local.get 0
            local.tee 1
            i64.extend_i32_u
            f32.convert_i64_s
            global.set $global_616190586
            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_54586790
            drop
        end
        nop
        (f32.const -4.04738761850645e-37)
        global.get $global_616190586
        f32.eq
        i32.clz
        local.set 0
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_710250010
        drop
    end
    (f32.const -6.7827415225904255e-28)
    (f32.const 3.9317657751780644e-07)
    (f64.const 3.482539016441072e+57)
    f32.demote_f64
    f32.copysign
    global.set $global_616190586
)

)