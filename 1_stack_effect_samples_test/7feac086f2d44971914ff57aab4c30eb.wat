(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1724246987 (mut i64) (i64.const 8692311241734846743))
(func $run (export "run")
    (local f32 i64)
    (local $temp i32)
    local.get 0
    i64.trunc_f32_u
    local.get 0
    i64.trunc_f32_u
    i64.eqz
    i64.extend_i32_s
    i64.rotr
    i64.popcnt
    f32.convert_i64_u
    i32.reinterpret_f32
    i64.extend_i32_s
    i64.ctz
    local.tee 1
    i64.eqz
    i64.extend_i32_s
    ;;INSPECT
    i64.extend8_s
    i64.clz
    i64.clz
    f64.convert_i64_s
    i64.reinterpret_f64
    global.set $global_1724246987
)

)