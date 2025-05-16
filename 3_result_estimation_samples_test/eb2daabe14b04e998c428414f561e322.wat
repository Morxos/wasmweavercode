(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_3226432169 (mut i64) (i64.const 8790169404482519664))
(func $run (export "run") (result f32)
    (local $temp i32)
    global.get $global_3226432169
    f64.convert_i64_s
    i64.trunc_f64_s
    i64.extend8_s
    f32.convert_i64_u
    i32.trunc_f32_s
    i64.extend_i32_u
    f32.convert_i64_s
    br 0
)

)