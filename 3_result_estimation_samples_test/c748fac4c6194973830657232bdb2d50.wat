(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result f32)
    (local f32)
    (local $temp i32)
    (i64.const -6858)
    i64.eqz
    i32.extend16_s
    f64.convert_i32_s
    drop
    local.get 0
)

)