(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_375993608 (mut i64) (i64.const 4883521596150904600))
(func $run (export "run") (result i32)
    (local i64 f64 f32 i32)
    (local $temp i32)
    nop
    i32.const 9
    loop $b_loop_1687504041 (param i32)
        global.get $global_375993608
        local.tee 0
        (i32.const -2)
        f32.convert_i32_u
        block (param i64 f32)
            (i64.const 664616950)
            f64.reinterpret_i64
            f64.sqrt
            local.set 1
            local.set 2
            i64.clz
            (i32.const 923239717)
            local.set 3
            local.set 0
        end

        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_1687504041
        drop
    end
    (f64.const 6.147900152982994e-95)
    global.get $global_375993608
    drop
    nop
    local.set 1
    (f32.const 0.4452272653579712)
    i32.trunc_f32_s
)

)