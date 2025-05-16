(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f64)
    (local $temp i32)
    local.get 0
    f64.neg
    f64.neg
    i64.trunc_f64_s
    f64.convert_i64_s
    (f32.const -1231064999657472.0)
    i64.trunc_f32_s
    i64.clz
    (f32.const -2.1277099328094777e-26)
    f32.abs
    (f32.const 5.771759846172918e+18)
    f32.lt
    local.get 0
    ;;INSPECT
    i64.reinterpret_f64
    i64.eqz
    i64.extend_i32_s
    f64.reinterpret_i64
    f64.sqrt
    f64.sqrt
    f32.demote_f64
    i32.reinterpret_f32
    i32.extend16_s
    i32.shr_s
    drop
    i64.popcnt
    f64.convert_i64_s
    f64.sqrt
    f64.sub
    f64.sqrt
    i32.trunc_f64_u
    f32.convert_i32_s
    drop
)

)