(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_219349036 (mut f32) (f32.const 4.426820730402898e+18))
(func $run (export "run")
    (local f32 i64)
    (local $temp i32)
    (f32.const 863068.75)
    ;;INSPECT
    global.set $global_219349036
    global.get $global_219349036
    local.tee 0
    i32.reinterpret_f32
    f32.convert_i32_u
    local.get 0
    f32.lt
    f32.convert_i32_u
    f32.floor
    i64.trunc_f32_u
    local.tee 1
    i64.popcnt
    i64.clz
    i64.popcnt
    i64.popcnt
    i32.wrap_i64
    i32.extend8_s
    f32.reinterpret_i32
    local.get 0
    f32.lt
    i32.extend16_s
    f32.reinterpret_i32
    f32.trunc
    i32.trunc_f32_u
    i64.extend_i32_s
    i64.popcnt
    local.set 1
    (f32.const 0.0004081454244442284)
    global.set $global_219349036
)

)