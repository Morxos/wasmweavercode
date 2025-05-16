(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3105733883 (mut i32) (i32.const -997769604))
(func $run (export "run")
    (local i32 f32)
    (local $temp i32)
    local.get 0
    i32.clz
    (f32.const 1.3375593953842485e+33)
    ;;INSPECT
    local.tee 1
    i32.reinterpret_f32
    i32.div_s
    i32.extend8_s
    f32.convert_i32_u
    i32.reinterpret_f32
    i32.clz
    global.set $global_3105733883
    local.get 0
    i32.clz
    f32.convert_i32_u
    f32.nearest
    drop
    (i32.const -838)
    f32.reinterpret_i32
    i32.reinterpret_f32
    drop
)

)