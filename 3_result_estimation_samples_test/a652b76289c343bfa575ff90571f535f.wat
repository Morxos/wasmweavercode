(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_2752356699 (mut i64) (i64.const 774299196873257804))
(func $run (export "run") (result f64)
    (local f32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_618326539 (param i32)
        (i32.const -437431061)
        i32.extend8_s
        f32.convert_i32_u
        i64.trunc_f32_s
        f32.convert_i64_s
        local.tee 0
        drop
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_618326539
        drop
    end
    (f32.const 218481563795456.0)
    i64.trunc_f32_s
    global.set $global_2752356699
    global.get $global_2752356699
    f64.convert_i64_s
)

)