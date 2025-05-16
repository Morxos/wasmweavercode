(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_680128011 (mut f64) (f64.const -3.959348912359086e+18))
(global $global_1540419213 (mut i32) (i32.const 879229964))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    ;;INSPECT
    local.get 0
    i64.trunc_f32_s
    i64.popcnt
    i64.extend32_s
    i64.eqz
    (f32.const -1.4330556064912708e+34)
    (i32.const 418)
    i32.eqz
    i64.extend_i32_u
    drop
    drop
    i32.extend8_s
    i32.eqz
    i32.extend8_s
    f32.convert_i32_s
    i32.reinterpret_f32
    f32.convert_i32_s
    f32.neg
    f32.sqrt
    i64.trunc_f32_u
    f32.convert_i64_s
    i64.trunc_f32_s
    f32.convert_i64_u
    i32.trunc_f32_s
    i32.extend16_s
    f64.convert_i32_u
    f32.demote_f64
    local.set 0
    global.get $global_680128011
    f64.abs
    f64.sqrt
    i32.trunc_f64_u
    global.set $global_1540419213
    nop
)

)