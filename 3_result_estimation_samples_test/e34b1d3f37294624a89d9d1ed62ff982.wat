(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result f64)
    (local $temp i32)
    (i64.const 710149)
    i32.wrap_i64
    i32.extend8_s
    drop
    (f64.const 8.047007017495684e-159)
)

)