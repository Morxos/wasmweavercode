(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_4045635636 (mut f32) (f32.const 3.609496562872353e+18))
(global $global_1257191890 (mut i32) (i32.const -1013136965))
(func $run (export "run")
    (local i32 i32)
    (local $temp i32)
    local.get 0
    f32.convert_i32_u
    f32.trunc
    i32.reinterpret_f32
    f32.convert_i32_u
    f32.nearest
    global.set $global_4045635636
    local.get 0
    f32.convert_i32_u
    f32.trunc
    f32.trunc
    (f32.const -5.394940671976656e-07)
    f32.min
    i32.reinterpret_f32
    i32.eqz
    i32.popcnt
    i32.clz
    f32.convert_i32_s
    i32.trunc_f32_s
    f32.convert_i32_u
    i32.reinterpret_f32
    local.tee 1
    i32.clz
    f32.reinterpret_i32
    i32.reinterpret_f32
    ;;INSPECT
    i64.extend_i32_u
    i64.eqz
    i32.clz
    i32.clz
    f32.convert_i32_u
    f32.sqrt
    i32.reinterpret_f32
    global.set $global_1257191890
)

)