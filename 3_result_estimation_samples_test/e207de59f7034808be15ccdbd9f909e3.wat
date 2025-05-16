(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_4166028472 (mut i64) (i64.const -9164780004047019405))
(global $global_3902480152 (mut f64) (f64.const -3.77072475706427e+18))
(func $run (export "run") (result i32)
    (local f32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_3640886657 (param i32)
        global.get $global_4166028472
        f32.convert_i64_u
        i64.trunc_f32_u
        global.set $global_4166028472
        global.get $global_4166028472
        drop
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_3640886657
        drop
    end
    local.get 0
    f32.abs
    f64.promote_f32
    global.set $global_3902480152
    local.get 0
    (i64.const -389757)
    f32.convert_i64_u
    f32.eq
)

)