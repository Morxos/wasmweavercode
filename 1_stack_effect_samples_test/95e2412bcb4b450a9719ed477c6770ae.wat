(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32 i64 f32 f32)
    (local $temp i32)
    local.get 0
    local.get 0
    f64.promote_f32
    f64.trunc
    f64.neg
    i64.reinterpret_f64
    (i32.const -2130)
    i32.eqz
    drop
    i64.extend32_s
    i64.extend32_s
    (f32.const -4.186150348185928e+17)
    local.set 0
    local.tee 1
    f32.convert_i64_s
    f32.abs
    local.tee 2
    local.tee 3
    f32.abs
    local.set 0
    i64.trunc_f32_u
    i64.eqz
    f32.convert_i32_u
    ;;INSPECT
    f32.neg
    drop
)

)