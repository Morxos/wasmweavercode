(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result f64)
    (local $temp i32)
    (i64.const -504067776)
    f32.convert_i64_u
    drop
    (f64.const 1.3315039856955441e+108)
    i64.reinterpret_f64
    i32.wrap_i64
    i64.extend_i32_u
    f64.reinterpret_i64
)

)