(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_367650211 f64 (f64.const -4.931170189364812e+18))
(func $run (export "run") (result f64)
    (local i64 i32)
    (local $temp i32)
    (f32.const -9.35873600838022e-08)
    (i64.const -30)
    i64.eqz
    i32.extend8_s
    i32.extend8_s
    i32.ctz
    i32.clz
    (i64.const -22779)
    local.set 0
    i32.clz
    i64.extend_i32_u
    f64.convert_i64_u
    i32.trunc_f64_s
    f32.convert_i32_s
    f32.abs
    f32.eq
    local.set 1
    (i32.const -3107)
    i32.eqz
    f32.reinterpret_i32
    drop
    (i32.const -7)
    i32.ctz
    drop
    global.get $global_367650211
    f64.floor
)

)