(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result f32)
    (local f32)
    (local $temp i32)
    local.get 0
    (f64.const 1.5278405479586632e-274)
    f64.floor
    i64.trunc_f64_s
    f64.convert_i64_s
    i32.trunc_f64_s
    br_if 0
)

)