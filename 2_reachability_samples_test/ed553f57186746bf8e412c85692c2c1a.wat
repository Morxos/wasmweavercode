(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_479292949 (mut f32) (f32.const 5.140912300957368e+18))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    ;;FLAG_0
    nop
    global.get $global_479292949
    i64.trunc_f32_u
    (i32.const 20)
    i32.eqz
    local.tee 0
    f64.convert_i32_u
    i64.trunc_f64_u
    i64.eq
    (br_table 0)
    ;;FLAG_1
    br 0
)

)