(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result f64)
    (local $temp i32)
    nop
    (i32.const 993096)
    i32.clz
    f64.convert_i32_s
    (f64.const 1.7080515772325734e-26)
    i64.trunc_f64_s
    f64.convert_i64_s
    f64.copysign
    f64.floor
    f64.neg
)

)