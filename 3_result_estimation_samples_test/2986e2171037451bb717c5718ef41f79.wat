(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_181143614 (mut f32) (f32.const 5.313295932983345e+18))
(func $run (export "run") (result i64)
    (local f32)
    (local $temp i32)
    (f32.const 1.4046023109922891e+31)
    global.set $global_181143614
    (f32.const 2.0811694132561105e-35)
    i64.trunc_f32_s
    i32.const 9
    loop $b_loop_1014471847 (param i32)
        nop
        global.get $global_181143614
        local.set 0
        global.get $global_181143614
        local.get 0
        (f64.const 3.849651396424418e+217)
        f64.floor
        drop
        f32.gt
        (f32.const -1871103488.0)
        global.set $global_181143614
        drop
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_1014471847
        drop
    end
)

)