(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3083474645 (mut f32) (f32.const -7.70598441787274e+18))
(global $global_2630314834 (mut i32) (i32.const -1414354659))
(func $run (export "run")
    (local f32 f32)
    (local $temp i32)
    local.get 0
    f32.ceil
    global.set $global_3083474645
    (f32.const 2.689210168275003e+19)
    local.tee 1
    i32.reinterpret_f32
    i32.clz
    i32.clz
    i32.extend8_s
    i32.clz
    i32.extend16_s
    f32.convert_i32_u
    i32.reinterpret_f32
    ;;INSPECT
    global.set $global_2630314834
)

)