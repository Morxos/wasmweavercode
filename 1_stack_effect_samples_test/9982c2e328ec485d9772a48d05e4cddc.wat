(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3017169295 (mut i32) (i32.const 2041803174))
(func $run (export "run")
    (local i32 i32)
    (local $temp i32)
    global.get $global_3017169295
    local.get 0
    i32.lt_s
    f32.reinterpret_i32
    f32.trunc
    i64.trunc_f32_u
    ;;INSPECT
    i64.extend16_s
    i64.extend16_s
    f32.convert_i64_u
    global.get $global_3017169295
    local.tee 1
    i32.clz
    f32.reinterpret_i32
    f32.eq
    f32.reinterpret_i32
    local.get 0
    i64.extend_i32_u
    drop
    f32.floor
    i32.reinterpret_f32
    f32.convert_i32_s
    i32.reinterpret_f32
    f32.reinterpret_i32
    i64.trunc_f32_u
    i64.extend16_s
    i64.popcnt
    i64.eqz
    (f32.const -3.2787904093027003e+34)
    local.get 0
    drop
    drop
    global.set $global_3017169295
)

)