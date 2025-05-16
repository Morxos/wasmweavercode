(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3009852702 (mut i32) (i32.const -184270090))
(func $run (export "run")
    (local f64 i64 f32 f64)
    (local $temp i32)
    local.get 0
    ;;INSPECT
    f64.sqrt
    i64.reinterpret_f64
    i64.ctz
    i64.eqz
    i64.extend_i32_u
    i64.extend32_s
    local.tee 1
    i64.eqz
    (f32.const -6.638030234827927e-31)
    i32.reinterpret_f32
    i32.extend16_s
    i32.shr_s
    f32.convert_i32_u
    local.tee 2
    f64.promote_f32
    local.tee 3
    i32.trunc_f64_u
    f32.convert_i32_s
    f32.abs
    f32.abs
    i32.trunc_f32_s
    f64.convert_i32_u
    f64.trunc
    i64.trunc_f64_s
    f64.reinterpret_i64
    f64.abs
    i32.trunc_f64_u
    i32.extend16_s
    global.set $global_3009852702
)

)