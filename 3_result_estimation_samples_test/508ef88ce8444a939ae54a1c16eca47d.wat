(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result f32)
    (local $temp i32)
    (i64.const 625849)
    i64.ctz
    f64.reinterpret_i64
    i32.trunc_f64_s
    f32.convert_i32_s
)

)