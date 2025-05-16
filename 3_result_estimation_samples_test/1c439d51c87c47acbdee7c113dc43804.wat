(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result f64)
    (local f64)
    (local $temp i32)
    nop
    (f32.const -1.5615960401952483e-14)
    i64.trunc_f32_s
    i64.extend8_s
    f64.convert_i64_u
    local.set 0
    (i64.const -336885196)
    i64.extend16_s
    i32.wrap_i64
    f32.convert_i32_s
    nop
    f64.promote_f32
)

)