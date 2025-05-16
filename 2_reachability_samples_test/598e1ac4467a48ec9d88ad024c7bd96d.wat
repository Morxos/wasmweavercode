(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1139650915 (mut i64) (i64.const -8457674691691959563))
(global $global_3605278216 (mut f64) (f64.const 2.801549090711814e+18))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    ;;FLAG_0
    global.get $global_1139650915
    f64.convert_i64_u
    (f32.const 2.5578345721651625e+26)
    local.tee 0
    f32.sqrt
    i64.trunc_f32_u
    i64.eqz
    (i64.const 6073398)
    f64.reinterpret_i64
    global.set $global_3605278216
    i32.extend16_s
    i64.extend_i32_u
    f64.convert_i64_s
    f64.lt
    i64.extend_i32_s
    i64.eqz
    i32.extend8_s
    (br_table 0)
    ;;FLAG_1
    br 0
)

)