(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_547498897 (mut f32) (f32.const 8.577366074582893e+18))
(func $run (export "run") (result i32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_3549960600 (param i32)
        nop
        (f32.const 5.803686404330764e+28)
        global.set $global_547498897
        (f64.const 8.23734651964139e+282)
        drop
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_3549960600
        drop
    end
    (f32.const 2.1979393776051814e+17)
    f32.abs
    i64.trunc_f32_s
    f64.reinterpret_i64
    i32.trunc_f64_u
)

)