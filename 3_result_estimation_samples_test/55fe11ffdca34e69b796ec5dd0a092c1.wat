(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result f32)
    (local f32 i64 i32)
    (local $temp i32)
    (f32.const -1.0783313468227818e+33)
    f32.ceil
    local.tee 0
    i32.reinterpret_f32
    i64.extend_i32_u
    f64.reinterpret_i64
    i64.reinterpret_f64
    local.tee 1
    f64.convert_i64_s
    (i32.const -870836709)
    i64.extend_i32_u
    f64.convert_i64_u
    f64.le
    i64.extend_i32_s
    (i32.const -6750918)
    local.set 2
    f32.convert_i64_s
)

)