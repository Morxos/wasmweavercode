(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32 i32)
    (local $temp i32)
    local.get 0
    f32.ceil
    f32.ceil
    f32.trunc
    i64.trunc_f32_u
    i32.wrap_i64
    local.get 0
    f32.neg
    (f32.const 1.704986155474223e+18)
    f32.eq
    f32.convert_i32_s
    (f32.const -7.12005130514642e+31)
    f32.ge
    i32.shr_s
    f32.convert_i32_u
    i32.trunc_f32_u
    f32.convert_i32_u
    f32.abs
    f32.neg
    local.get 0
    i64.trunc_f32_u
    i64.extend32_s
    i64.eqz
    i32.extend8_s
    f32.reinterpret_i32
    i32.trunc_f32_s
    f32.convert_i32_s
    i64.trunc_f32_u
    drop
    i32.trunc_f32_s
    i32.eqz
    ;;INSPECT
    i32.extend16_s
    i32.extend16_s
    local.set 1
)

)