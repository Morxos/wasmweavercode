(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3110926756 (mut f32) (f32.const 6.973589827006497e+18))
(func $run (export "run")
    (local f64 f32 f32)
    (local $temp i32)
    local.get 0
    f64.trunc
    f64.nearest
    f64.nearest
    f64.floor
    ;;INSPECT
    f32.demote_f64
    local.tee 1
    i64.trunc_f32_u
    i64.extend32_s
    (f32.const 4.463850859941628e+27)
    local.tee 2
    f64.promote_f32
    f64.nearest
    f64.floor
    f64.nearest
    f64.nearest
    f64.nearest
    f64.floor
    f64.sqrt
    f64.nearest
    f64.floor
    f64.floor
    f64.nearest
    drop
    i64.popcnt
    i64.clz
    i64.eqz
    i32.clz
    f32.convert_i32_u
    global.set $global_3110926756
)

)