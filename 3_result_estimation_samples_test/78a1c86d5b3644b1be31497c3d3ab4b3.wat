(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result f64)
    (local $temp i32)
    (i64.const -22)
    i64.extend16_s
    i64.popcnt
    i64.ctz
    i64.eqz
    i32.extend16_s
    f64.convert_i32_u
)

)