(module
(type $sig_function_2631018861 (func (param f32)))
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_1467224274 (mut f32) (f32.const 5.753020869500731e+18))
(global $global_2272121658 (mut f64) (f64.const 2.4607290638363423e+18))
(global $global_921828325 (mut i64) (i64.const -7729275639643593223))
(global $global_2132869380 (mut funcref) (ref.null func))
(func $function_2631018861 (export "function_2631018861") (param f32)
    (local i64)
    (local $temp i32)
    (i32.const 1)
    f64.convert_i32_u
    global.set $global_2272121658
    global.get $global_1467224274
    f32.floor
    f64.promote_f32
    local.get 0
    i64.trunc_f32_s
    local.set 1
    f64.floor
    global.set $global_2272121658
)
(func $run (export "run") (result i32)
    (local f32 f32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_1455918116 (param i32)
        local.get 0
        f32.floor
        local.tee 1
        local.set 0
        (f32.const 7.875419934244565e-12)
        drop
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_1455918116
        drop
    end
    global.get $global_1467224274
    f32.ceil
    i64.trunc_f32_s
    block (param i64)
        nop
        drop
        (f32.const 7.101537382129761e-25)
        i32.reinterpret_f32
        if
            i32.const 9
            loop $b_loop_3060160842 (param i32)
                global.get $global_1467224274
                (i64.const -65980)
                global.set $global_921828325
                (i64.const 20190198)
                f32.convert_i64_s
                f32.eq
                f32.convert_i32_s
                i32.trunc_f32_s
                br_if 1
                i32.const 1
                i32.sub
                local.tee $temp
                local.get $temp
                i32.const 0
                i32.gt_s
                br_if $b_loop_3060160842
                drop
            end
            ref.func $function_2631018861
            drop
            (i32.const 211388)
            f32.convert_i32_s
            i32.reinterpret_f32
            ref.func $function_2631018861
            global.set $global_2132869380
            f32.convert_i32_s
            local.set 0
        else
            nop
            nop
            global.get $global_1467224274
            call $function_2631018861
            (f32.const 3.546776125723886e-33)
            i64.trunc_f32_u
            i32.wrap_i64
            drop
        end

    end

    (f32.const 0.0)
    i32.trunc_f32_s
)

)