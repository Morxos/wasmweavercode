(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1404496235 i32 (i32.const -361856457))
(func $run (export "run")
    (local i32 f32)
    (local $temp i32)
    global.get $global_1404496235
    i64.extend_i32_u
    (i32.const 1996561307)
    local.tee 0
    f64.convert_i32_u
    i64.trunc_f64_s
    i64.rem_u
    i64.eqz
    i32.extend16_s
    f32.reinterpret_i32
    i32.trunc_f32_u
    f32.convert_i32_u
    local.tee 1
    i64.trunc_f32_u
    f64.reinterpret_i64
    i64.trunc_f64_u
    i64.clz
    i64.eqz
    i32.extend8_s
    f32.convert_i32_s
    local.get 0
    f32.reinterpret_i32
    f32.lt
    i32.clz
    ;;INSPECT
    i32.clz
    (i32.const -308)
    i32.div_s
    drop
)

)