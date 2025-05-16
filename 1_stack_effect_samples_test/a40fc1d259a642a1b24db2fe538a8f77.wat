(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2892052032 (mut f64) (f64.const 2.1748476342789427e+18))
(func $run (export "run")
    (local f64 f64)
    (local $temp i32)
    local.get 0
    nop
    f32.demote_f64
    f32.abs
    i32.reinterpret_f32
    f32.convert_i32_s
    f32.ceil
    i64.trunc_f32_u
    i64.ctz
    global.get $global_2892052032
    f64.ceil
    i64.trunc_f64_s
    i64.rem_s
    f64.convert_i64_s
    f64.neg
    f64.trunc
    f64.trunc
    ;;INSPECT
    f64.trunc
    f32.demote_f64
    i32.reinterpret_f32
    global.get $global_2892052032
    f64.floor
    f64.floor
    f64.sqrt
    local.tee 1
    global.set $global_2892052032
    f64.convert_i32_s
    i64.trunc_f64_s
    i64.extend16_s
    i64.clz
    f64.convert_i64_s
    global.set $global_2892052032
)

)