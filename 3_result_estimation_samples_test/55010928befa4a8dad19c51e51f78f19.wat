(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i64)
    (local i64 f32 f32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_2386337921 (param i32)
        (i64.const -4573196158564667116)
        (i64.const 5591)
        i64.le_u
        drop
        (i64.const 4802)
        local.set 0
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_2386337921
        drop
    end
    (f32.const -85.52458190917969)
    local.tee 1
    f32.abs
    i32.trunc_f32_u
    i32.eqz
    f32.reinterpret_i32
    local.tee 2
    i32.reinterpret_f32
    i64.extend_i32_s
)

)