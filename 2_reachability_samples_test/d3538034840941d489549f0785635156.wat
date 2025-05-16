(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    ;;FLAG_0
    (i64.const -6631740241402958788)
    f32.convert_i64_u
    local.set 0
    (f64.const 1.162304801590341e-265)
    i32.trunc_f64_s
    (br_table 0)
    ;;FLAG_1
    (f32.const -217159972159488.0)
    drop
    return
)

)