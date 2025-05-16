(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2974826488 (mut i32) (i32.const 1966630052))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    (f32.const 2.415036801947885e-27)
    f32.ceil
    i32.reinterpret_f32
    local.tee 0
    f32.convert_i32_s
    f32.trunc
    i32.trunc_f32_u
    f32.convert_i32_u
    i32.trunc_f32_u
    f32.convert_i32_u
    ;;INSPECT
    i32.trunc_f32_u
    local.get 0
    i32.div_s
    i32.clz
    (i32.const -18212825)
    i32.div_s
    f32.reinterpret_i32
    f32.ceil
    i32.reinterpret_f32
    i32.clz
    (f32.const 26041141690368.0)
    i32.reinterpret_f32
    i32.div_s
    (i32.const -576770045)
    i32.div_s
    global.set $global_2974826488
)

)