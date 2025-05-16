(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f64 f32)
    (local $temp i32)
    local.get 0
    f64.trunc
    (f32.const -36314644.0)
    f32.trunc
    local.tee 1
    f32.abs
    nop
    f32.abs
    f32.sqrt
    i64.trunc_f32_u
    ;;INSPECT
    nop
    f64.convert_i64_u
    local.set 0
    i64.reinterpret_f64
    i64.extend32_s
    drop
)

)