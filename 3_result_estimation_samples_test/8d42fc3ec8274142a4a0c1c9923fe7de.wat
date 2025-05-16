(module
(type $sig_function_2088977794 (func (param i32)))
(type $sig_function_1807261543 (func (param i64 f64)))
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_3916502075 f64 (f64.const 4.2205463754051584e+17))
(global $global_442971804 (mut f64) (f64.const -5.406522080734927e+18))
(global $global_4227562195 (mut i32) (i32.const 1493526828))
(func $function_2088977794 (export "function_2088977794") (param i32)
    (local i32)
    (local $temp i32)
    local.get 0
    local.tee 1
    i64.extend_i32_s
    f64.convert_i64_s
    global.set $global_442971804
)
(func $function_1807261543 (export "function_1807261543") (param i64 f64)
    (local funcref)
    (local $temp i32)
    (i32.const -591868)
    call $function_2088977794
    (f64.const 4.367900778179607e+112)
    f64.trunc
    f64.trunc
    i64.reinterpret_f64
    f64.reinterpret_i64
    (f32.const 2.372548988868739e-12)
    f32.neg
    drop
    f64.floor
    f64.abs
    global.get $global_3916502075
    f64.gt
    i32.popcnt
    global.set $global_4227562195
    ref.func $function_2088977794
    local.set 2
)
(func $run (export "run") (result i64)
    (local f64)
    (local $temp i32)
    (i64.const 35975)
    f32.convert_i64_u
    (f64.const 3.4705492116525617e+211)
    f64.trunc
    f64.floor
    drop
    i64.trunc_f32_u
    global.get $global_3916502075
    call $function_1807261543
    local.get 0
    drop
    local.get 0
    i64.trunc_f64_u
)

)