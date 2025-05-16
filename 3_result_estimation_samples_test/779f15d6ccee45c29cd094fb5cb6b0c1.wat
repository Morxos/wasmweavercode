(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_4184838375 (mut i32) (i32.const 489789112))
(func $run (export "run") (result i64)
    (local f32)
    (local $temp i32)
    (i32.const -566626)
    i32.const 9
    loop $b_loop_1460660275 (param i32)
        (i32.const 2)
        (f32.const 1.930122119992478e-35)
        f32.nearest
        f32.nearest
        local.set 0
        global.set $global_4184838375
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_1460660275
        drop
    end
    i64.extend_i32_u
    i64.clz
    f64.convert_i64_u
    drop
    (i64.const 28347)
)

)