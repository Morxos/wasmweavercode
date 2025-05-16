(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    ;;FLAG_0
    (i64.const -6874073)
    (i64.const 463280)
    i64.shr_u
    i32.wrap_i64
    f32.convert_i32_u
    i32.reinterpret_f32
    local.set 0
    nop
    br 0
)

)