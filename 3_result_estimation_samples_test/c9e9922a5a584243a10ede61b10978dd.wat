(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_1332472099 (mut f32) (f32.const -4.138842692169761e+18))
(global $global_1411250284 (mut i32) (i32.const -1937149901))
(func $run (export "run") (result f32)
    (local f32)
    (local $temp i32)
    nop
    (i64.const 15846)
    i32.wrap_i64
    i64.extend_i32_u
    f64.reinterpret_i64
    f64.nearest
    i64.trunc_f64_u
    f64.convert_i64_u
    drop
    (i64.const -583)
    (i32.const 291394)
    global.get $global_1332472099
    local.tee 0
    global.set $global_1332472099
    global.set $global_1411250284
    f32.convert_i64_s
    i64.trunc_f32_s
    f64.reinterpret_i64
    f32.demote_f64
)

)