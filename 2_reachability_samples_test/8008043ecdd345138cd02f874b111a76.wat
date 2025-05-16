(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_655854494 f64 (f64.const 6.167502786454258e+18))
(global $global_4001815652 (mut f32) (f32.const -5.403099094937764e+18))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    ;;FLAG_0
    global.get $global_655854494
    (f32.const 9.787811699664035e-20)
    i64.trunc_f32_u
    (f32.const -8.889501540650849e-35)
    global.set $global_4001815652
    f32.convert_i64_s
    f32.floor
    i32.reinterpret_f32
    i64.extend_i32_u
    local.tee 0
    i64.clz
    drop
    f64.sqrt
    i32.trunc_f64_u
    (br_table 0)
    ;;FLAG_1
    (i64.const 788)
    i64.ctz
    i32.wrap_i64
    i64.extend_i32_s
    f64.reinterpret_i64
    i64.trunc_f64_s
    f32.convert_i64_u
    f32.nearest
    i64.trunc_f32_u
    i64.eqz
    (br_table 0)
    ;;FLAG_2
)

)