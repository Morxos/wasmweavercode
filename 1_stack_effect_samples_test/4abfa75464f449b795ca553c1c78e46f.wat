(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1888421526 (mut f32) (f32.const -2.2202906966512108e+18))
(global $global_2355536085 (mut i64) (i64.const -3833263972869119952))
(global $global_3258088239 (mut i32) (i32.const -551405878))
(func $run (export "run")
    (local f32 f32 i64 i32 i64)
    (local $temp i32)
    local.get 0
    f32.ceil
    f32.trunc
    f32.trunc
    f32.floor
    local.tee 1
    i64.trunc_f32_u
    f64.convert_i64_u
    i64.reinterpret_f64
    local.tee 2
    i64.ctz
    i64.eqz
    global.get $global_1888421526
    f32.neg
    (i32.const -7)
    local.tee 3
    f64.convert_i32_u
    f32.demote_f64
    f64.promote_f32
    i64.trunc_f64_u
    local.tee 4
    i64.popcnt
    global.set $global_2355536085
    f32.ceil
    global.set $global_1888421526
    ;;INSPECT
    global.set $global_3258088239
)

)