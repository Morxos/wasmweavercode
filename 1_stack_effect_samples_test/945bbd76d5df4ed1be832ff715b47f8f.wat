(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1237125273 (mut i32) (i32.const 1343618749))
(global $global_1552839957 (mut f64) (f64.const 5.427460043817687e+18))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    local.get 0
    i64.extend32_s
    i64.extend32_s
    i64.ctz
    ;;INSPECT
    f64.convert_i64_u
    (f32.const -1.7589601548466254e+37)
    i32.reinterpret_f32
    global.set $global_1237125273
    f64.floor
    f64.nearest
    f64.sqrt
    f64.neg
    f64.nearest
    f32.demote_f64
    f64.promote_f32
    f64.abs
    global.set $global_1552839957
)

)