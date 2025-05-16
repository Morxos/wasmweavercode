(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3510503958 (mut i32) (i32.const 2058604434))
(global $global_3033838262 (mut f64) (f64.const 5.037460179694971e+18))
(func $run (export "run")
    (local i32 i32)
    (local $temp i32)
    global.get $global_3510503958
    local.get 0
    i32.shl
    local.tee 1
    i32.extend16_s
    f32.reinterpret_i32
    ;;INSPECT
    f32.ceil
    i32.reinterpret_f32
    local.get 0
    i32.clz
    i32.div_s
    local.get 0
    i32.lt_u
    i64.extend_i32_u
    f64.convert_i64_s
    global.set $global_3033838262
    local.get 0
    f32.convert_i32_u
    i32.reinterpret_f32
    (i32.const -37751)
    i32.div_s
    i32.extend16_s
    i32.clz
    f32.convert_i32_s
    i32.trunc_f32_u
    global.set $global_3510503958
)

)