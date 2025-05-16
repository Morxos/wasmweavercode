(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3900398918 (mut i32) (i32.const -1161115449))
(global $global_1416757809 (mut f32) (f32.const -3.2191226560118784e+18))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    local.get 0
    i32.extend16_s
    f64.convert_i32_s
    (f32.const -1.0533485755942192e-27)
    f64.promote_f32
    f64.sub
    f64.nearest
    i32.trunc_f64_u
    f32.convert_i32_s
    global.get $global_3900398918
    f32.convert_i32_s
    global.set $global_1416757809
    f32.ceil
    nop
    f32.ceil
    f32.ceil
    i64.trunc_f32_s
    i64.ctz
    i64.extend8_s
    ;;INSPECT
    i64.clz
    i64.clz
    i64.eqz
    i32.extend8_s
    i32.clz
    i32.clz
    i32.ctz
    i64.extend_i32_s
    i64.clz
    i64.popcnt
    i64.popcnt
    f64.convert_i64_u
    f64.ceil
    f64.floor
    i64.trunc_f64_u
    i64.ctz
    f64.convert_i64_s
    f32.demote_f64
    f32.ceil
    f32.ceil
    i32.trunc_f32_s
    local.set 0
)

)