(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result f64)
    (local f32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_1021553608 (param i32)
        (i64.const -95)
        f32.convert_i64_s
        i32.reinterpret_f32
        nop
        f32.convert_i32_u
        f32.neg
        local.set 0
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_1021553608
        drop
    end
    (i64.const 623281755)
    drop
    (f64.const 2.8549228933135906e+32)
    nop
)

)