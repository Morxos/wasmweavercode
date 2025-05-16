(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_1611925680 (mut i64) (i64.const -5842093630944698706))
(func $run (export "run") (result f32)
    (local f32 i32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_859375066 (param i32)
        (f32.const -5674638.0)
        local.set 0
        (f64.const 0.0034138869735665907)
        local.get 0
        f64.promote_f32
        f64.mul
        i64.trunc_f64_s
        i64.extend32_s
        i64.eqz
        i64.extend_i32_u
        i64.ctz
        global.set $global_1611925680
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_859375066
        drop
    end
    (f64.const 6.566886399613219e-41)
    (f64.const 3.8279698396677925e-193)
    f64.eq
    local.tee 1
    i32.ctz
    f32.convert_i32_s
)

)