(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3667082302 (mut i32) (i32.const 909654940))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    ;;FLAG_0
    nop
    (i32.const -783375933)
    drop
    (f64.const 7.898661129223877e-213)
    f32.demote_f64
    f32.ceil
    (f64.const 3.741186101524875e-74)
    f64.trunc
    i32.trunc_f64_s
    i32.popcnt
    i32.popcnt
    f32.convert_i32_s
    drop
    f32.ceil
    (i32.const 241895)
    (i32.const 651884500)
    i32.shr_s
    i32.clz
    global.set $global_3667082302
    f32.abs
    f64.promote_f32
    global.get $global_3667082302
    local.set 0
    i32.trunc_f64_u
    i32.clz
    (br_table 0)
    ;;FLAG_1
)

)