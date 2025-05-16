(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_3110165482 (mut i32) (i32.const -1296778740))
(global $global_1825215288 (mut i64) (i64.const -3870396509621053218))
(func $run (export "run") (result f64)
    (local i32 i64)
    (local $temp i32)
    i32.const 9
    loop $b_loop_3109709190 (param i32)
        (f32.const 1.1094763237611557e-35)
        nop
        (i32.const -9849)
        i64.extend_i32_u
        i64.extend16_s
        f64.reinterpret_i64
        drop
        drop
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_3109709190
        drop
    end
    (i32.const -4369845)
    global.set $global_3110165482
    (i32.const -17098898)
    (i64.const 936)
    global.set $global_1825215288
    local.tee 0
    drop
    (i64.const 11)
    f64.convert_i64_u
    global.get $global_3110165482
    i64.extend_i32_u
    f64.reinterpret_i64
    f32.demote_f64
    i64.trunc_f32_s
    i64.ctz
    local.set 1
)

)