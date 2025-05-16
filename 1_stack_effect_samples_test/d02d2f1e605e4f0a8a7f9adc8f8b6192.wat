(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2905921354 (mut i32) (i32.const 679823207))
(func $run (export "run")
    (local f64 i64 f64)
    (local $temp i32)
    local.get 0
    f64.ceil
    ;;INSPECT
    i64.trunc_f64_u
    i64.extend32_s
    local.tee 1
    i64.extend32_s
    i64.eqz
    global.set $global_2905921354
    local.get 0
    f64.sqrt
    i64.trunc_f64_s
    f32.convert_i64_u
    (f32.const 751.8921508789062)
    f32.sqrt
    f32.sqrt
    f32.floor
    f32.trunc
    f32.ceil
    f32.copysign
    f32.abs
    i32.trunc_f32_s
    drop
    global.get $global_2905921354
    f32.convert_i32_s
    nop
    i64.trunc_f32_u
    i64.clz
    f64.convert_i64_s
    local.tee 2
    (f32.const -2.4017965093604033e+19)
    drop
    f64.sqrt
    local.set 0
)

)