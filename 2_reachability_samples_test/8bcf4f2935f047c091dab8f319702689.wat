(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f64 f64)
    (local $temp i32)
    ;;FLAG_0
    (f32.const -1.6168104020502104e+29)
    nop
    drop
    nop
    (i32.const -713)
    (br_table 0)
    ;;FLAG_1
    (i64.const -404475229)
    f64.convert_i64_s
    f64.nearest
    f64.nearest
    local.set 0
    local.get 0
    local.tee 1
    drop
    br 0
)

)