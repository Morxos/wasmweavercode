(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_239158162 (mut i64) (i64.const -2481788548030685814))
(func $run (export "run")
    (local i64 i64 i32)
    (local $temp i32)
    ;;FLAG_0
    (i64.const -5)
    global.set $global_239158162
    (i32.const 97069)
    (f64.const 5.07054825270513e+219)
    nop
    i64.reinterpret_f64
    i64.popcnt
    local.tee 0
    local.tee 1
    nop
    f32.convert_i64_u
    f32.floor
    f32.floor
    i32.trunc_f32_u
    local.tee 2
    global.get $global_239158162
    global.set $global_239158162
    i32.or
    br_if 0
    ;;FLAG_1
    return
)

)