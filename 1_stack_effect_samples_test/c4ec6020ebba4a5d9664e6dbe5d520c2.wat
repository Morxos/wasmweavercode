(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f64 i32)
    (local $temp i32)
    local.get 0
    ;;INSPECT
    f64.nearest
    i64.reinterpret_f64
    i64.ctz
    i64.eqz
    i32.clz
    i64.extend_i32_s
    f32.convert_i64_s
    f32.trunc
    f32.sqrt
    i32.reinterpret_f32
    local.tee 1
    nop
    f32.convert_i32_u
    f64.promote_f32
    i32.trunc_f64_s
    f64.convert_i32_u
    i32.trunc_f64_u
    f32.convert_i32_u
    i32.reinterpret_f32
    drop
)

)