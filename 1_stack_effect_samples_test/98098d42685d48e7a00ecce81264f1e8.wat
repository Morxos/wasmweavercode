(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f64 i32 i64)
    (local $temp i32)
    local.get 0
    f64.sqrt
    f32.demote_f64
    f32.sqrt
    f32.neg
    f32.abs
    f32.abs
    i32.reinterpret_f32
    i32.eqz
    i32.popcnt
    nop
    i32.popcnt
    i32.extend16_s
    local.tee 1
    i64.extend_i32_s
    i64.clz
    local.tee 2
    local.get 0
    i64.trunc_f64_u
    i64.sub
    i64.extend8_s
    i32.wrap_i64
    (i32.const 7450)
    i32.rem_s
    f32.convert_i32_s
    f32.trunc
    i64.trunc_f32_u
    i64.clz
    i64.eqz
    f32.convert_i32_s
    i32.trunc_f32_u
    f32.reinterpret_i32
    i64.trunc_f32_s
    ;;INSPECT
    i64.clz
    f64.convert_i64_s
    f64.sqrt
    drop
)

)