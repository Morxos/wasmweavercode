(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1421563675 (mut f64) (f64.const -6.726175236297316e+18))
(func $run (export "run")
    (local i32 i64)
    (local $temp i32)
    (i32.const 4116286)
    f64.convert_i32_u
    i64.reinterpret_f64
    f64.convert_i64_s
    f64.floor
    f64.neg
    f64.abs
    drop
    local.get 0
    f64.convert_i32_s
    i64.reinterpret_f64
    i64.eqz
    i64.extend_i32_u
    f64.convert_i64_s
    i64.trunc_f64_u
    local.tee 1
    i64.ctz
    i64.ctz
    f32.convert_i64_s
    i64.trunc_f32_u
    i64.clz
    f64.convert_i64_s
    f64.nearest
    f64.sqrt
    global.set $global_1421563675
    global.get $global_1421563675
    f64.neg
    i64.reinterpret_f64
    global.get $global_1421563675
    f64.floor
    f64.floor
    global.set $global_1421563675
    local.get 0
    ;;INSPECT
    drop
    i64.extend16_s
    local.set 1
)

)