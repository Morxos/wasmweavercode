(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_4040753591 (mut f64) (f64.const -3.9761908178126623e+18))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    local.get 0
    f32.convert_i32_u
    f32.nearest
    i32.reinterpret_f32
    (f32.const -0.00017878710059449077)
    i32.reinterpret_f32
    f64.convert_i32_s
    global.set $global_4040753591
    i32.extend8_s
    i32.extend8_s
    i32.extend8_s
    i64.extend_i32_s
    f32.convert_i64_u
    f32.ceil
    f32.sqrt
    f32.sqrt
    ;;INSPECT
    f32.neg
    f32.neg
    i64.trunc_f32_s
    i64.eqz
    i32.extend16_s
    f64.convert_i32_s
    i64.trunc_f64_u
    i64.popcnt
    i64.eqz
    i32.extend16_s
    i32.extend8_s
    f32.convert_i32_u
    f32.neg
    i32.trunc_f32_s
    i64.extend_i32_s
    i64.eqz
    i64.extend_i32_s
    i64.popcnt
    i64.ctz
    i64.extend32_s
    f64.convert_i64_u
    global.set $global_4040753591
)

)