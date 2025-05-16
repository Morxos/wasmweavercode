(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result f64)
    (local i64 f64)
    (local $temp i32)
    i32.const 9
    loop $b_loop_4238270086 (param i32)
        (f32.const -1.637859618120476e-21)
        f32.abs
        f32.neg
        drop
        local.get 0
        i64.extend16_s
        i64.extend32_s
        f64.convert_i64_s
        return
        i64.trunc_f64_s
        f64.convert_i64_u
        i64.trunc_f64_s
        f64.reinterpret_i64
        (f64.const 1481122490.9969184)
        f64.gt
        f64.convert_i32_u
        local.tee 1
        local.set 1
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_4238270086
        drop
    end
    (f32.const 0.07176735252141953)
    f64.promote_f32
    i32.trunc_f64_s
    drop
    (f64.const 5.871947768996655e-253)
)

)