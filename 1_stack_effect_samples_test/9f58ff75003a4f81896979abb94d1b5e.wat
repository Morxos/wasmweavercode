(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2361878752 (mut f64) (f64.const -4.576745390181931e+18))
(global $global_1605524749 (mut f32) (f32.const 4.1157389292132106e+18))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    local.get 0
    local.get 0
    i32.gt_u
    i64.extend_i32_s
    f64.convert_i64_u
    f64.abs
    i64.trunc_f64_u
    i64.ctz
    i64.popcnt
    f64.reinterpret_i64
    f64.sqrt
    f64.trunc
    f64.trunc
    f64.neg
    i64.reinterpret_f64
    ;;INSPECT
    drop
    (i64.const -3230229289244068355)
    f64.convert_i64_s
    global.set $global_2361878752
    (f32.const 1.9836888854141338e+17)
    global.set $global_1605524749
    (f32.const 7.029627812544065e+32)
    f64.promote_f32
    f64.floor
    drop
)

)