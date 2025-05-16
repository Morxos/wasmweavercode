(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32 f64)
    (local $temp i32)
    ;;FLAG_0
    local.get 0
    drop
    (i64.const 0)
    nop
    f64.reinterpret_i64
    f64.trunc
    local.set 1
    (i32.const -937)
    (br_table 0)
    ;;FLAG_1
    (f64.const 4.4533961460354487e-246)
    f64.neg
    f64.floor
    (i64.const 4317)
    f64.reinterpret_i64
    i64.trunc_f64_u
    i64.extend16_s
    i32.wrap_i64
    drop
    i32.trunc_f64_s
    (br_table 0)
    ;;FLAG_2
)

)