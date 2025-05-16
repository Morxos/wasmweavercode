(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3279797275 (mut i64) (i64.const -674098503338061903))
(func $run (export "run")
    (local f32 f32 f32)
    (local $temp i32)
    local.get 0
    f32.floor
    i64.trunc_f32_u
    i32.wrap_i64
    i64.extend_i32_u
    i64.eqz
    local.get 0
    f32.ceil
    f32.nearest
    i32.reinterpret_f32
    i32.shr_s
    ;;INSPECT
    i64.extend_i32_s
    i64.eqz
    i32.extend16_s
    i64.extend_i32_s
    (f32.const -5.316587064910945e-21)
    local.tee 1
    local.tee 2
    i32.reinterpret_f32
    f32.convert_i32_s
    i32.reinterpret_f32
    i32.clz
    drop
    i32.wrap_i64
    i32.eqz
    f64.convert_i32_s
    i64.reinterpret_f64
    global.set $global_3279797275
)

)