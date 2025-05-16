(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i32 f32)
    (local $temp i32)
    local.get 0
    f32.reinterpret_i32
    f32.trunc
    local.get 0
    f64.convert_i32_s
    f64.trunc
    f64.sqrt
    i64.trunc_f64_u
    i64.ctz
    i64.ctz
    i64.eqz
    f32.reinterpret_i32
    f32.min
    f32.ceil
    f32.ceil
    (f32.const -1.7925049691065485e-24)
    ;;INSPECT
    local.tee 1
    f32.ceil
    f32.le
    local.get 0
    i32.shr_s
    i32.extend16_s
    f64.convert_i32_s
    drop
    local.get 0
    i32.eqz
    f32.convert_i32_s
    f32.ceil
    i64.trunc_f32_u
    i64.eqz
    i32.extend16_s
    i32.extend8_s
    i32.eqz
    i32.eqz
    i32.eqz
    i32.clz
    drop
)

)