(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    local.get 0
    (i32.const 18506)
    (f32.const 1.796367897435084e-31)
    f32.floor
    i32.trunc_f32_s
    i32.gt_u
    f32.convert_i32_u
    f32.min
    f32.trunc
    i32.trunc_f32_u
    i32.extend16_s
    (f32.const -1.2082175089744851e-05)
    drop
    i64.extend_i32_s
    i64.extend32_s
    f64.convert_i64_s
    f64.nearest
    f64.trunc
    i64.reinterpret_f64
    i64.extend32_s
    i64.eqz
    i64.extend_i32_s
    ;;INSPECT
    i64.extend32_s
    i64.extend8_s
    i64.extend32_s
    i64.popcnt
    i64.ctz
    drop
)

)