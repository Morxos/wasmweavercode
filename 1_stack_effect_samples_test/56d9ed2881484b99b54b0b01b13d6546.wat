(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3440859191 (mut f32) (f32.const -1.5865499240261222e+18))
(func $run (export "run")
    (local f64 i32)
    (local $temp i32)
    local.get 0
    f32.demote_f64
    f32.neg
    f32.trunc
    f32.abs
    i32.reinterpret_f32
    i32.eqz
    ;;INSPECT
    f32.convert_i32_s
    i32.reinterpret_f32
    local.tee 1
    f32.convert_i32_u
    (f32.const -1.3660619729823222e-22)
    f32.lt
    i32.clz
    f32.reinterpret_i32
    i32.trunc_f32_u
    i32.clz
    i32.eqz
    f32.reinterpret_i32
    i32.reinterpret_f32
    i32.extend16_s
    f32.reinterpret_i32
    i32.trunc_f32_u
    f32.convert_i32_u
    i32.reinterpret_f32
    f32.convert_i32_u
    global.set $global_3440859191
    (i32.const -8314)
    drop
    nop
)

)