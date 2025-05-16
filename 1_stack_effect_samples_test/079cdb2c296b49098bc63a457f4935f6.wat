(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f64 i32)
    (local $temp i32)
    ;;INSPECT
    local.get 0
    f64.sqrt
    i32.trunc_f64_u
    local.get 0
    i64.trunc_f64_u
    i64.extend32_s
    i64.ctz
    i64.popcnt
    f64.convert_i64_s
    i64.trunc_f64_s
    f64.convert_i64_s
    f32.demote_f64
    f32.ceil
    i32.reinterpret_f32
    i32.shl
    i32.extend8_s
    i32.extend8_s
    i64.extend_i32_u
    (f32.const 3.757311350938153e-09)
    (f32.const -4.894815472313297e-28)
    f32.copysign
    i64.trunc_f32_s
    f64.convert_i64_s
    f64.neg
    f64.sqrt
    i64.reinterpret_f64
    drop
    i64.eqz
    local.tee 1
    f32.convert_i32_s
    f32.sqrt
    nop
    f32.trunc
    drop
)

)