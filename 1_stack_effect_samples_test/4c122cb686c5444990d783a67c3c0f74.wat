(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1014808825 (mut f32) (f32.const -3.7666632288478167e+18))
(global $global_3914821057 (mut i64) (i64.const 7525394738327683671))
(func $run (export "run")
    (local i32 f32 i64)
    (local $temp i32)
    local.get 0
    i32.clz
    f32.convert_i32_u
    i32.trunc_f32_s
    f64.convert_i32_s
    ;;INSPECT
    f64.nearest
    i64.trunc_f64_u
    i64.eqz
    i64.extend_i32_s
    i64.popcnt
    (f32.const 5.51678294868907e-06)
    local.tee 1
    f32.trunc
    i64.trunc_f32_u
    i64.extend32_s
    local.tee 2
    i64.ctz
    i64.sub
    f64.reinterpret_i64
    drop
    global.get $global_1014808825
    f32.neg
    i64.trunc_f32_s
    i64.popcnt
    i64.ctz
    f32.convert_i64_u
    i32.trunc_f32_s
    f32.convert_i32_s
    local.get 0
    f64.convert_i32_s
    i64.trunc_f64_s
    i64.popcnt
    i64.popcnt
    global.set $global_3914821057
    i64.trunc_f32_s
    drop
)

)