(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2607634213 (mut i32) (i32.const 1036963048))
(func $run (export "run")
    (local f64 i64 i32)
    (local $temp i32)
    ;;FLAG_0
    (i64.const -516540434)
    f32.convert_i64_s
    local.get 0
    i64.trunc_f64_u
    i64.ctz
    i64.eqz
    i32.eqz
    global.set $global_2607634213
    (f64.const 5.1093802674964996e+284)
    f64.trunc
    f64.ceil
    f64.abs
    i64.reinterpret_f64
    (i64.const -24)
    i64.shl
    local.tee 1
    i64.ctz
    i64.extend16_s
    local.set 1
    local.get 0
    i32.trunc_f64_u
    i32.popcnt
    i32.popcnt
    i32.clz
    local.set 2
    f32.nearest
    f64.promote_f32
    i64.reinterpret_f64
    drop
    (i32.const 716257113)
    (br_table 0)
    ;;FLAG_1
)

)