(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f64 i32)
    (local $temp i32)
    ;;FLAG_0
    (f32.const -2.295794865955481e+24)
    nop
    f64.promote_f32
    f64.trunc
    i64.reinterpret_f64
    f64.convert_i64_u
    f64.sqrt
    f64.nearest
    f64.ceil
    local.get 0
    f64.le
    (br_table 0)
    ;;FLAG_1
    (f32.const -1245003644928000.0)
    f64.promote_f32
    (f64.const 6.422079189388745e+112)
    f64.le
    local.tee 1
    (br_table 0)
    ;;FLAG_2
    br 0
)

)