(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_4055305594 (mut i32) (i32.const 620681480))
(func $run (export "run")
    (local i64 f32)
    (local $temp i32)
    local.get 0
    f64.convert_i64_s
    f64.trunc
    f64.sqrt
    f64.abs
    i32.trunc_f64_s
    global.get $global_4055305594
    i32.lt_s
    f32.convert_i32_u
    i32.reinterpret_f32
    ;;INSPECT
    f32.convert_i32_u
    local.tee 1
    drop
    local.get 0
    (f32.const 0.0)
    i32.reinterpret_f32
    i32.extend8_s
    f32.reinterpret_i32
    f32.sqrt
    i32.reinterpret_f32
    i32.clz
    f32.reinterpret_i32
    local.get 0
    local.get 0
    i64.clz
    i64.ne
    f32.convert_i32_u
    f32.max
    i32.reinterpret_f32
    i32.clz
    global.set $global_4055305594
    drop
)

)