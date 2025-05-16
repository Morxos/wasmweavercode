(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_265332811 (mut f32) (f32.const 8.186369844141097e+17))
(global $global_1053105206 (mut f64) (f64.const -4.551077511047901e+18))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    local.get 0
    f32.convert_i64_u
    i64.trunc_f32_u
    i64.eqz
    f32.reinterpret_i32
    f32.trunc
    ;;INSPECT
    i64.trunc_f32_u
    i64.eqz
    i32.extend8_s
    i64.extend_i32_s
    i64.ctz
    global.get $global_265332811
    f64.promote_f32
    f64.sqrt
    global.set $global_1053105206
    local.set 0
)

)