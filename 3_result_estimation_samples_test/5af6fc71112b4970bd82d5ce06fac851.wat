(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_3650344236 (mut f64) (f64.const -5.525838440004168e+18))
(global $global_2323329361 (mut f32) (f32.const 2.637861435941585e+18))
(func $run (export "run") (result f32)
    (local f32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_471922965 (param i32)
        (f32.const 2.1767180271150496e-19)
        f64.promote_f32
        global.set $global_3650344236
        local.get 0
        global.set $global_2323329361
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_471922965
        drop
    end
    nop
    (f64.const 5.6476334014134645e-303)
    i64.trunc_f64_u
    drop
    (f32.const 3.0650086912942243e-09)
)

)