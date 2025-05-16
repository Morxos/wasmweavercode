(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_3312895570 (mut f32) (f32.const -3.6339189151485133e+18))
(func $run (export "run") (result f64)
    (local i64)
    (local $temp i32)
    i32.const 9
    loop $b_loop_876846796 (param i32)
        (i64.const 5213012)
        local.set 0
        global.get $global_3312895570
        f32.neg
        i64.trunc_f32_u
        (i32.const 2309005)
        i32.clz
        (i32.const 1782457284)
        i32.shl
        f32.convert_i32_u
        i64.trunc_f32_s
        i64.and
        local.set 0
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_876846796
        drop
    end
    local.get 0
    f64.reinterpret_i64
    f64.sqrt
    f64.abs
    i64.reinterpret_f64
    f64.reinterpret_i64
)

)