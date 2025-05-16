(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2358479184 (mut f32) (f32.const 5.408767077378949e+18))
(global $global_24314344 (mut i32) (i32.const -550651528))
(func $run (export "run")
    (local f64)
    (local $temp i32)
    ;;FLAG_0
    (i64.const -4582)
    i64.ctz
    f64.reinterpret_i64
    local.set 0
    nop
    global.get $global_2358479184
    f64.promote_f32
    f64.sqrt
    f64.sqrt
    f64.nearest
    i64.trunc_f64_s
    f64.reinterpret_i64
    global.get $global_2358479184
    (f64.const 3.8018534133200373e-118)
    i64.trunc_f64_s
    (i64.const 34234)
    i64.shl
    i64.eqz
    global.set $global_24314344
    f64.promote_f32
    f64.floor
    i64.reinterpret_f64
    (i32.const 1577)
    f64.convert_i32_u
    local.set 0
    (f32.const 803139758325760.0)
    global.set $global_2358479184
    drop
    i32.trunc_f64_s
    (br_table 0)
    ;;FLAG_1
)

)