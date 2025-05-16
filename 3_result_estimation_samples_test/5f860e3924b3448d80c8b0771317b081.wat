(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_2071593171 (mut i32) (i32.const 1656627457))
(func $run (export "run") (result i32)
    (local f32 f64)
    (local $temp i32)
    local.get 0
    f32.floor
    (f64.const 7.284117711732251e-188)
    f64.neg
    i32.const 9
    loop $b_loop_328903126 (param i32)
        (i64.const 2251385)
        f64.convert_i64_u
        (i64.const -6)
        (f32.const 2.7301980070447013e-31)
        i32.reinterpret_f32
        global.set $global_2071593171
        i64.ctz
        f64.reinterpret_i64
        local.set 1
        (f64.const 6.012215079056677e+174)
        f64.gt
        nop
        i32.popcnt
        drop
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_328903126
        drop
    end
    i64.trunc_f64_s
    drop
    f64.promote_f32
    f64.neg
    i32.trunc_f64_s
)

)