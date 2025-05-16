(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2955949138 (mut i32) (i32.const -427732243))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    global.get $global_2955949138
    f64.convert_i32_s
    i64.reinterpret_f64
    i64.extend16_s
    i64.clz
    i32.wrap_i64
    i32.extend8_s
    f64.convert_i32_s
    f64.neg
    i64.reinterpret_f64
    i64.extend16_s
    f64.convert_i64_s
    i32.trunc_f64_u
    f64.convert_i32_s
    i32.trunc_f64_u
    ;;INSPECT
    f64.convert_i32_s
    f64.trunc
    f64.sqrt
    i64.trunc_f64_u
    i64.eqz
    i64.extend_i32_s
    i64.popcnt
    i64.eqz
    nop
    i32.extend16_s
    f64.convert_i32_s
    f64.sqrt
    f32.demote_f64
    local.set 0
)

)