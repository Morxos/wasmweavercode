(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i32)
    (local f64 i64)
    (local $temp i32)
    i32.const 9
    loop $b_loop_3853841465 (param i32)
        nop
        local.get 0
        f64.floor
        drop
        (i64.const 209793)
        (f64.const 5.409777375546597e-213)
        i64.reinterpret_f64
        i64.extend8_s
        i64.mul
        local.set 1
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_3853841465
        drop
    end
    (i64.const 943114945)
    i64.clz
    i64.extend8_s
    f32.convert_i64_s
    f32.abs
    f32.ceil
    f64.promote_f32
    f64.trunc
    i32.trunc_f64_s
)

)