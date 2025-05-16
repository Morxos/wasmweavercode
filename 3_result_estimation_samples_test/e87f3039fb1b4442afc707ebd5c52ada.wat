(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_3979513817 (mut i64) (i64.const 420210138071633114))
(func $run (export "run") (result f64)
    (local $temp i32)
    (i64.const 0)
    i64.extend8_s
    global.set $global_3979513817
    (i64.const 299004820)
    f64.reinterpret_i64
)

)