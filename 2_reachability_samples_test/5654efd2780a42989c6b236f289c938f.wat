(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2793238298 (mut i64) (i64.const 6164963999526062986))
(global $global_1892770383 (mut f64) (f64.const 8.161201690692289e+18))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    ;;FLAG_0
    global.get $global_2793238298
    i64.extend16_s
    f64.reinterpret_i64
    (i32.const 470)
    global.get $global_2793238298
    local.tee 0
    i64.eqz
    i32.extend16_s
    i32.lt_u
    i64.extend_i32_u
    i64.extend32_s
    i64.eqz
    i64.extend_i32_s
    f64.convert_i64_s
    global.set $global_1892770383
    f64.neg
    f64.trunc
    (f64.const 6.193324880361462e-22)
    f64.lt
    (br_table 0)
    ;;FLAG_1
    (i64.const -96752199)
    local.set 0
)

)