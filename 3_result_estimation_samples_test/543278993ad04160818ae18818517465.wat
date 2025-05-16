(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_2989127455 (mut i32) (i32.const -170705313))
(global $global_435069628 (mut f32) (f32.const -1.4162556389708268e+18))
(func $run (export "run") (result f64)
    (local i64 f32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_4258329309 (param i32)
        (i32.const 470)
        i64.extend_i32_s
        i64.extend16_s
        local.set 0
        (i64.const -483538)
        i32.wrap_i64
        i32.extend16_s
        global.set $global_2989127455
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_4258329309
        drop
    end
    (i64.const -2247)
    f32.convert_i64_s
    local.tee 1
    global.set $global_435069628
    (i64.const 2)
    (f32.const -0.00014201570593286306)
    drop
    f64.reinterpret_i64
)

)