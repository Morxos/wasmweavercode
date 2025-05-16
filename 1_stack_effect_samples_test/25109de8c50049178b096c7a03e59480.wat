(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3076985249 (mut i64) (i64.const -8879784079990743941))
(global $global_3728803228 (mut i32) (i32.const 1721620711))
(func $run (export "run")
    (local f32 i64)
    (local $temp i32)
    (f32.const -1.354862025284901e+31)
    f32.neg
    f64.promote_f32
    local.get 0
    f32.neg
    drop
    ;;INSPECT
    i64.reinterpret_f64
    local.tee 1
    f64.convert_i64_s
    f64.sqrt
    f64.sqrt
    i64.trunc_f64_s
    global.set $global_3076985249
    local.get 0
    local.get 0
    f32.lt
    f32.convert_i32_u
    i32.reinterpret_f32
    f32.reinterpret_i32
    i32.trunc_f32_u
    f32.reinterpret_i32
    f32.sqrt
    i32.reinterpret_f32
    f32.convert_i32_u
    (f32.const 8.248253760242944e-34)
    f32.lt
    global.set $global_3728803228
)

)