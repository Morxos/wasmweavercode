(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_1647378397 (mut f32) (f32.const -7.573822020702437e+18))
(func $run (export "run") (result f32)
    (local $temp i32)
    (i64.const -42386)
    f32.convert_i64_s
    global.set $global_1647378397
    (i32.const -3121)
    i64.extend_i32_u
    i32.wrap_i64
    f32.reinterpret_i32
)

)