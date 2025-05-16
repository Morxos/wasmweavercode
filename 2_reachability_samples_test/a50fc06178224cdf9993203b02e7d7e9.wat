(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_954074650 (mut f64) (f64.const -2.651656796198912e+17))
(global $global_3917300725 (mut i64) (i64.const 2360012255364994380))
(func $run (export "run")
    (local i64 i64)
    (local $temp i32)
    ;;FLAG_0
    global.get $global_954074650
    nop
    f32.demote_f64
    global.get $global_954074650
    i64.trunc_f64_s
    local.tee 0
    global.get $global_954074650
    i64.trunc_f64_s
    i64.and
    local.tee 1
    i64.clz
    global.set $global_3917300725
    drop
    local.get 0
    i64.extend32_s
    f64.convert_i64_s
    local.get 0
    drop
    f64.ceil
    i64.trunc_f64_s
    drop
    nop
)

)