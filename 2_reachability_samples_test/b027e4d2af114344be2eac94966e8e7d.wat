(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    ;;FLAG_0
    (f32.const 0.7651200294494629)
    nop
    f32.sqrt
    (i32.const 2675)
    local.tee 0
    i32.popcnt
    f32.reinterpret_i32
    f32.nearest
    f32.le
    (br_table 0)
    ;;FLAG_1
    return
)

)