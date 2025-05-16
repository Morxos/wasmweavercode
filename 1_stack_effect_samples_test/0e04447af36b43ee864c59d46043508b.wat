(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_4247815320 (mut f64) (f64.const 4.130414942975193e+18))
(func $run (export "run")
    (local i64 f32)
    (local $temp i32)
    local.get 0
    f64.convert_i64_s
    f64.nearest
    f64.abs
    f32.demote_f64
    i64.trunc_f32_u
    drop
    (f32.const 2.92534168693237e-05)
    f32.neg
    local.tee 1
    global.get $global_4247815320
    f64.nearest
    f64.abs
    global.set $global_4247815320
    i32.reinterpret_f32
    f32.convert_i32_s
    local.get 0
    nop
    drop
    ;;INSPECT
    local.get 0
    i64.extend16_s
    drop
    drop
)

)