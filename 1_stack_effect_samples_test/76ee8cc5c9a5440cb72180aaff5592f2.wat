(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f64 i64 f32)
    (local $temp i32)
    nop
    local.get 0
    f64.trunc
    f64.nearest
    f64.trunc
    local.get 0
    i64.reinterpret_f64
    f64.reinterpret_i64
    i64.trunc_f64_s
    local.tee 1
    i64.popcnt
    i64.ctz
    f64.reinterpret_i64
    f64.sub
    f64.trunc
    i64.reinterpret_f64
    i64.clz
    f64.convert_i64_s
    f64.trunc
    local.get 0
    f64.sub
    ;;INSPECT
    f32.demote_f64
    local.tee 2
    f32.trunc
    f32.nearest
    local.get 0
    f64.neg
    f64.abs
    f64.sqrt
    f64.abs
    i64.trunc_f64_u
    f64.reinterpret_i64
    local.set 0
    i64.trunc_f32_u
    i64.popcnt
    drop
)

)