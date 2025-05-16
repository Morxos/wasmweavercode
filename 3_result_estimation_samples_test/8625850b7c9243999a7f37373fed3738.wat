(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_199310667 (mut f32) (f32.const 1.567908803888808e+18))
(func $run (export "run") (result f64)
    (local f64 i64 i32)
    (local $temp i32)
    local.get 0
    i32.const 9
    loop $b_loop_1021113067 (param i32)
        (i64.const 3990604)
        i64.extend16_s
        drop
        (i64.const -362001)
        f32.convert_i64_s
        f32.nearest
        global.set $global_199310667
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_1021113067
        drop
    end
    drop
    (i32.const 8)
    i32.const 9
    loop $b_loop_338216499 (param i32)
        (i32.const -90138021)
        (f64.const 1.9046687433416144e-130)
        i64.trunc_f64_u
        local.set 1
        global.get $global_199310667
        local.get 0
        drop
        drop
        local.tee 2
        local.set 2
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_338216499
        drop
    end
    i64.extend_i32_u
    i64.clz
    i64.popcnt
    (i64.const 5279573578657483331)
    i64.le_s
    local.set 2
    (f64.const 1.885353242797053e+185)
)

)