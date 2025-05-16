(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32 f32)
    (local $temp i32)
    ;;FLAG_0
    local.get 0
    local.tee 1
    (f32.const 8.883957116063273e-36)
    local.get 0
    f32.copysign
    f32.le
    (i32.const -7134942)
    i32.add
    (br_table 0)
    ;;FLAG_1
    br 0
)

)