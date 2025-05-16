(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_1418067996 (mut f64) (f64.const 8.450155610552687e+18))
(func $run (export "run") (result f64)
    (local $temp i32)
    i32.const 9
    loop $b_loop_1792185384 (param i32)
        (f32.const 1.2929536732794588e-24)
        drop
        (f32.const 1.0348136113729747e-32)
        f64.promote_f32
        global.set $global_1418067996
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_1792185384
        drop
    end
    (i64.const 8)
    drop
    (i32.const 240309196)
    i32.extend8_s
    f64.convert_i32_u
    i64.trunc_f64_s
    (f64.const 4.836896552900378e+275)
    nop
    drop
    f64.reinterpret_i64
)

)