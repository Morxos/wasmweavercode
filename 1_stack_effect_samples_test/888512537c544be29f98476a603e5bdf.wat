(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_4293460377 (mut i32) (i32.const 1200417563))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    (f32.const 2566870293020672.0)
    local.tee 0
    (i32.const 6655)
    nop
    (f32.const -1.3024548433951292e-20)
    f32.trunc
    i32.reinterpret_f32
    i32.div_s
    f32.convert_i32_u
    f32.lt
    f32.reinterpret_i32
    f32.trunc
    (f32.const -1.4685526750548086e-22)
    f32.mul
    i32.trunc_f32_u
    f32.reinterpret_i32
    ;;INSPECT
    i32.reinterpret_f32
    f32.reinterpret_i32
    global.get $global_4293460377
    f64.convert_i32_u
    i32.trunc_f64_u
    global.set $global_4293460377
    f32.floor
    i32.trunc_f32_u
    global.set $global_4293460377
)

)