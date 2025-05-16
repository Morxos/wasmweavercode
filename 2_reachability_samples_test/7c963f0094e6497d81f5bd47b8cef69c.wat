(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    ;;FLAG_0
    (i32.const 23702760)
    i32.popcnt
    i64.extend_i32_s
    (f64.const 6.671721086581778e-294)
    i64.reinterpret_f64
    f32.convert_i64_s
    f32.ceil
    local.set 0
    i64.popcnt
    nop
    nop
    i64.eqz
    (br_table 0)
    ;;FLAG_1
    local.get 0
    i32.reinterpret_f32
    (br_table 0)
    ;;FLAG_2
    return
)

)