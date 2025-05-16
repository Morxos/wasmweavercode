(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_581214140 (mut i64) (i64.const 5443497130330034121))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    (i64.const -2)
    i64.clz
    f32.convert_i64_s
    i32.reinterpret_f32
    f32.reinterpret_i32
    f32.sqrt
    nop
    f32.sqrt
    f32.ceil
    f64.promote_f32
    i64.trunc_f64_u
    i64.extend32_s
    global.set $global_581214140
    (f32.const 1.2275056268997217e+38)
    i32.reinterpret_f32
    (br_table 0)
    ;;FLAG_1
    return
)

)