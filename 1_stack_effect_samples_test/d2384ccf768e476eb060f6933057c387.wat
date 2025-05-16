(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    (f32.const 3.5208211346393625e-11)
    i64.trunc_f32_u
    i64.ctz
    f32.convert_i64_s
    f32.abs
    f32.abs
    i32.reinterpret_f32
    f32.convert_i32_u
    f64.promote_f32
    f64.floor
    f32.demote_f64
    i32.trunc_f32_u
    local.tee 0
    i32.extend16_s
    i64.extend_i32_s
    i32.wrap_i64
    f32.reinterpret_i32
    i32.reinterpret_f32
    (f32.const 1.05102651774369e-14)
    i32.reinterpret_f32
    i32.div_s
    i32.extend16_s
    ;;INSPECT
    f32.reinterpret_i32
    f32.floor
    i32.reinterpret_f32
    i32.extend8_s
    f32.convert_i32_u
    f32.floor
    i32.reinterpret_f32
    f32.convert_i32_u
    f32.trunc
    drop
)

)