(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_854711244 f64 (f64.const -1.5655346801996042e+18))
(global $global_231283985 (mut f64) (f64.const 3.8228541176382956e+18))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    ;;FLAG_0
    (f32.const -5.5733485799383505e-19)
    drop
    global.get $global_854711244
    f64.neg
    global.set $global_231283985
    (i32.const -682)
    i32.clz
    (br_table 0)
    ;;FLAG_1
    (f32.const -1.0994360671263436e-29)
    i64.trunc_f32_s
    local.set 0
    return
)

)