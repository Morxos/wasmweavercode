(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_2877051288 (mut i64) (i64.const -1707180940916415855))
(func $run (export "run") (result f32)
    (local i32 f32)
    (local $temp i32)
    block
        (i64.const 6655520767229189780)
        (f64.const 9.484919134878156e-46)
        drop
        nop
        global.set $global_2877051288
        local.get 0
        br_if 0
        (i64.const -61424)
        f32.convert_i64_s
        i32.trunc_f32_s
        i32.clz
        br_if 0
        nop
        i32.const 9
        loop $b_loop_3898802713 (param i32)
            local.get 0
            i32.clz
            f32.reinterpret_i32
            nop
            local.set 1
            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_3898802713
            drop
        end
    end

    (f32.const -2.4792908476017547e-16)
    i32.trunc_f32_s
    i64.extend_i32_u
    (i64.const -499)
    i64.lt_u
    f32.convert_i32_s
)

)