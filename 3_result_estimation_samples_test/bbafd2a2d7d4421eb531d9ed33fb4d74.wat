(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_1439856661 (mut f64) (f64.const 8.803485599746486e+18))
(func $run (export "run") (result f64)
    (local f32 f64)
    (local $temp i32)
    i32.const 9
    loop $b_loop_2352300590 (param i32)
        (f64.const 1.333832316954903e-13)
        f64.floor
        i32.trunc_f64_u
        f32.reinterpret_i32
        f64.promote_f32
        f64.ceil
        f64.ceil
        i32.trunc_f64_s
        f64.convert_i32_s
        local.get 0
        f32.sqrt
        f64.promote_f32
        f64.copysign
        local.set 1
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_2352300590
        drop
    end
    global.get $global_1439856661
    global.set $global_1439856661
    (i32.const -96344083)
    i32.ctz
    i32.clz
    f32.convert_i32_s
    i32.trunc_f32_u
    f64.convert_i32_s
)

)