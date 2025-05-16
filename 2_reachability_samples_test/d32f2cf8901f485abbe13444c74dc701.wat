(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    (i32.const -57045)
    (i32.const 60)
    f64.convert_i32_s
    i64.trunc_f64_u
    i64.ctz
    i64.ctz
    i32.wrap_i64
    i32.clz
    i32.popcnt
    i32.shr_u
    (br_table 0)
    ;;FLAG_1
    nop
    return
)

)