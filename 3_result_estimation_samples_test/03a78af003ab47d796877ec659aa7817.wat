(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i32)
    (local f32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_3179202994 (param i32)
        (f32.const 9.33712916012519e-12)
        f32.neg
        i64.trunc_f32_s
        drop
        nop
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_3179202994
        drop
    end
    (f32.const -2.8215402274122487e-15)
    local.set 0
    (i32.const -1659875261)
    local.get 0
    f32.floor
    f32.ceil
    f32.abs
    drop
)

)