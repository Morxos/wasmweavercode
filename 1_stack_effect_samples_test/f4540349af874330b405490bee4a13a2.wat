(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_285734690 (mut f32) (f32.const 8.195629381314413e+18))
(global $global_3920236426 (mut f64) (f64.const 1.1265822203848438e+18))
(func $run (export "run")
    (local f64 f32 i32)
    (local $temp i32)
    local.get 0
    i64.trunc_f64_u
    i64.extend32_s
    i64.eqz
    f64.convert_i32_s
    i64.trunc_f64_s
    f32.convert_i64_u
    local.tee 1
    ;;INSPECT
    f32.ceil
    f32.ceil
    i64.trunc_f32_u
    global.get $global_285734690
    i32.reinterpret_f32
    drop
    f32.convert_i64_s
    i32.trunc_f32_u
    i32.extend8_s
    local.tee 2
    f32.convert_i32_u
    f32.trunc
    f32.trunc
    f32.ceil
    f32.sqrt
    f32.sqrt
    i32.reinterpret_f32
    local.set 2
    local.get 0
    i64.trunc_f64_u
    f64.convert_i64_s
    global.set $global_3920236426
)

)