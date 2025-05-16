(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_3225101398 (mut i32) (i32.const -799261240))
(func $run (export "run") (result f32)
    (local $temp i32)
    (f32.const 4079.0400390625)
    i64.trunc_f32_s
    i32.wrap_i64
    f64.convert_i32_s
    i64.trunc_f64_s
    (i64.const 60)
    i64.le_u
    i32.ctz
    i32.clz
    i32.eqz
    global.set $global_3225101398
    (i64.const -5089)
    f32.convert_i64_s
    return
)

)