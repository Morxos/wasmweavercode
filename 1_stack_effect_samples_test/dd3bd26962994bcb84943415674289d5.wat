(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3029425701 (mut i64) (i64.const 3099022883468324299))
(global $global_2681284025 (mut f32) (f32.const 4.158131974411649e+18))
(func $run (export "run")
    (local f64 i64)
    (local $temp i32)
    local.get 0
    f64.abs
    i64.trunc_f64_s
    i64.popcnt
    i64.eqz
    f32.convert_i32_s
    f32.ceil
    i64.trunc_f32_u
    f64.convert_i64_s
    f64.trunc
    f64.neg
    f64.nearest
    f32.demote_f64
    drop
    global.get $global_3029425701
    nop
    nop
    ;;INSPECT
    local.set 1
    global.get $global_3029425701
    i64.extend8_s
    i64.clz
    f64.convert_i64_s
    i64.reinterpret_f64
    (i32.const -9679)
    f32.reinterpret_i32
    global.set $global_2681284025
    global.set $global_3029425701
)

)