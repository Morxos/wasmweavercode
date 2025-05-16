(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32 f32 i64)
    (local $temp i32)
    (f32.const 1.3267707424247596e-21)
    i64.trunc_f32_u
    f64.convert_i64_u
    f64.trunc
    i64.reinterpret_f64
    (f32.const -0.08897282183170319)
    f32.floor
    f32.abs
    local.get 0
    f32.min
    f32.neg
    i64.trunc_f32_s
    f32.convert_i64_u
    local.tee 1
    i64.trunc_f32_u
    i64.ctz
    i64.sub
    ;;INSPECT
    f64.convert_i64_s
    f64.abs
    i64.reinterpret_f64
    local.tee 2
    i64.extend8_s
    i64.eqz
    i32.clz
    i32.clz
    i32.clz
    i32.clz
    drop
)

)