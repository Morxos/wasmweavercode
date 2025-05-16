(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2887765042 (mut f32) (f32.const -3.81779959051033e+18))
(func $run (export "run")
    (local f64 f32)
    (local $temp i32)
    (f32.const 0.24478857219219208)
    f32.sqrt
    i64.trunc_f32_u
    f64.convert_i64_s
    f64.sqrt
    f64.sqrt
    f64.trunc
    f64.trunc
    f64.trunc
    f64.trunc
    i64.trunc_f64_s
    drop
    local.get 0
    f64.abs
    f32.demote_f64
    f32.sqrt
    f32.abs
    f32.nearest
    ;;INSPECT
    f32.abs
    local.tee 1
    i64.trunc_f32_u
    i32.wrap_i64
    f32.convert_i32_s
    i32.reinterpret_f32
    i32.eqz
    i32.extend16_s
    global.get $global_2887765042
    f32.neg
    f32.ceil
    f32.ceil
    nop
    local.set 1
    i32.clz
    drop
)

)