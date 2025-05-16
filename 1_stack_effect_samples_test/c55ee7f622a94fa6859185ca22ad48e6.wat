(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1999929016 (mut f32) (f32.const -3.369272513656783e+18))
(func $run (export "run")
    (local i64 f32)
    (local $temp i32)
    global.get $global_1999929016
    local.get 0
    i64.extend16_s
    i64.extend16_s
    i64.extend16_s
    i64.popcnt
    f64.convert_i64_s
    f64.floor
    (f32.const 1.9572816070234274e-35)
    f32.neg
    f32.neg
    i32.trunc_f32_u
    f64.convert_i32_s
    f64.floor
    f64.mul
    f64.floor
    i32.trunc_f64_s
    i32.eqz
    i32.eqz
    i32.clz
    f64.convert_i32_s
    ;;INSPECT
    i32.trunc_f64_u
    i64.extend_i32_u
    f64.convert_i64_s
    f64.sqrt
    f64.floor
    f64.floor
    f64.trunc
    f64.sqrt
    f64.floor
    f64.floor
    drop
    f32.neg
    local.tee 1
    global.set $global_1999929016
)

)