(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i64 f32)
    (local $temp i32)
    local.get 0
    f64.convert_i64_s
    i64.reinterpret_f64
    i64.extend32_s
    i64.popcnt
    f64.convert_i64_s
    f64.abs
    f64.trunc
    ;;INSPECT
    f64.abs
    i64.trunc_f64_u
    i64.extend32_s
    f64.convert_i64_s
    f64.trunc
    f64.abs
    f64.floor
    f64.trunc
    f64.trunc
    f64.trunc
    f64.neg
    f64.sqrt
    f64.sqrt
    i64.trunc_f64_s
    i64.extend32_s
    f64.convert_i64_s
    drop
    (f32.const 7.886150381343489e+28)
    local.set 1
)

)