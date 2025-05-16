(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2136619419 (mut i64) (i64.const 1956667402609487213))
(func $run (export "run")
    (local i64 i32 i32)
    (local $temp i32)
    local.get 0
    i64.eqz
    i32.eqz
    i64.extend_i32_u
    global.set $global_2136619419
    nop
    (i64.const -9)
    f64.convert_i64_s
    f64.nearest
    i64.trunc_f64_s
    f64.convert_i64_s
    f64.abs
    f64.trunc
    f64.abs
    f64.trunc
    f64.nearest
    i64.trunc_f64_s
    nop
    i64.eqz
    local.tee 1
    ;;INSPECT
    i32.ctz
    f32.convert_i32_u
    f32.sqrt
    i32.reinterpret_f32
    local.tee 2
    i32.clz
    i32.clz
    i32.clz
    i32.clz
    drop
)

)