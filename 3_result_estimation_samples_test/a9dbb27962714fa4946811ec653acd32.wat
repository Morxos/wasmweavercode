(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result f32)
    (local $temp i32)
    (i32.const 20)
    i32.extend16_s
    i32.extend8_s
    i64.extend_i32_s
    i32.wrap_i64
    i32.popcnt
    i64.extend_i32_u
    i64.ctz
    f32.convert_i64_s
    f32.ceil
    (f64.const 3.7115368980723655e+98)
    drop
)

)