(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_1561056628 (mut i32) (i32.const 1805576068))
(global $global_2870323182 (mut f64) (f64.const 2.4288044243732767e+18))
(global $global_1559871364 (mut f32) (f32.const -2.3129568494454047e+18))
(func $run (export "run") (result f64)
    (local f32)
    (local $temp i32)
    (i32.const 842471426)
    i32.extend8_s
    i64.extend_i32_s
    drop
    global.get $global_1561056628
    i32.extend8_s
    f64.convert_i32_u
    global.set $global_2870323182
    local.get 0
    i32.trunc_f32_u
    i32.const 9
    loop $b_loop_2219853318 (param i32)
        (i64.const -47505160)
        i64.popcnt
        i32.wrap_i64
        i64.extend_i32_u
        f32.convert_i64_s
        drop
        (f32.const 0.0028936101589351892)
        global.set $global_1559871364
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_2219853318
        drop
    end
    i64.extend_i32_u
    i64.clz
    i64.eqz
    i32.eqz
    f64.convert_i32_u
)

)