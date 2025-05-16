(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2350546906 (mut f32) (f32.const -1.185386234684375e+18))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    local.get 0
    i64.eqz
    local.get 0
    i64.eqz
    i32.sub
    f64.convert_i32_u
    i64.trunc_f64_s
    ;;INSPECT
    f32.convert_i64_u
    i32.trunc_f32_s
    f32.convert_i32_s
    global.set $global_2350546906
    global.get $global_2350546906
    i64.trunc_f32_u
    i64.ctz
    f64.convert_i64_s
    i64.trunc_f64_u
    i64.eqz
    i32.popcnt
    f32.convert_i32_u
    f32.ceil
    i64.trunc_f32_u
    i64.extend32_s
    f64.convert_i64_s
    f64.trunc
    i64.reinterpret_f64
    i64.ctz
    nop
    f64.convert_i64_s
    f64.sqrt
    i64.trunc_f64_s
    f64.convert_i64_u
    f64.sqrt
    f64.neg
    f32.demote_f64
    f32.ceil
    f32.abs
    global.set $global_2350546906
)

)