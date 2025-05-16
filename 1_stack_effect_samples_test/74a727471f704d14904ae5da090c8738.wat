(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_4201242981 (mut i64) (i64.const -2125865061309784758))
(func $run (export "run")
    (local f32 i32)
    (local $temp i32)
    local.get 0
    i32.trunc_f32_u
    i32.clz
    i32.extend16_s
    local.tee 1
    i32.extend8_s
    (i32.const 6716128)
    i32.div_s
    i64.extend_i32_s
    i64.clz
    (f32.const 1235048704.0)
    ;;INSPECT
    f32.ceil
    i32.reinterpret_f32
    drop
    f64.convert_i64_s
    f64.sqrt
    f64.sqrt
    f64.nearest
    i64.reinterpret_f64
    global.set $global_4201242981
)

)