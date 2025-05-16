(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f64 f64 i64)
    (local $temp i32)
    local.get 0
    (i64.const -961004)
    i64.extend32_s
    f64.reinterpret_i64
    f64.gt
    (f32.const 1.0034595550323377e-11)
    i64.trunc_f32_u
    i64.extend32_s
    f64.reinterpret_i64
    f64.sqrt
    f64.nearest
    f64.trunc
    i64.trunc_f64_s
    f64.convert_i64_s
    f32.demote_f64
    f32.ceil
    f32.neg
    i32.reinterpret_f32
    ;;INSPECT
    i32.eqz
    f64.convert_i32_s
    f64.nearest
    local.tee 1
    f64.sqrt
    i64.trunc_f64_s
    i64.extend16_s
    local.tee 2
    i64.eqz
    i32.shr_s
    drop
)

)