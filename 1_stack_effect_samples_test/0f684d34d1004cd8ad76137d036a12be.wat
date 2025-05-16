(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2292775193 (mut i32) (i32.const 730950336))
(func $run (export "run")
    (local f32 i32)
    (local $temp i32)
    local.get 0
    i32.reinterpret_f32
    i32.popcnt
    i64.extend_i32_u
    f64.reinterpret_i64
    i64.trunc_f64_u
    i64.ctz
    f64.convert_i64_s
    f32.demote_f64
    i32.reinterpret_f32
    local.tee 1
    global.set $global_2292775193
    ;;INSPECT
    (i32.const -170)
    i32.extend8_s
    i32.clz
    f32.convert_i32_s
    i32.reinterpret_f32
    i32.clz
    f32.convert_i32_u
    i32.reinterpret_f32
    i32.extend8_s
    global.set $global_2292775193
)

)