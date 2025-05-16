(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_506624273 (mut f32) (f32.const 3.510435238134153e+18))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    (i32.const 82)
    i32.ctz
    i64.extend_i32_s
    f32.convert_i64_u
    i64.trunc_f32_u
    i64.clz
    f32.convert_i64_u
    f32.sqrt
    local.tee 0
    f32.ceil
    f32.nearest
    i64.trunc_f32_u
    nop
    (f32.const 0.0)
    f32.sqrt
    i32.reinterpret_f32
    f32.reinterpret_i32
    f32.sqrt
    f32.trunc
    i32.reinterpret_f32
    i64.extend_i32_s
    f64.reinterpret_i64
    i64.trunc_f64_s
    f64.convert_i64_s
    f64.abs
    i64.trunc_f64_s
    i64.clz
    i64.popcnt
    (f32.const 690529.1875)
    f32.ceil
    global.set $global_506624273
    i64.popcnt
    i64.shl
    f64.convert_i64_s
    ;;INSPECT
    drop
)

)