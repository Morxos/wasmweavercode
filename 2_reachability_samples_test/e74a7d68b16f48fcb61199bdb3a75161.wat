(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    ;;FLAG_0
    (f32.const -2.645979553170337e-18)
    i32.reinterpret_f32
    i32.extend8_s
    f32.reinterpret_i32
    local.set 0
    br 0
)

)