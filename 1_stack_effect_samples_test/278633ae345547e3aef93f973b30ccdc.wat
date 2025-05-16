(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_971999215 (mut i32) (i32.const -1319954918))
(func $run (export "run")
    (local i32 i64)
    (local $temp i32)
    local.get 0
    f64.convert_i32_s
    f64.trunc
    f32.demote_f64
    i32.reinterpret_f32
    f32.convert_i32_s
    f32.trunc
    i64.trunc_f32_u
    i64.extend32_s
    i64.extend32_s
    ;;INSPECT
    i64.popcnt
    (f32.const 1.4889430799414072e-09)
    f64.promote_f32
    f64.abs
    i64.reinterpret_f64
    i64.rem_s
    i64.eqz
    f32.reinterpret_i32
    i32.reinterpret_f32
    i32.extend8_s
    f32.convert_i32_u
    i32.trunc_f32_s
    (i64.const 5356938)
    nop
    local.tee 1
    f64.reinterpret_i64
    i64.trunc_f64_s
    i64.clz
    i64.eqz
    i32.lt_u
    i32.clz
    global.set $global_971999215
)

)