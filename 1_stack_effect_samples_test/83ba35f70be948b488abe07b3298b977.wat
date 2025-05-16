(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_437312976 f64 (f64.const -7.69205580053805e+17))
(global $global_1780089994 (mut f32) (f32.const 9.247486525875159e+17))
(func $run (export "run")
    (local f32 f32 f32 i32)
    (local $temp i32)
    global.get $global_437312976
    f32.demote_f64
    f32.neg
    global.set $global_1780089994
    (f32.const 1.186344841180402e-24)
    i64.trunc_f32_s
    f32.convert_i64_u
    local.tee 0
    i32.trunc_f32_u
    f32.convert_i32_s
    f32.abs
    local.tee 1
    f32.nearest
    i32.reinterpret_f32
    f32.convert_i32_s
    f32.ceil
    i64.trunc_f32_u
    i64.eqz
    i32.popcnt
    i64.extend_i32_u
    i64.popcnt
    i64.extend32_s
    local.get 0
    local.tee 2
    i64.trunc_f32_u
    i64.eqz
    f32.convert_i32_u
    f32.abs
    i32.reinterpret_f32
    ;;INSPECT
    nop
    local.tee 3
    f32.convert_i32_u
    f32.floor
    global.set $global_1780089994
    i64.eqz
    i32.clz
    drop
)

)