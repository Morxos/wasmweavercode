(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    ;;FLAG_0
    (f64.const 2.7878194750306514e-133)
    i64.trunc_f64_s
    f32.convert_i64_s
    i32.trunc_f32_u
    f32.convert_i32_u
    f32.nearest
    local.get 0
    f32.le
    (br_table 0)
    ;;FLAG_1
    (i32.const -872)
    i32.eqz
    (br_table 0)
    ;;FLAG_2
    br 0
)

)