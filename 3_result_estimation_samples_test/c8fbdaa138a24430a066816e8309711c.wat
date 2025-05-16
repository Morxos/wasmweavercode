(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_3859168113 (mut i64) (i64.const -369325540703230730))
(func $run (export "run") (result f32)
    (local f32 i64 f64)
    (local $temp i32)
    (i64.const 89422067)
    drop
    (i64.const 3182193)
    global.set $global_3859168113
    local.get 0
    (i64.const 2)
    i32.const 9
    loop $b_loop_1280916360 (param i32)
        (i32.const -5215)
        i64.extend_i32_s
        local.set 1
        nop
        (i32.const -4)
        i64.extend_i32_u
        f64.reinterpret_i64
        local.set 2
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_1280916360
        drop
    end
    (i64.const -2199875)
    i64.add
    f32.convert_i64_s
    f32.min
)

)