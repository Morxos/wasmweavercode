(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3729344099 (mut i32) (i32.const -756460449))
(func $run (export "run")
    (local i64 i32)
    (local $temp i32)
    local.get 0
    i64.eqz
    f32.convert_i32_s
    f32.abs
    f32.sqrt
    f32.ceil
    i32.reinterpret_f32
    local.tee 1
    global.set $global_3729344099
    (i32.const -4)
    (i32.const 30104)
    i32.div_s
    i32.clz
    (i32.const -7367933)
    i32.div_s
    f32.convert_i32_u
    f32.sqrt
    i32.trunc_f32_u
    ;;INSPECT
    (i32.const 1633701680)
    i32.div_s
    f32.convert_i32_u
    i32.reinterpret_f32
    i32.clz
    i32.clz
    f32.reinterpret_i32
    f32.floor
    i32.reinterpret_f32
    local.get 0
    i64.eqz
    i32.div_s
    global.set $global_3729344099
)

)