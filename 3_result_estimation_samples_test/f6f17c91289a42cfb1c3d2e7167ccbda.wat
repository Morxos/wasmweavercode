(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result f64)
    (local $temp i32)
    (f32.const -109483336.0)
    (f64.const 1.1268594496283129e+158)
    drop
    f32.abs
    i64.trunc_f32_u
    i64.clz
    f64.reinterpret_i64
)

)