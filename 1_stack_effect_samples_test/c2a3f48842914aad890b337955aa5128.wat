(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1066948678 (mut i32) (i32.const 2144328924))
(global $global_375917230 (mut i64) (i64.const -6708806633704411791))
(func $run (export "run")
    (local $temp i32)
    (f32.const -2.0379438669954714e+28)
    f32.neg
    f64.promote_f32
    f64.floor
    f64.trunc
    f64.sqrt
    f64.floor
    f64.floor
    f64.sqrt
    i32.trunc_f64_u
    global.get $global_1066948678
    i32.lt_s
    global.set $global_1066948678
    (f32.const -4.500325882678471e-20)
    f32.abs
    f32.sqrt
    f32.trunc
    i64.trunc_f32_u
    f64.convert_i64_u
    drop
    global.get $global_1066948678
    drop
    (f32.const 1.2343190218510581e-36)
    f32.trunc
    ;;INSPECT
    i64.trunc_f32_u
    f64.reinterpret_i64
    f64.sqrt
    i64.reinterpret_f64
    f32.convert_i64_u
    i32.reinterpret_f32
    f64.convert_i32_u
    i64.reinterpret_f64
    global.set $global_375917230
)

)