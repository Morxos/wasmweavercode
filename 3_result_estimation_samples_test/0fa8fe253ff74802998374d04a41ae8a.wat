(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_2657949641 (mut i32) (i32.const 87791329))
(func $run (export "run") (result f64)
    (local f32)
    (local $temp i32)
    (f32.const -2.9202089176953104e-37)
    global.get $global_2657949641
    i64.extend_i32_u
    i64.extend8_s
    i64.popcnt
    f32.convert_i64_s
    i32.reinterpret_f32
    f32.reinterpret_i32
    i64.trunc_f32_s
    (f32.const 1.996633545786608e-05)
    local.set 0
    i32.wrap_i64
    i32.extend16_s
    i64.extend_i32_s
    i64.extend16_s
    i64.extend32_s
    i64.clz
    f32.convert_i64_s
    f32.eq
    i64.extend_i32_s
    i64.ctz
    i64.extend16_s
    f32.convert_i64_s
    f64.promote_f32
)

)