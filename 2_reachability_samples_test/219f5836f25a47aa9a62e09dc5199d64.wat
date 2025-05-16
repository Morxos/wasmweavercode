(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(table $tab_1391824791 3 funcref)
(func $run (export "run")
    (local f64 i64)
    (local $temp i32)
    ;;FLAG_0
    (f64.const 1.4988381639091745e+93)
    local.tee 0
    (f32.const 7.84879814480705e+26)
    f32.abs
    f32.trunc
    f32.floor
    f32.trunc
    (i64.const 51849)
    local.set 1
    i32.reinterpret_f32
    (f64.const 1.6826665036064609e+274)
    i64.reinterpret_f64
    (f64.const 1.250105058535172e+262)
    i64.reinterpret_f64
    i64.eq
    i32.lt_u
    f64.convert_i32_u
    f64.le
    table.get $tab_1391824791
    drop
)

)