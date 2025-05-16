(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f64 i64)
    (local $temp i32)
    ;;FLAG_0
    local.get 0
    drop
    (i64.const 5116573)
    i64.extend8_s
    i64.ctz
    (f32.const -1.0704139720664062e-32)
    i32.reinterpret_f32
    f32.convert_i32_u
    drop
    local.set 1
    (f64.const 1.3847872814803528e+114)
    local.set 0
    br 0
)

)