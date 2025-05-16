(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_6218555 (mut f32) (f32.const -9.525515220827505e+17))
(func $run (export "run")
    (local f64 f32)
    (local $temp i32)
    (i64.const -1331)
    f64.convert_i64_s
    i64.trunc_f64_s
    i64.ctz
    i64.ctz
    f64.convert_i64_s
    local.tee 0
    f64.nearest
    f64.sqrt
    f64.sqrt
    f64.nearest
    i64.trunc_f64_s
    i64.popcnt
    nop
    i64.eqz
    i32.extend8_s
    i32.eqz
    i64.extend_i32_s
    i32.wrap_i64
    f32.convert_i32_s
    f64.promote_f32
    ;;INSPECT
    f64.sqrt
    f64.nearest
    f64.abs
    f64.trunc
    i64.trunc_f64_s
    i64.popcnt
    i64.eqz
    i64.extend_i32_s
    i64.eqz
    local.get 0
    f64.nearest
    f64.sqrt
    f32.demote_f64
    f32.trunc
    local.set 1
    i32.eqz
    i32.extend16_s
    i32.eqz
    f32.convert_i32_s
    f32.nearest
    global.set $global_6218555
)

)