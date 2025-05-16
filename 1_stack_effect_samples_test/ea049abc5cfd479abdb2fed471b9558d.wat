(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_62951685 (mut f32) (f32.const 3.084115822260519e+18))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    (f32.const 174.32749938964844)
    i32.reinterpret_f32
    f64.convert_i32_u
    f64.floor
    f64.nearest
    f32.demote_f64
    ;;INSPECT
    global.set $global_62951685
    global.get $global_62951685
    f32.ceil
    local.tee 0
    i32.reinterpret_f32
    f32.convert_i32_u
    f32.trunc
    i32.trunc_f32_u
    f32.convert_i32_u
    i32.reinterpret_f32
    f32.convert_i32_u
    i32.trunc_f32_u
    (f32.const -1.0387477189623808e+17)
    i32.reinterpret_f32
    i32.div_s
    f32.convert_i32_s
    drop
    (i32.const 83084)
    i32.clz
    f32.convert_i32_u
    i32.reinterpret_f32
    f32.convert_i32_s
    global.set $global_62951685
)

)