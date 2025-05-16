(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f64 f64 i64)
    (local $temp i32)
    local.get 0
    f64.trunc
    f64.trunc
    i64.reinterpret_f64
    i64.extend32_s
    i64.clz
    i64.clz
    i64.popcnt
    i64.ctz
    f64.convert_i64_s
    f64.trunc
    f64.trunc
    local.tee 1
    i64.reinterpret_f64
    local.tee 2
    i64.eqz
    i32.clz
    local.get 0
    f64.nearest
    i64.trunc_f64_u
    i64.clz
    ;;INSPECT
    f64.convert_i64_s
    i64.trunc_f64_s
    i64.popcnt
    drop
    i32.clz
    i32.clz
    i32.clz
    i32.clz
    i32.clz
    drop
)

)