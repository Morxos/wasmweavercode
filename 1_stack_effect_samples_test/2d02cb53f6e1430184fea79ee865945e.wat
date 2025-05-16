(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3311575922 (mut i64) (i64.const -5312478371813397123))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    (i64.const 362534107)
    nop
    local.tee 0
    global.set $global_3311575922
    ;;INSPECT
    local.get 0
    i64.clz
    i64.extend8_s
    i64.extend8_s
    i64.clz
    global.set $global_3311575922
    nop
    (f32.const 1.7138980012987304e-08)
    i32.reinterpret_f32
    f32.reinterpret_i32
    f32.nearest
    i32.reinterpret_f32
    f32.reinterpret_i32
    i32.reinterpret_f32
    f32.convert_i32_s
    i32.reinterpret_f32
    f32.convert_i32_u
    i32.reinterpret_f32
    f32.reinterpret_i32
    i32.reinterpret_f32
    i32.clz
    drop
)

)