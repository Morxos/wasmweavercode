(module
(type $sig_function_2949982463 (func))
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3647354919 (mut f64) (f64.const 5.6910982675729e+17))
(func $function_2949982463 (export "function_2949982463")
    (local $temp i32)
    ;;FLAG_0
    (f32.const -1953234560.0)
    i32.trunc_f32_s
    i32.popcnt
    i32.clz
    global.get $global_3647354919
    f64.abs
    f64.sqrt
    i64.trunc_f64_s
    i64.eqz
    i32.shr_s
    nop
    (br_table 0)
    ;;FLAG_1
)
(func $run (export "run")
    (local i64)
    (local $temp i32)
    ;;FLAG_2
    (f64.const 7.0132709210492376e+84)
    (i64.const 93973)
    local.tee 0
    local.set 0
    f64.sqrt
    f64.floor
    i64.reinterpret_f64
    f64.reinterpret_i64
    (f32.const 1.4141686316723362e+30)
    f32.nearest
    (i32.const 40403358)
    drop
    f32.sqrt
    f32.sqrt
    f32.sqrt
    f64.promote_f32
    f64.le
    f32.convert_i32_s
    i32.trunc_f32_s
    call $function_2949982463
    (br_table 0)
    ;;FLAG_3
)

)