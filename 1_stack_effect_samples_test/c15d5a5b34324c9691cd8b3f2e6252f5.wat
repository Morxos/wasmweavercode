(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1207007644 (mut f32) (f32.const 3.769686336068387e+18))
(func $run (export "run")
    (local f64)
    (local $temp i32)
    local.get 0
    f64.trunc
    local.get 0
    local.get 0
    i64.trunc_f64_u
    f64.convert_i64_s
    i64.trunc_f64_u
    i64.extend16_s
    drop
    f64.abs
    f64.gt
    i32.eqz
    f32.convert_i32_s
    global.get $global_1207007644
    f64.promote_f32
    f64.ceil
    f64.neg
    f64.floor
    drop
    f32.floor
    f32.trunc
    f32.trunc
    f32.floor
    f32.floor
    ;;INSPECT
    f32.trunc
    f32.floor
    f32.sqrt
    f32.trunc
    f32.trunc
    f32.trunc
    global.set $global_1207007644
)

)