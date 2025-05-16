(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_1044999124 (mut f32) (f32.const -8.269601499974205e+17))
(func $run (export "run") (result i32)
    (local f64)
    (local $temp i32)
    i32.const 9
    loop $b_loop_3860791809 (param i32)
        local.get 0
        i32.trunc_f64_s
        i32.popcnt
        i64.extend_i32_u
        drop
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_3860791809
        drop
    end
    (f32.const -5499614396416.0)
    local.get 0
    i64.trunc_f64_u
    (f64.const 1.18017634992538e-140)
    drop
    drop
    global.set $global_1044999124
    (i64.const -2160644)
    f32.convert_i64_s
    i64.trunc_f32_s
    i64.extend32_s
    i64.clz
    f64.convert_i64_u
    f64.neg
    i32.trunc_f64_s
)

)