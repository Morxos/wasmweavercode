(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_550218468 (mut i32) (i32.const 1637576612))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    (i32.const 5)
    global.set $global_550218468
    global.get $global_550218468
    (f32.const 1.7291316795342223e-37)
    i32.trunc_f32_s
    i32.ne
    global.set $global_550218468
    nop
    br 0
)

)