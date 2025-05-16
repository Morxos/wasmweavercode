(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result f64)
    (local i64)
    (local $temp i32)
    nop
    nop
    (i64.const -370969949402212159)
    i64.popcnt
    local.get 0
    i64.shr_s
    f64.convert_i64_u
    i64.trunc_f64_u
    f64.reinterpret_i64
)

)