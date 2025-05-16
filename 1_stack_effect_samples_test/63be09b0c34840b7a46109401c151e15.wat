(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32 i32 f32)
    (local $temp i32)
    local.get 0
    i32.trunc_f32_s
    ;;INSPECT
    (f32.const -405047695376384.0)
    f32.neg
    f64.promote_f32
    f64.floor
    f64.floor
    f64.trunc
    f64.trunc
    f64.floor
    f64.sqrt
    f64.floor
    f64.trunc
    f32.demote_f64
    f64.promote_f32
    f64.sqrt
    nop
    f64.abs
    i32.trunc_f64_u
    local.tee 1
    i32.div_s
    i32.extend8_s
    f32.convert_i32_s
    i32.reinterpret_f32
    f32.convert_i32_s
    f32.trunc
    (f32.const -2.830065828927329e+28)
    f32.neg
    local.tee 2
    f32.lt
    drop
)

)