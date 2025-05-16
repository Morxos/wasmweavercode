(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_4279605791 (mut f32) (f32.const 6.908758773142127e+18))
(func $run (export "run") (result i32)
    (local $temp i32)
    nop
    (i64.const 7989418677465971216)
    f64.reinterpret_i64
    f64.trunc
    (f32.const 64980.71875)
    nop
    i64.trunc_f32_s
    f64.reinterpret_i64
    f64.gt
    (f32.const -507705229312.0)
    global.set $global_4279605791
)

)