(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f64 f32)
    (local $temp i32)
    (f32.const 2.417956746466288e-29)
    f64.promote_f32
    f32.demote_f64
    f32.floor
    f32.floor
    f32.abs
    i64.trunc_f32_u
    ;;INSPECT
    i64.popcnt
    (f32.const 0.0)
    i64.trunc_f32_s
    i64.eqz
    i32.extend16_s
    f32.convert_i32_u
    f32.abs
    f32.sqrt
    f32.abs
    f32.abs
    f32.ceil
    local.get 0
    f64.nearest
    i64.reinterpret_f64
    i64.ctz
    nop
    f32.convert_i64_s
    f32.max
    local.tee 1
    i64.trunc_f32_u
    i64.sub
    f64.convert_i64_s
    i64.reinterpret_f64
    drop
    nop
)

)