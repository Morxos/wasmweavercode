(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    (f64.const 2.8465999621483134e-70)
    f64.trunc
    ;;INSPECT
    i64.trunc_f64_u
    f64.convert_i64_u
    i64.reinterpret_f64
    (f32.const 1.5390075137886364e-15)
    i64.trunc_f32_u
    f64.convert_i64_u
    f64.trunc
    f64.trunc
    i64.reinterpret_f64
    i64.eqz
    i64.extend_i32_s
    f32.convert_i64_u
    f32.abs
    f32.ceil
    i32.trunc_f32_s
    i32.eqz
    i64.extend_i32_s
    local.tee 0
    drop
    i64.extend32_s
    i64.clz
    f64.reinterpret_i64
    drop
)

)