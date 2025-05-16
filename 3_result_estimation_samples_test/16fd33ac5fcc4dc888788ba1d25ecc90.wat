(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_2860931113 (mut f32) (f32.const -4.031634810903462e+18))
(global $global_3334320967 (mut i32) (i32.const -223400486))
(func $run (export "run") (result f64)
    (local f32 i64)
    (local $temp i32)
    (f32.const 2.103578858149256e+28)
    local.set 0
    nop
    local.get 0
    local.set 0
    global.get $global_2860931113
    i32.const 9
    loop $b_loop_1219713528 (param i32)
        (i32.const 1046451226)
        global.set $global_3334320967
        (f64.const 1.8313599638167787e+254)
        (i32.const -423)
        drop
        return
        br 1
        f64.floor
        f64.trunc
        f64.nearest
        f64.neg
        f64.neg
        nop
        i64.reinterpret_f64
        local.set 1
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_1219713528
        drop
    end
    local.set 0
    nop
    (f64.const 3.3729160907302904e+187)
)

)