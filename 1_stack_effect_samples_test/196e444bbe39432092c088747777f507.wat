(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_377086099 (mut f32) (f32.const -4.4045328050741576e+18))
(func $run (export "run")
    (local i64 i32 f32 f32)
    (local $temp i32)
    global.get $global_377086099
    f32.neg
    f32.abs
    global.set $global_377086099
    local.get 0
    (f32.const -7.626928432324018e+18)
    drop
    f64.convert_i64_s
    f64.neg
    f64.trunc
    f64.trunc
    f64.trunc
    f64.neg
    i64.trunc_f64_u
    i32.wrap_i64
    i32.popcnt
    ;;INSPECT
    i32.eqz
    local.set 1
    local.get 0
    f32.convert_i64_s
    local.tee 2
    f32.trunc
    f32.sqrt
    local.tee 3
    local.set 2
)

)