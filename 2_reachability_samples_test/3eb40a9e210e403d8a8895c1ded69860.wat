(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_109485643 (mut i64) (i64.const 1873306080519099507))
(func $run (export "run")
    (local f64)
    (local $temp i32)
    ;;FLAG_0
    (f64.const 3.049924781615738e+116)
    local.set 0
    global.get $global_109485643
    f32.convert_i64_u
    f32.nearest
    i64.trunc_f32_u
    i64.extend16_s
    i64.eqz
    (br_table 0)
    ;;FLAG_1
    return
)

)