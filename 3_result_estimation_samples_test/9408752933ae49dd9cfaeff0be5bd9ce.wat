(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i32)
    (local f32 f64)
    (local $temp i32)
    i32.const 9
    loop $b_loop_3877009941 (param i32)
        (i64.const -879)
        f32.convert_i64_s
        (i64.const 65)
        f32.convert_i64_u
        f32.min
        local.set 0
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_3877009941
        drop
    end
    (f64.const 0.01146957334227597)
    local.tee 1
    i32.trunc_f64_u
    i32.clz
)

)