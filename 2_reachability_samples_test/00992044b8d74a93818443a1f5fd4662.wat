(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2259751117 f64 (f64.const 8.697954402739495e+18))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    ;;FLAG_0
    global.get $global_2259751117
    f64.nearest
    f32.demote_f64
    f32.nearest
    i64.trunc_f32_u
    i64.eqz
    (i32.const -4303857)
    f64.convert_i32_u
    nop
    i64.trunc_f64_s
    i64.extend16_s
    i64.extend8_s
    local.set 0
    i32.extend8_s
    f32.convert_i32_u
    f32.sqrt
    i32.trunc_f32_s
    (br_table 0)
    ;;FLAG_1
    (i32.const -300)
    (br_table 0)
    ;;FLAG_2
)

)