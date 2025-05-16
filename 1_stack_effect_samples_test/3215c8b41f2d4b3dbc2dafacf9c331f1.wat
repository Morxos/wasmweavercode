(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2674011457 (mut i32) (i32.const -384736302))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    (f32.const 1.36677893513486e+19)
    ;;INSPECT
    local.tee 0
    i32.reinterpret_f32
    (f32.const -4.44038838382325e-24)
    f32.trunc
    f32.trunc
    i32.trunc_f32_u
    i32.lt_u
    i32.clz
    (i32.const 0)
    i32.lt_u
    i32.clz
    (f32.const -9.152684832258728e-09)
    local.get 0
    f32.lt
    i32.div_s
    i32.clz
    i32.clz
    i32.clz
    (f32.const -2.026046945621084e+25)
    drop
    i32.clz
    i32.clz
    i32.clz
    global.set $global_2674011457
)

)