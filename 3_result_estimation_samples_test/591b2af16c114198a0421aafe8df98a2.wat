(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i64)
    (local f32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_2396347942 (param i32)
        nop
        (f64.const 2.749342861504124e-78)
        f64.sqrt
        i64.trunc_f64_u
        f64.reinterpret_i64
        f32.demote_f64
        local.set 0
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_2396347942
        drop
    end
    (i32.const 544630)
    f32.convert_i32_s
    f32.nearest
    i64.trunc_f32_u
)

)