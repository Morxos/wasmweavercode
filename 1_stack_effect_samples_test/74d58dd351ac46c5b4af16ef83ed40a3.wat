(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2271728403 f32 (f32.const -6.046485883073331e+17))
(global $global_2775894013 (mut i64) (i64.const 3892993586730426998))
(func $run (export "run")
    (local f64 i64)
    (local $temp i32)
    global.get $global_2271728403
    f32.neg
    nop
    f32.trunc
    f64.promote_f32
    f64.sqrt
    f64.floor
    f64.nearest
    f64.floor
    local.get 0
    i64.trunc_f64_s
    i32.wrap_i64
    f64.convert_i32_u
    f64.sqrt
    f64.max
    i64.trunc_f64_u
    i64.ctz
    i64.popcnt
    i64.eqz
    f32.convert_i32_s
    i64.trunc_f32_s
    i64.ctz
    local.tee 1
    i64.eqz
    i32.ctz
    i32.eqz
    i64.extend_i32_s
    f64.convert_i64_s
    f64.sqrt
    i64.reinterpret_f64
    i64.extend32_s
    i64.ctz
    ;;INSPECT
    global.set $global_2775894013
    nop
)

)