(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i64)
    (local f32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_3810444318 (param i32)
        nop
        (f32.const 234.4438018798828)
        f32.neg
        f32.nearest
        f32.trunc
        local.set 0
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_3810444318
        drop
    end
    block
        nop
        (i32.const 0)
        drop
        (f64.const 6.827655506568197e-259)
        drop
    end

    (i64.const 498790869)
    nop
    nop
)

)