(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1592461032 (mut i64) (i64.const 6389006797945615092))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    (i64.const 0)
    f64.convert_i64_u
    i64.trunc_f64_u
    nop
    (f32.const -323.62750244140625)
    (i32.const -9)
    i32.popcnt
    f32.reinterpret_i32
    f32.le
    f64.convert_i32_u
    f64.sqrt
    i64.trunc_f64_s
    i64.div_s
    i32.wrap_i64
    f64.convert_i32_u
    f64.nearest
    i64.trunc_f64_u
    global.set $global_1592461032
    br 0
)

)