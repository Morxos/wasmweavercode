(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_3489937811 (mut i64) (i64.const -1279131903498243730))
(global $global_2025823584 (mut i32) (i32.const 1191103984))
(func $run (export "run") (result i32)
    (local i64 i32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_1538249423 (param i32)
        (i64.const -6449112414214992334)
        drop
        (i64.const -7252787290784300698)
        (i64.const 770)
        i64.add
        global.get $global_3489937811
        local.tee 0
        i64.sub
        (i64.const -4)
        i64.rem_s
        f64.reinterpret_i64
        (f64.const 3.415676161198915e+241)
        f64.gt
        local.set 1
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_1538249423
        drop
    end
    (f64.const 0.0)
    drop
    (i32.const -4025)
    global.set $global_2025823584
    nop
    (i32.const -8097292)
    (i64.const -40)
    global.set $global_3489937811
)

)