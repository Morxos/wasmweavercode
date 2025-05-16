(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_324996278 (mut i32) (i32.const -320058698))
(global $global_4181513336 (mut f32) (f32.const -3.9526742079884493e+18))
(func $run (export "run")
    (local i32 f32)
    (local $temp i32)
    local.get 0
    f32.convert_i32_s
    f32.trunc
    i32.reinterpret_f32
    i64.extend_i32_s
    i64.extend32_s
    i64.extend32_s
    i64.eqz
    i64.extend_i32_s
    i64.ctz
    i64.extend32_s
    i64.extend32_s
    i32.wrap_i64
    i64.extend_i32_s
    i64.extend8_s
    i64.eqz
    local.get 0
    i32.shr_s
    i32.clz
    f64.convert_i32_u
    f64.trunc
    f64.sqrt
    i64.trunc_f64_s
    f32.convert_i64_u
    f32.ceil
    f32.abs
    i32.reinterpret_f32
    global.set $global_324996278
    ;;INSPECT
    local.get 0
    nop
    f32.reinterpret_i32
    f32.trunc
    f32.trunc
    f32.floor
    i32.trunc_f32_s
    i32.clz
    f32.convert_i32_s
    f32.floor
    local.tee 1
    global.set $global_4181513336
)

)