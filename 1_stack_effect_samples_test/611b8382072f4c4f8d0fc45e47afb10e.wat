(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_4286683507 (mut i32) (i32.const -571354429))
(func $run (export "run")
    (local i32 f32 i32)
    (local $temp i32)
    local.get 0
    i32.extend8_s
    ;;INSPECT
    i32.extend8_s
    i32.extend8_s
    i32.clz
    f32.convert_i32_u
    f32.ceil
    f32.floor
    local.tee 1
    i32.trunc_f32_u
    f32.convert_i32_u
    f32.sqrt
    i32.reinterpret_f32
    local.tee 2
    drop
    local.get 0
    i32.clz
    i32.clz
    nop
    f32.convert_i32_u
    i32.trunc_f32_u
    i32.extend8_s
    i32.clz
    global.set $global_4286683507
    (f32.const -9.823215603326411e+30)
    drop
)

)