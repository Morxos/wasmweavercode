(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    (f32.const -6.394337890080718e-39)
    i32.reinterpret_f32
    i32.eqz
    f32.reinterpret_i32
    f32.trunc
    i32.reinterpret_f32
    f32.convert_i32_s
    i64.trunc_f32_u
    i64.extend32_s
    local.tee 0
    (f32.const -0.00011745455412892625)
    f32.trunc
    ;;INSPECT
    i32.reinterpret_f32
    i32.eqz
    i32.extend16_s
    i32.popcnt
    drop
    i64.clz
    f64.convert_i64_u
    f64.neg
    f64.abs
    f64.sqrt
    drop
    nop
)

)