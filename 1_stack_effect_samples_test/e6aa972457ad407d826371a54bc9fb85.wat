(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_447997026 (mut i64) (i64.const 4760715775796982064))
(global $global_4238462153 (mut i32) (i32.const -447303683))
(global $global_1538148897 (mut f32) (f32.const -2.969068697966084e+18))
(func $run (export "run")
    (local i64 f32)
    (local $temp i32)
    local.get 0
    (i32.const 65212)
    f32.convert_i32_s
    local.tee 1
    f32.abs
    local.get 0
    global.set $global_447997026
    i32.reinterpret_f32
    local.get 0
    i32.wrap_i64
    i32.lt_u
    ;;INSPECT
    f32.convert_i32_s
    i64.trunc_f32_u
    f64.convert_i64_s
    f64.abs
    f64.abs
    f64.abs
    i64.reinterpret_f64
    i64.eq
    f32.convert_i32_s
    i32.reinterpret_f32
    global.set $global_4238462153
    local.get 0
    i32.wrap_i64
    f32.convert_i32_s
    global.set $global_1538148897
)

)