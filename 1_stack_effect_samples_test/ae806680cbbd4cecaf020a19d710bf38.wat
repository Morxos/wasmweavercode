(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3724388094 (mut f32) (f32.const -6.839681955127099e+18))
(func $run (export "run")
    (local f64 i32 i32)
    (local $temp i32)
    local.get 0
    f64.abs
    i64.trunc_f64_u
    i64.eqz
    local.tee 1
    f32.convert_i32_s
    i32.reinterpret_f32
    local.tee 2
    f32.convert_i32_u
    i32.trunc_f32_u
    i32.clz
    f32.reinterpret_i32
    i32.reinterpret_f32
    f32.reinterpret_i32
    ;;INSPECT
    i32.trunc_f32_s
    f32.reinterpret_i32
    (f32.const -3.375063084933012e+30)
    drop
    i32.reinterpret_f32
    i32.clz
    i32.clz
    i32.extend16_s
    i32.clz
    i32.clz
    i32.clz
    i32.clz
    i32.clz
    i32.clz
    i32.clz
    f32.convert_i32_u
    global.set $global_3724388094
)

)