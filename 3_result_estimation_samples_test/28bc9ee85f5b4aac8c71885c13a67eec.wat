(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_4024840355 f32 (f32.const 7.393958960828514e+18))
(global $global_1425316180 (mut f32) (f32.const 7.338730491765326e+18))
(global $global_907704353 (mut f64) (f64.const 2.2413018780056637e+18))
(func $run (export "run") (result i32)
    (local i64 i64)
    (local $temp i32)
    (i64.const -14)
    f64.convert_i64_s
    i32.trunc_f64_s
    global.get $global_4024840355
    f64.promote_f32
    f64.floor
    f64.ceil
    i64.trunc_f64_s
    (f32.const 3.064175569593597e-23)
    global.set $global_1425316180
    local.tee 0
    (i32.const 739849448)
    (f64.const 1.1048666089787419e-89)
    (i64.const 6)
    local.tee 1
    local.get 0
    drop
    i64.clz
    f64.convert_i64_u
    global.set $global_907704353
    i32.trunc_f64_u
    i32.lt_s
    f32.convert_i32_u
    nop
    nop
    f32.floor
    i64.trunc_f32_s
    i64.clz
    i64.gt_s
    i32.and
    return
)

)