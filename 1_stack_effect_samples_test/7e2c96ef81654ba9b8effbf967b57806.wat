(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2645664180 (mut i32) (i32.const -1985949629))
(global $global_1876198879 (mut i64) (i64.const 6942402787315053840))
(global $global_2657762118 (mut f32) (f32.const 5.679416262602523e+18))
(func $run (export "run")
    (local i64 i64 i64 i32 i32)
    (local $temp i32)
    local.get 0
    local.tee 1
    local.tee 2
    i64.eqz
    local.tee 3
    local.tee 4
    i32.extend8_s
    global.set $global_2645664180
    (f32.const -2.0757617846811627e-07)
    ;;INSPECT
    i64.trunc_f32_s
    i64.eqz
    local.get 0
    global.set $global_1876198879
    (f32.const -4.190597747552506e-25)
    f32.ceil
    f32.neg
    f32.sqrt
    drop
    f64.convert_i32_s
    f64.sqrt
    f64.nearest
    i64.trunc_f64_u
    i64.popcnt
    f32.convert_i64_u
    global.set $global_2657762118
    global.get $global_2645664180
    f32.convert_i32_s
    f32.abs
    i64.trunc_f32_u
    f32.convert_i64_u
    drop
)

)