(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1109054805 (mut i64) (i64.const 5055200187899447631))
(func $run (export "run")
    (local i32 f32)
    (local $temp i32)
    (i32.const 9)
    local.tee 0
    f32.convert_i32_s
    i32.trunc_f32_s
    f64.convert_i32_s
    i64.trunc_f64_s
    i64.eqz
    local.get 0
    i32.shr_s
    f64.convert_i32_s
    f64.nearest
    ;;INSPECT
    i64.trunc_f64_u
    i32.wrap_i64
    i64.extend_i32_s
    f64.convert_i64_s
    f32.demote_f64
    local.tee 1
    i64.trunc_f32_u
    i64.popcnt
    i64.clz
    f64.convert_i64_s
    f64.sqrt
    f64.sqrt
    i64.reinterpret_f64
    global.set $global_1109054805
)

)