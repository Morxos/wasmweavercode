(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_2820142902 (mut f64) (f64.const -5.344332485478203e+18))
(func $run (export "run") (result i64)
    (local f64)
    (local $temp i32)
    i32.const 9
    loop $b_loop_1114776434 (param i32)
        (f64.const 5.820035708094241e+299)
        f64.floor
        drop
        global.get $global_2820142902
        local.set 0
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_1114776434
        drop
    end
    (f64.const 1.3583339909240432e-187)
    local.set 0
    nop
    (f32.const 1.15355650818666e-23)
    i64.trunc_f32_u
    f64.reinterpret_i64
    global.set $global_2820142902
    (f32.const 5.9544295325498495e-33)
    f64.promote_f32
    i32.trunc_f64_u
    i64.extend_i32_u
)

)