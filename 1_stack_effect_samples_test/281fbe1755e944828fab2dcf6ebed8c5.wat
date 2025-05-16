(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1717858137 (mut i32) (i32.const 1233690447))
(func $run (export "run")
    (local f64 f64 i32)
    (local $temp i32)
    (f32.const -9.996698303178179e-31)
    (f64.const 2.8677786538931883e-49)
    i64.trunc_f64_u
    i64.eqz
    f32.convert_i32_s
    f32.abs
    f32.abs
    f32.ceil
    f32.min
    i64.trunc_f32_s
    f64.reinterpret_i64
    local.tee 0
    f64.abs
    i64.trunc_f64_s
    i64.extend32_s
    i64.eqz
    i32.ctz
    f64.convert_i32_u
    f64.trunc
    f64.trunc
    ;;INSPECT
    i64.trunc_f64_u
    f64.reinterpret_i64
    local.tee 1
    f64.trunc
    i64.trunc_f64_u
    f32.convert_i64_u
    global.get $global_1717858137
    local.set 2
    i32.reinterpret_f32
    i32.clz
    global.set $global_1717858137
)

)