(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i32 i64 i64)
    (local $temp i32)
    local.get 0
    i64.extend_i32_s
    local.tee 1
    f64.convert_i64_s
    ;;INSPECT
    nop
    f64.sqrt
    f64.neg
    f64.neg
    f64.trunc
    local.get 0
    i64.extend_i32_s
    f64.convert_i64_s
    f64.neg
    f64.sub
    i64.reinterpret_f64
    local.tee 2
    i64.extend32_s
    i64.popcnt
    f64.reinterpret_i64
    f64.abs
    f64.trunc
    i64.trunc_f64_s
    f64.convert_i64_s
    i64.trunc_f64_s
    i64.eqz
    i64.extend_i32_u
    f64.convert_i64_s
    drop
)

)