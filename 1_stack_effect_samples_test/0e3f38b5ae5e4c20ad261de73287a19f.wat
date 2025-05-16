(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local $temp i32)
    (f32.const -5.168125512519366e-21)
    f32.floor
    (f32.const -1.0895845908153667e+23)
    f32.neg
    f32.lt
    nop
    (f32.const 8.007401978630764e-18)
    i32.reinterpret_f32
    i32.lt_s
    ;;INSPECT
    i32.extend8_s
    f32.convert_i32_s
    f32.abs
    (f32.const -5.799623355766767e+32)
    i32.reinterpret_f32
    i32.eqz
    f32.convert_i32_s
    f32.min
    i32.trunc_f32_s
    drop
)

)