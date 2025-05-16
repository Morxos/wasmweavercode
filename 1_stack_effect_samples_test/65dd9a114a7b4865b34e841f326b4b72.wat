(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3258116448 (mut i32) (i32.const 1841955812))
(func $run (export "run")
    (local i64 i32)
    (local $temp i32)
    local.get 0
    i64.extend32_s
    i64.eqz
    i32.clz
    f32.convert_i32_u
    ;;INSPECT
    f32.ceil
    f32.abs
    f64.promote_f32
    f64.nearest
    i32.trunc_f64_u
    i32.extend16_s
    i64.extend_i32_s
    f64.reinterpret_i64
    i64.reinterpret_f64
    f32.convert_i64_u
    f32.sqrt
    i32.reinterpret_f32
    local.tee 1
    f32.reinterpret_i32
    (f32.const -1.5100575820127095e-17)
    f32.mul
    f32.nearest
    i32.reinterpret_f32
    i64.extend_i32_u
    i64.eqz
    f32.reinterpret_i32
    f32.nearest
    f32.sqrt
    i32.reinterpret_f32
    i32.extend8_s
    i32.clz
    i32.clz
    i32.clz
    global.set $global_3258116448
)

)