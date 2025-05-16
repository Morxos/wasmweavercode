(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_3790812933 (mut f64) (f64.const 1.2329602774879498e+18))
(global $global_1210875541 (mut i64) (i64.const 4371816027651070815))
(func $run (export "run") (result f32)
    (local i64)
    (local $temp i32)
    i32.const 9
    loop $b_loop_3878014559 (param i32)
        global.get $global_3790812933
        f64.trunc
        (i64.const -337162)
        i64.extend8_s
        global.set $global_1210875541
        drop
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_3878014559
        drop
    end
    global.get $global_3790812933
    i64.reinterpret_f64
    f32.convert_i64_s
    f64.promote_f32
    f32.demote_f64
    global.get $global_3790812933
    i64.reinterpret_f64
    local.set 0
)

)