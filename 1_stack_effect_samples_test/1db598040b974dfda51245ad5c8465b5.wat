(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_979459598 (mut i64) (i64.const 6885085999279906832))
(func $run (export "run")
    (local i64 f32)
    (local $temp i32)
    local.get 0
    i64.extend16_s
    local.get 0
    i64.clz
    i64.rotr
    i64.extend32_s
    i64.extend32_s
    i64.eqz
    i64.extend_i32_s
    f32.convert_i64_s
    local.get 0
    f32.convert_i64_u
    f32.copysign
    f32.trunc
    f32.ceil
    i32.trunc_f32_s
    i32.extend8_s
    f64.convert_i32_u
    i64.trunc_f64_u
    i64.eqz
    ;;INSPECT
    i64.extend_i32_s
    f64.reinterpret_i64
    f64.neg
    i64.reinterpret_f64
    global.set $global_979459598
    (f32.const -5.00398702557397e+17)
    local.set 1
    (f64.const 1.4571709743664912e+143)
    drop
)

)