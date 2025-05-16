(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1345006487 i64 (i64.const 3112101518705443998))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    global.get $global_1345006487
    f32.convert_i64_s
    f32.ceil
    i64.trunc_f32_u
    f64.convert_i64_u
    f64.sqrt
    f64.sqrt
    f32.demote_f64
    i32.reinterpret_f32
    (br_table 0)
    ;;FLAG_1
    br 0
)

)