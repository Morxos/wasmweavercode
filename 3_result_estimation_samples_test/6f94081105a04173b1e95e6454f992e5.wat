(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_3500266168 (mut f32) (f32.const 8.815680272101016e+18))
(func $run (export "run") (result i32)
    (local i32 f32)
    (local $temp i32)
    local.get 0
    i32.const 9
    loop $b_loop_2415953766 (param i32)
        (i32.const 30008662)
        local.set 0
        (f32.const -81359183872.0)
        local.tee 1
        f32.trunc
        global.set $global_3500266168
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_2415953766
        drop
    end
    i32.ctz
    (i32.const 5480604)
    i32.xor
)

)