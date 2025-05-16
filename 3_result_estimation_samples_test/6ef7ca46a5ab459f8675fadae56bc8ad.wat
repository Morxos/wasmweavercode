(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_2896458144 (mut f32) (f32.const -2.1302107326444995e+18))
(global $global_1044241315 (mut i64) (i64.const -913693431633055554))
(func $run (export "run") (result f64)
    (local i32)
    (local $temp i32)
    local.get 0
    i32.const 9
    loop $b_loop_1925439685 (param i32)
        (i64.const 5684095594397232236)
        f32.convert_i64_s
        global.set $global_2896458144
        (f32.const 1.0792872238451422e-38)
        drop
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_1925439685
        drop
    end
    i64.extend_i32_s
    global.set $global_1044241315
    (f64.const 9.777592875262389e+88)
)

)