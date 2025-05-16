(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result f64)
    (local f64)
    (local $temp i32)
    local.get 0
    local.set 0
    (i64.const 935305)
    i64.eqz
    f32.convert_i32_s
    f32.abs
    f32.ceil
    i64.trunc_f32_s
    f64.convert_i64_s
)

)