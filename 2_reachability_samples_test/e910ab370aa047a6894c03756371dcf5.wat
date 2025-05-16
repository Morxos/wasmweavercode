(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3981387284 (mut f32) (f32.const 4.453964648835711e+18))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    ;;FLAG_0
    global.get $global_3981387284
    local.tee 0
    (i64.const -502587412)
    f64.convert_i64_u
    i64.reinterpret_f64
    f64.reinterpret_i64
    f32.demote_f64
    f32.ne
    (br_table 0)
    ;;FLAG_1
    br 0
)

)