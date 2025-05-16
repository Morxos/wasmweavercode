(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i32)
    (local i64)
    (local $temp i32)
    (i32.const 61204)
    (i64.const 45236097)
    local.set 0
    i32.extend16_s
    (f32.const 7.569899431808991e-19)
    (i64.const 68543)
    f64.reinterpret_i64
    f64.abs
    f64.nearest
    f32.demote_f64
    f32.min
    i32.trunc_f32_u
    i32.shl
    (i32.const -87)
    i32.shl
)

)