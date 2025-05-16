(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1886208267 (mut i64) (i64.const -2864788897318389131))
(func $run (export "run")
    (local i64 i64)
    (local $temp i32)
    ;;FLAG_0
    (i64.const 5798579)
    f64.convert_i64_u
    i64.trunc_f64_s
    global.set $global_1886208267
    (i32.const 8162317)
    (f64.const 5.4370313261081793e-269)
    f32.demote_f64
    f32.sqrt
    global.get $global_1886208267
    local.set 0
    i32.trunc_f32_u
    i32.shr_s
    f64.convert_i32_u
    i64.trunc_f64_u
    i64.clz
    local.tee 1
    i64.extend16_s
    i64.eqz
    (br_table 0)
    ;;FLAG_1
    br 0
)

)