(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_1921578108 (mut i32) (i32.const -914052691))
(func $run (export "run") (result i64)
    (local i32 i64 f32)
    (local $temp i32)
    global.get $global_1921578108
    local.set 0
    i32.const 9
    loop $b_loop_4251125800 (param i32)
        (f64.const 3.4157703586487063e+62)
        f64.floor
        f64.floor
        drop
        global.get $global_1921578108
        f32.convert_i32_u
        i64.trunc_f32_u
        i64.clz
        nop
        i64.popcnt
        local.set 1
        (f32.const 4.900846980841755e-13)
        local.set 2
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_4251125800
        drop
    end
    nop
    (f32.const 5.976731154259951e-13)
    i64.trunc_f32_s
)

)