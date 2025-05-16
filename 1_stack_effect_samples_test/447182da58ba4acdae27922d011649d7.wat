(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i32 i32)
    (local $temp i32)
    (i64.const 765)
    i64.popcnt
    i64.eqz
    i32.eqz
    local.get 0
    i32.shr_s
    i64.extend_i32_s
    i64.eqz
    (f32.const -1.5844226675633334e-15)
    i32.reinterpret_f32
    i32.popcnt
    i32.div_u
    ;;INSPECT
    i64.extend_i32_u
    f64.convert_i64_s
    f32.demote_f64
    local.get 0
    i64.extend_i32_s
    i64.clz
    i64.eqz
    i32.eqz
    i64.extend_i32_s
    i64.ctz
    i64.extend8_s
    f32.convert_i64_u
    i32.reinterpret_f32
    local.tee 1
    drop
    f32.nearest
    f32.ceil
    f32.nearest
    i64.trunc_f32_s
    drop
)

)