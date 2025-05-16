(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_1340150728 (mut i64) (i64.const 4597928344223657394))
(global $global_3491773091 (mut i32) (i32.const -1065720190))
(func $run (export "run") (result f64)
    (local $temp i32)
    i32.const 9
    loop $b_loop_3400182606 (param i32)
        (f32.const 4.977949096433896e-21)
        i32.trunc_f32_s
        i64.extend_i32_u
        i64.clz
        i64.popcnt
        f64.convert_i64_u
        i64.trunc_f64_s
        global.set $global_1340150728
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_3400182606
        drop
    end
    (i64.const -16535)
    f64.reinterpret_i64
    drop
    (i32.const 562450)
    global.set $global_3491773091
    (i32.const -47)
    i64.extend_i32_s
    f64.reinterpret_i64
    f64.ceil
)

)