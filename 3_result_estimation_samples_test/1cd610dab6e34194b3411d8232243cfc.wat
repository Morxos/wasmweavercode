(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_2594935102 f64 (f64.const -3.331823093407584e+18))
(global $global_2172041305 (mut i64) (i64.const 4879384603913618339))
(func $run (export "run") (result f64)
    (local f64)
    (local $temp i32)
    (i64.const 53211087)
    nop
    i64.extend16_s
    i32.wrap_i64
    drop
    i32.const 9
    loop $b_loop_3886930380 (param i32)
        nop
        nop
        global.get $global_2594935102
        local.set 0
        (f64.const 1.6899353204172962e-06)
        f64.ceil
        f64.nearest
        drop
        (i64.const 154)
        global.set $global_2172041305
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_3886930380
        drop
    end
    (f64.const 2.085500145505154e-101)
)

)