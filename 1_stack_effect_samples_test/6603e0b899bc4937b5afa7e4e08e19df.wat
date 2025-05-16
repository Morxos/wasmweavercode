(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_980166579 (mut i32) (i32.const -2071565355))
(global $global_2492764451 (mut f64) (f64.const 9.029733234984471e+18))
(func $run (export "run")
    (local f32 f32)
    (local $temp i32)
    local.get 0
    f32.ceil
    f32.ceil
    i32.reinterpret_f32
    ;;INSPECT
    i32.popcnt
    i32.popcnt
    i64.extend_i32_u
    i64.eqz
    i32.eqz
    i32.extend16_s
    i64.extend_i32_s
    i32.wrap_i64
    global.set $global_980166579
    global.get $global_980166579
    i32.extend8_s
    i32.popcnt
    i32.extend16_s
    f32.convert_i32_s
    local.tee 1
    i64.trunc_f32_u
    i32.wrap_i64
    f64.convert_i32_u
    f64.neg
    f64.neg
    f64.abs
    f64.trunc
    f64.neg
    f64.sqrt
    f64.neg
    f64.abs
    f64.trunc
    i64.trunc_f64_s
    f64.convert_i64_s
    global.set $global_2492764451
)

)