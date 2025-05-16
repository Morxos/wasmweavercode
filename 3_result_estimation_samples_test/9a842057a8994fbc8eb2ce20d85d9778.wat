(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_627442298 (mut i64) (i64.const -4442944549237620410))
(func $run (export "run") (result f64)
    (local $temp i32)
    (f32.const 9.80465038274923e-19)
    f32.abs
    i64.trunc_f32_u
    global.set $global_627442298
    nop
    (i64.const 965339)
    f64.reinterpret_i64
)

)