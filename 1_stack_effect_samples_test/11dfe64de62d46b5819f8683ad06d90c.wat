(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_784043927 (mut i32) (i32.const -91595524))
(global $global_2355548432 (mut f32) (f32.const 5.255347821908853e+18))
(func $run (export "run")
    (local i64 i32 f32)
    (local $temp i32)
    (i32.const -37)
    (f32.const -1.3441379608018394e-20)
    f32.abs
    i64.trunc_f32_u
    f32.convert_i64_s
    i64.trunc_f32_u
    i64.extend32_s
    local.get 0
    i64.ctz
    i64.sub
    f64.convert_i64_s
    i32.trunc_f64_s
    i32.eqz
    i32.eqz
    local.tee 1
    f32.reinterpret_i32
    i64.trunc_f32_u
    ;;INSPECT
    i64.popcnt
    i64.clz
    f64.convert_i64_s
    f64.sqrt
    f32.demote_f64
    i32.reinterpret_f32
    i32.rem_u
    global.set $global_784043927
    global.get $global_784043927
    global.set $global_784043927
    global.get $global_784043927
    nop
    f32.convert_i32_s
    local.tee 2
    global.set $global_2355548432
)

)