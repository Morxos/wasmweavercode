(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_4283611514 (mut i64) (i64.const 1921682203172111699))
(func $run (export "run")
    (local i64 f64)
    (local $temp i32)
    local.get 0
    i64.extend32_s
    f64.convert_i64_u
    f64.abs
    f32.demote_f64
    local.get 0
    i64.extend32_s
    i64.clz
    i64.eqz
    f32.reinterpret_i32
    f32.min
    i64.trunc_f32_s
    i64.eqz
    f64.convert_i32_u
    local.tee 1
    local.get 0
    global.set $global_4283611514
    f64.abs
    f64.sqrt
    f64.neg
    f64.neg
    f64.abs
    i64.reinterpret_f64
    ;;INSPECT
    global.set $global_4283611514
)

)