(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_1502579388 (mut i64) (i64.const -2070935122093744398))
(func $run (export "run") (result f32)
    (local i32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_4084414844 (param i32)
        (i32.const -650)
        i64.extend_i32_s
        global.set $global_1502579388
        (f64.const 5.556497591753241e-286)
        i32.trunc_f64_u
        (i32.const -576379375)
        i32.shr_s
        i32.popcnt
        local.set 0
        (i32.const -690707)
        local.set 0
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_4084414844
        drop
    end
    (f32.const 0.0)
    i64.trunc_f32_s
    f64.convert_i64_s
    i32.trunc_f64_u
    i32.eqz
    drop
    (f64.const 6.367617975291498e+76)
    f64.floor
    f32.demote_f64
)

)