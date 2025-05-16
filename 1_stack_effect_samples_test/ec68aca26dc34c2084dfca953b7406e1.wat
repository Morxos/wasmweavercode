(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_163650441 (mut f64) (f64.const 2.8775916041853276e+18))
(func $run (export "run")
    (local f64 i32 f32 f64 i64)
    (local $temp i32)
    local.get 0
    f64.trunc
    ;;INSPECT
    f64.trunc
    f64.trunc
    i32.trunc_f64_u
    local.tee 1
    i32.popcnt
    f32.convert_i32_u
    local.tee 2
    f32.ceil
    f32.ceil
    nop
    f32.trunc
    i64.trunc_f32_u
    i64.extend32_s
    i64.eqz
    i64.extend_i32_s
    f64.convert_i64_s
    i64.trunc_f64_u
    f64.reinterpret_i64
    f64.abs
    local.tee 3
    f64.nearest
    i64.trunc_f64_s
    local.tee 4
    drop
    local.get 0
    f64.trunc
    i64.reinterpret_f64
    i64.eqz
    f64.convert_i32_s
    f64.sqrt
    f64.sqrt
    f64.sqrt
    f64.floor
    f64.nearest
    i64.trunc_f64_s
    i64.popcnt
    f64.convert_i64_s
    global.set $global_163650441
)

)