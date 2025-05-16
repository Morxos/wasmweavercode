(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3574153229 (mut f64) (f64.const 2.1267026779138847e+18))
(global $global_1142578446 (mut i64) (i64.const -3342164569798975668))
(func $run (export "run")
    (local f32 i64)
    (local $temp i32)
    local.get 0
    i64.trunc_f32_u
    i64.popcnt
    local.tee 1
    f64.reinterpret_i64
    f64.trunc
    i64.trunc_f64_s
    i64.extend32_s
    f32.convert_i64_u
    i32.reinterpret_f32
    f64.convert_i32_s
    global.set $global_3574153229
    global.get $global_3574153229
    f64.trunc
    i64.trunc_f64_s
    i64.eqz
    local.get 0
    f32.abs
    nop
    f32.nearest
    f32.nearest
    drop
    f64.convert_i32_s
    f64.neg
    f64.trunc
    f64.floor
    f64.nearest
    i64.reinterpret_f64
    i64.extend32_s
    ;;INSPECT
    i64.extend16_s
    i64.ctz
    f64.convert_i64_s
    i64.trunc_f64_s
    f64.convert_i64_u
    i64.reinterpret_f64
    global.set $global_1142578446
)

)