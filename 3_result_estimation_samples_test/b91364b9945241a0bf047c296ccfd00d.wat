(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_983494877 (mut f32) (f32.const -7.711252727837229e+18))
(func $run (export "run") (result i32)
    (local f64 i64)
    (local $temp i32)
    (i64.const -912434)
    i64.ctz
    f32.convert_i64_s
    drop
    (f32.const 7.723046566228718e-17)
    (i64.const -3336)
    i64.ctz
    i64.extend8_s
    i32.wrap_i64
    i64.extend_i32_u
    i32.wrap_i64
    drop
    i64.trunc_f32_s
    i64.extend16_s
    drop
    local.get 0
    i64.reinterpret_f64
    local.set 1
    local.get 0
    f64.trunc
    drop
    (f64.const 2.982919944549972e-290)
    (i64.const 3881791)
    i64.popcnt
    global.get $global_983494877
    global.set $global_983494877
    local.set 1
    f64.neg
    f64.floor
    i32.trunc_f64_s
)

)