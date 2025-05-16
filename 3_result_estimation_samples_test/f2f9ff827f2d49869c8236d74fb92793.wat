(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_2580329840 i64 (i64.const -4560919628982007400))
(global $global_567840327 (mut f64) (f64.const -5.220119220507519e+18))
(func $run (export "run") (result i32)
    (local i64 f32)
    (local $temp i32)
    (f32.const -2.0335325834546902e-22)
    f64.promote_f32
    (i32.const -310350456)
    (i64.const 235983)
    i64.extend32_s
    local.set 0
    i32.clz
    f32.convert_i32_u
    drop
    drop
    global.get $global_2580329840
    local.set 0
    (f64.const 4.870540456769757e-258)
    global.set $global_567840327
    global.get $global_2580329840
    f32.convert_i64_s
    local.set 1
    local.get 0
    f32.convert_i64_s
    (f32.const 1.8637597224271698e-18)
    f32.min
    f32.neg
    f32.trunc
    f32.abs
    (f32.const -1.4110573182594283e-18)
    local.set 1
    drop
    (f64.const 2.591101890319994e-26)
    i32.trunc_f64_s
    br 0
)

)