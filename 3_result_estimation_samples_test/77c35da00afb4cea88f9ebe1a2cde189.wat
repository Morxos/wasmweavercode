(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i64)
    (local i32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_2155356703 (param i32)
        (i64.const 9)
        i64.eqz
        local.tee 0
        i32.extend8_s
        local.set 0
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_2155356703
        drop
    end
    (i32.const -478991)
    f32.reinterpret_i32
    drop
    (i64.const 2229909820498880140)
    i64.popcnt
)

)