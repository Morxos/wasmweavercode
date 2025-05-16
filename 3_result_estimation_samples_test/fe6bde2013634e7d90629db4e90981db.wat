(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_3440638890 (mut f32) (f32.const 8.684221012616675e+18))
(global $global_3531225304 (mut i64) (i64.const -7677278299153710624))
(global $global_395808078 (mut f64) (f64.const -4.705865816228127e+18))
(func $run (export "run") (result f64)
    (local i32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_3421864209 (param i32)
        global.get $global_3440638890
        f32.sqrt
        i64.trunc_f32_s
        global.set $global_3531225304
        (i64.const 96)
        drop
        (f32.const 7.577317807971788e+19)
        i32.reinterpret_f32
        f32.convert_i32_s
        i32.reinterpret_f32
        local.set 0
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_3421864209
        drop
    end
    (i64.const 948)
    local.get 0
    f64.convert_i32_u
    global.set $global_395808078
    i64.extend32_s
    i64.extend16_s
    f64.convert_i64_s
)

)