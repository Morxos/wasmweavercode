(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2227935273 (mut f32) (f32.const -2.3955494141448684e+18))
(global $global_1109992089 (mut i64) (i64.const -7870871130918206594))
(func $run (export "run")
    (local i32 i32 i64)
    (local $temp i32)
    (i32.const 46088)
    i32.ctz
    i32.extend8_s
    local.get 0
    i32.shr_s
    i64.extend_i32_s
    f64.convert_i64_s
    f32.demote_f64
    ;;INSPECT
    i32.reinterpret_f32
    i32.ctz
    f32.convert_i32_u
    f32.neg
    f32.trunc
    local.get 0
    i32.eqz
    i32.popcnt
    local.set 0
    f32.neg
    global.set $global_2227935273
    (f32.const 1.242060989170568e-05)
    f32.sqrt
    f32.trunc
    i64.trunc_f32_u
    f64.convert_i64_s
    i64.reinterpret_f64
    i64.eqz
    i32.extend8_s
    local.tee 1
    i32.extend8_s
    f32.convert_i32_s
    i64.trunc_f32_u
    local.tee 2
    global.set $global_1109992089
)

)