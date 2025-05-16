(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_4004836550 (mut i32) (i32.const -865025422))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    (f32.const -4.2426243337358365e-28)
    f32.neg
    i32.reinterpret_f32
    f32.convert_i32_s
    local.tee 0
    nop
    local.get 0
    f32.max
    nop
    nop
    i32.trunc_f32_u
    local.get 0
    nop
    i32.trunc_f32_u
    i32.div_s
    i32.clz
    i32.clz
    i32.clz
    i32.eqz
    f32.reinterpret_i32
    f32.floor
    (i32.const 117)
    f32.reinterpret_i32
    f32.mul
    i32.trunc_f32_u
    f32.reinterpret_i32
    f32.sqrt
    i32.reinterpret_f32
    ;;INSPECT
    i32.clz
    i32.clz
    i32.clz
    i32.clz
    i32.clz
    global.set $global_4004836550
)

)