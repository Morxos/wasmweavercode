(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_1591897457 (mut i64) (i64.const -9113863564129333734))
(func $run (export "run") (result f64)
    (local f64)
    (local $temp i32)
    i32.const 9
    loop $b_loop_883611955 (param i32)
        global.get $global_1591897457
        f32.convert_i64_u
        f32.floor
        global.get $global_1591897457
        f64.convert_i64_u
        drop
        f32.ceil
        i64.trunc_f32_u
        f64.reinterpret_i64
        br 1
        local.set 0
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_883611955
        drop
    end
    (f32.const -7.2519532601234005e-09)
    f32.abs
    (f32.const 1.6686161562335653e-21)
    drop
    i64.trunc_f32_s
    drop
    (i64.const 87750980)
    f64.reinterpret_i64
    (f64.const 2.6559441879181726e+268)
    f64.gt
    drop
    nop
    (i64.const 7352237680325697335)
    f64.convert_i64_s
)

)