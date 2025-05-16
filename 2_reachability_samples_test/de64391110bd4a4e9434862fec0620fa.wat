(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32 i32)
    (local $temp i32)
    ;;FLAG_0
    (f32.const 1.1974855279100248e+30)
    f32.floor
    local.tee 0
    i32.reinterpret_f32
    local.set 1
    return
)

)