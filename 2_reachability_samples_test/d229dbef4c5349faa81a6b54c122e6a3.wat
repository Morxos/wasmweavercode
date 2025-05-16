(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    (f32.const -76108.3671875)
    f64.promote_f32
    f64.nearest
    f64.nearest
    i32.trunc_f64_s
    (br_table 0)
    ;;FLAG_1
    br 0
)

)