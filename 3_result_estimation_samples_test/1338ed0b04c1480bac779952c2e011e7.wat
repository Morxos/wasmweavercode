(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result f64)
    (local i32)
    (local $temp i32)
    (i64.const 757732)
    f32.convert_i64_s
    i32.trunc_f32_s
    i32.extend8_s
    f32.reinterpret_i32
    drop
    (i32.const -44382017)
    local.tee 0
    f64.convert_i32_s
)

)