(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result f64)
    (local f64)
    (local $temp i32)
    (f64.const 1.1442258257628045e-84)
    local.set 0
    (i64.const -8589353141418060115)
    f32.convert_i64_u
    f64.promote_f32
    f64.nearest
)

)