(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2745087868 (mut f32) (f32.const -2.9484657742069105e+18))
(func $run (export "run")
    (local i64 i64 i64)
    (local $temp i32)
    local.get 0
    i64.eqz
    (f32.const 2.1903114738597296e-11)
    i64.trunc_f32_u
    ;;INSPECT
    local.tee 1
    i64.ctz
    nop
    f64.reinterpret_i64
    i64.trunc_f64_u
    i64.extend32_s
    local.tee 2
    f64.convert_i64_s
    f64.abs
    i64.trunc_f64_u
    i64.eqz
    i32.shr_s
    f32.reinterpret_i32
    f32.ceil
    i64.trunc_f32_u
    i64.extend8_s
    i64.extend16_s
    f64.reinterpret_i64
    f32.demote_f64
    i64.trunc_f32_u
    f64.reinterpret_i64
    f32.demote_f64
    global.set $global_2745087868
    local.get 0
    i64.clz
    local.set 0
    nop
)

)