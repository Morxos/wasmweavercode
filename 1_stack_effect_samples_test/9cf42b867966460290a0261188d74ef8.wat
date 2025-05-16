(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i32 i64 f32)
    (local $temp i32)
    local.get 0
    i64.extend_i32_s
    i64.extend32_s
    ;;INSPECT
    i64.eqz
    f64.convert_i32_s
    f64.trunc
    i64.reinterpret_f64
    local.tee 1
    i64.eqz
    i32.extend8_s
    i32.clz
    f64.convert_i32_u
    f64.nearest
    i64.trunc_f64_u
    i64.eqz
    i32.clz
    (i32.const 51351092)
    i32.div_s
    f32.reinterpret_i32
    local.get 0
    f32.reinterpret_i32
    f32.min
    f32.floor
    local.tee 2
    i32.reinterpret_f32
    i32.clz
    drop
)

)