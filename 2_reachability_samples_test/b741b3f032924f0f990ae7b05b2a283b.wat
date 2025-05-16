(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    ;;FLAG_0
    (i64.const -267)
    (f64.const 2.8770270031447554e-124)
    f64.neg
    f64.floor
    f64.abs
    i64.trunc_f64_u
    i64.ge_s
    drop
    local.get 0
    (br_table 0)
    ;;FLAG_1
    (f64.const 4.3949664255724713e-14)
    f64.nearest
    f64.neg
    f64.nearest
    f64.sqrt
    f64.nearest
    f64.nearest
    f64.trunc
    nop
    f64.neg
    (f64.const 3.4426196122374224e+56)
    f64.nearest
    f64.le
    (br_table 0)
    ;;FLAG_2
)

)