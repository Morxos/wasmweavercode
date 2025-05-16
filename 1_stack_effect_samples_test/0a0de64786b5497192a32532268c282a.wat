(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2778283411 (mut f32) (f32.const -8.482566182036046e+18))
(global $global_4241201267 (mut i32) (i32.const -580880568))
(func $run (export "run")
    (local f32 i64 i32)
    (local $temp i32)
    local.get 0
    f32.ceil
    i64.trunc_f32_u
    i64.popcnt
    i64.ctz
    local.tee 1
    i64.eqz
    i32.popcnt
    i64.extend_i32_s
    (f32.const -1.5328997836697167e-12)
    i64.trunc_f32_s
    f64.reinterpret_i64
    f64.neg
    f64.neg
    i64.trunc_f64_u
    ;;INSPECT
    i64.eqz
    i32.extend16_s
    i32.extend8_s
    local.tee 2
    i32.extend16_s
    f32.convert_i32_s
    f32.nearest
    i64.trunc_f32_u
    i64.rotr
    i64.clz
    global.get $global_2778283411
    f32.neg
    global.set $global_2778283411
    (i32.const 76394)
    global.set $global_4241201267
    local.set 1
)

)