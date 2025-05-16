(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_667636186 f64 (f64.const 3.2497953557110845e+18))
(global $global_2120153590 (mut i32) (i32.const -203331744))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    local.get 0
    i32.extend8_s
    f64.convert_i32_s
    f64.trunc
    f64.floor
    f64.nearest
    f64.trunc
    f64.trunc
    ;;INSPECT
    f64.nearest
    i32.trunc_f64_u
    (f32.const 12976697344.0)
    i32.reinterpret_f32
    i32.shl
    i64.extend_i32_s
    i64.eqz
    i64.extend_i32_s
    i64.extend32_s
    i64.extend32_s
    f64.convert_i64_u
    global.get $global_667636186
    f64.ne
    f32.convert_i32_u
    f32.sqrt
    i32.trunc_f32_u
    global.set $global_2120153590
)

)