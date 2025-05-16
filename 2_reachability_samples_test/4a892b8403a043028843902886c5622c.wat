(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    (f32.const -1.2693342910624563e+17)
    i32.reinterpret_f32
    drop
    (i64.const 625002)
    i64.ctz
    i32.wrap_i64
    drop
    br 0
)

)