(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_59718016 (mut i64) (i64.const -2527201115259143633))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    nop
    global.get $global_59718016
    (f32.const 2.0781675762547687e+20)
    f64.promote_f32
    f64.neg
    f64.neg
    i64.reinterpret_f64
    i64.gt_s
    (br_table 0)
    ;;FLAG_1
    return
)

)