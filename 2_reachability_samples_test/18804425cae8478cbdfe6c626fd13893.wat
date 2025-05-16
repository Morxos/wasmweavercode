(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3241860203 f32 (f32.const 3.3267560482781266e+18))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    ;;FLAG_0
    global.get $global_3241860203
    i64.trunc_f32_s
    i64.ctz
    f32.convert_i64_s
    i64.trunc_f32_u
    f32.convert_i64_u
    i32.reinterpret_f32
    f32.convert_i32_s
    i32.reinterpret_f32
    i64.extend_i32_u
    i64.eqz
    (br_table 0)
    ;;FLAG_1
    global.get $global_3241860203
    i64.trunc_f32_s
    local.set 0
    br 0
)

)