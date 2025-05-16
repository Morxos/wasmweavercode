(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f64)
    (local $temp i32)
    ;;FLAG_0
    (f64.const 1.864412345181578e+134)
    f64.ceil
    local.set 0
    (f64.const 8.388517728232635e+36)
    f64.sqrt
    f64.neg
    f32.demote_f64
    i32.reinterpret_f32
    (br_table 0)
    ;;FLAG_1
    return
)

)