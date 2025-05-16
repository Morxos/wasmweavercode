(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_4241816776 (mut i64) (i64.const 4004551357463502819))
(func $run (export "run") (result f32)
    (local $temp i32)
    global.get $global_4241816776
    f32.convert_i64_u
    i64.trunc_f32_u
    global.set $global_4241816776
    (f32.const -1508155457536.0)
)

)