(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i32)
    (local f32)
    (local $temp i32)
    local.get 0
    f32.ceil
    local.set 0
    local.get 0
    (f64.const 7.692373145631603e-214)
    (f64.const 1.1021313701960212e-152)
    f64.ge
    i32.eqz
    i32.extend16_s
    (i32.const 0)
    i32.lt_s
    i32.extend16_s
    f64.convert_i32_s
    i32.trunc_f64_u
    i64.extend_i32_u
    f32.convert_i64_u
    f32.ne
)

)