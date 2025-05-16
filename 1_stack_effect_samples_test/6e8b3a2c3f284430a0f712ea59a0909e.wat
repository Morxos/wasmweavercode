(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_491404307 f64 (f64.const -8.773302380473473e+18))
(global $global_975015122 (mut f64) (f64.const -5.411221742551048e+18))
(global $global_460820430 (mut i32) (i32.const -1907413945))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    global.get $global_491404307
    f64.abs
    f64.floor
    f64.trunc
    ;;INSPECT
    f64.nearest
    f64.nearest
    f64.floor
    f64.floor
    f64.floor
    f64.floor
    f64.floor
    f64.floor
    f64.floor
    f64.floor
    global.set $global_975015122
    (f32.const 0.19809173047542572)
    global.get $global_491404307
    i64.trunc_f64_s
    f64.convert_i64_s
    drop
    i32.reinterpret_f32
    local.tee 0
    nop
    f32.convert_i32_u
    i32.trunc_f32_u
    local.get 0
    i32.div_s
    i32.clz
    i32.extend8_s
    f32.reinterpret_i32
    i32.reinterpret_f32
    i32.clz
    i32.clz
    global.set $global_460820430
)

)