(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_542529452 (mut i64) (i64.const 6527266899492319667))
(global $global_687432890 (mut f32) (f32.const -7.472501474447065e+18))
(func $run (export "run") (result f32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_74281412 (param i32)
        (i32.const 81186433)
        f32.convert_i32_u
        f32.nearest
        i32.trunc_f32_s
        i64.extend_i32_u
        global.set $global_542529452
        nop
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_74281412
        drop
    end
    (i64.const -913)
    i64.extend8_s
    drop
    (f32.const -0.15135012567043304)
    global.set $global_687432890
    (i64.const 32772192)
    f32.convert_i64_s
    br 0
)

)