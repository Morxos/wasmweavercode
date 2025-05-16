(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1675023583 (mut i32) (i32.const 956867461))
(func $run (export "run")
    (local i32 i32)
    (local $temp i32)
    local.get 0
    i64.extend_i32_s
    i64.extend16_s
    i64.extend32_s
    i64.extend32_s
    i64.popcnt
    i64.eqz
    i32.popcnt
    i32.clz
    f32.convert_i32_u
    f32.sqrt
    f32.nearest
    f32.sqrt
    f32.sqrt
    i32.trunc_f32_u
    f32.convert_i32_s
    i32.reinterpret_f32
    nop
    local.tee 1
    f32.convert_i32_u
    i32.trunc_f32_u
    i32.clz
    i32.clz
    f32.convert_i32_s
    i32.reinterpret_f32
    i32.extend16_s
    f32.reinterpret_i32
    i32.reinterpret_f32
    f32.convert_i32_u
    f32.trunc
    f32.sqrt
    i32.reinterpret_f32
    f32.reinterpret_i32
    i32.reinterpret_f32
    i32.clz
    i32.clz
    i32.clz
    ;;INSPECT
    i32.clz
    global.set $global_1675023583
)

)