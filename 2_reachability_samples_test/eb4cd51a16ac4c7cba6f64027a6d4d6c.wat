(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3264784429 (mut i64) (i64.const 5696413729588016120))
(func $run (export "run")
    (local i32 i64 f32 f32 f32)
    (local $temp i32)
    ;;FLAG_0
    nop
    (f64.const 1.8631053298673716e-89)
    f64.sqrt
    i64.trunc_f64_s
    global.set $global_3264784429
    local.get 0
    (br_table 0)
    ;;FLAG_1
    global.get $global_3264784429
    i64.ctz
    local.set 1
    (f32.const -112291.375)
    local.tee 2
    local.tee 3
    i32.reinterpret_f32
    (br_table 0)
    ;;FLAG_2
    local.get 0
    f32.convert_i32_u
    f32.neg
    local.tee 4
    i32.reinterpret_f32
    br_if 0
    ;;FLAG_3
)

)