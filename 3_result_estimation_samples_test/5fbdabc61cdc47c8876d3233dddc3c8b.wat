(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result f32)
    (local f32 i32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_654723043 (param i32)
        (i32.const 683105162)
        drop
        (f64.const 8.362813488088635)
        (i32.const -2043844511)
        drop
        drop
        (i32.const 9390535)
        drop
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_654723043
        drop
    end
    (i32.const -75)
    drop
    local.get 0
    i64.trunc_f32_s
    i32.wrap_i64
    i32.ctz
    local.set 1
    (f32.const 1.1079597956622519e-23)
)

)