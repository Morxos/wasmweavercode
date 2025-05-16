(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i64 f64)
    (local $temp i32)
    local.get 0
    i64.eqz
    i32.popcnt
    i32.extend8_s
    i32.popcnt
    i32.eqz
    i64.extend_i32_s
    i64.ctz
    i64.extend32_s
    local.get 0
    i64.eqz
    i64.extend_i32_s
    i64.sub
    i64.eqz
    local.get 0
    f64.convert_i64_s
    i64.trunc_f64_u
    i64.eqz
    i32.shr_s
    f64.convert_i32_s
    f64.abs
    f64.sqrt
    i64.trunc_f64_u
    f64.convert_i64_s
    f32.demote_f64
    i64.trunc_f32_u
    drop
    (f32.const 2.6213096884912452e-23)
    f32.neg
    (f32.const 6.583227712964046e-11)
    f32.le
    f64.convert_i32_u
    ;;INSPECT
    f64.sqrt
    f64.sqrt
    f64.sqrt
    local.set 1
)

)