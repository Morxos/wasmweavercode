(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_319595974 (mut i32) (i32.const -1968483404))
(func $run (export "run")
    (local f64 i32)
    (local $temp i32)
    (f32.const -1.6680220451501573e-29)
    local.get 0
    f32.demote_f64
    f32.copysign
    f32.ceil
    ;;INSPECT
    i32.trunc_f32_u
    local.get 0
    i64.trunc_f64_u
    i64.eqz
    i32.shr_s
    i32.eqz
    i64.extend_i32_s
    f32.convert_i64_u
    i32.reinterpret_f32
    local.tee 1
    f32.convert_i32_s
    f32.neg
    i32.reinterpret_f32
    f32.convert_i32_u
    i64.trunc_f32_u
    f64.convert_i64_s
    i64.reinterpret_f64
    i64.extend8_s
    i64.eqz
    i32.extend16_s
    i32.clz
    f32.convert_i32_u
    drop
    local.get 0
    f64.nearest
    i64.trunc_f64_s
    i64.eqz
    f32.convert_i32_u
    i32.reinterpret_f32
    global.set $global_319595974
)

)