(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2991600704 (mut i32) (i32.const 705027321))
(func $run (export "run")
    (local f64 i32)
    (local $temp i32)
    local.get 0
    i64.reinterpret_f64
    i64.eqz
    f32.reinterpret_i32
    f32.nearest
    i64.trunc_f32_u
    f32.convert_i64_u
    f32.ceil
    f32.floor
    f32.trunc
    i32.reinterpret_f32
    i64.extend_i32_s
    i64.popcnt
    f64.convert_i64_s
    ;;INSPECT
    i64.reinterpret_f64
    i64.extend32_s
    f32.convert_i64_u
    i64.trunc_f32_u
    i64.eqz
    f32.convert_i32_s
    i32.reinterpret_f32
    global.set $global_2991600704
    global.get $global_2991600704
    local.tee 1
    global.set $global_2991600704
)

)