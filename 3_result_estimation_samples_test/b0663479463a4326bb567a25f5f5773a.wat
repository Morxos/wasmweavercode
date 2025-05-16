(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_2725820128 (mut f64) (f64.const -2.059725864722475e+18))
(global $global_1536469415 (mut i64) (i64.const -6185693635364013476))
(func $run (export "run") (result i32)
    (local i64)
    (local $temp i32)
    i32.const 9
    loop $b_loop_2148273868 (param i32)
        global.get $global_2725820128
        drop
        (i64.const 6)
        local.set 0
        (i64.const -584847871)
        f64.reinterpret_i64
        global.set $global_2725820128
        local.get 0
        f64.reinterpret_i64
        i64.reinterpret_f64
        global.set $global_1536469415
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_2148273868
        drop
    end
    local.get 0
    global.set $global_1536469415
    (i64.const 520086796)
    local.set 0
    global.get $global_2725820128
    f64.abs
    f32.demote_f64
    f32.neg
    i32.reinterpret_f32
)

)