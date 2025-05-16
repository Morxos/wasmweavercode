(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_4061839041 (mut i32) (i32.const -1321463822))
(global $global_235052043 (mut f32) (f32.const 1.7525992695644815e+18))
(func $run (export "run")
    (local f32 f32 i32)
    (local $temp i32)
    (f32.const 7.207207460606575e+18)
    f32.sqrt
    local.get 0
    f32.max
    f32.trunc
    f32.sqrt
    f32.sqrt
    f32.abs
    i32.reinterpret_f32
    global.set $global_4061839041
    global.get $global_4061839041
    f32.reinterpret_i32
    f32.trunc
    nop
    f32.trunc
    f32.trunc
    f32.abs
    f32.sqrt
    local.tee 1
    global.set $global_235052043
    global.get $global_4061839041
    local.set 2
    ;;INSPECT
    nop
    nop
    (i32.const 1741800)
    global.set $global_4061839041
)

)