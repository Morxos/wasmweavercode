(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_864272887 (mut f32) (f32.const 7.896930280076739e+17))
(global $global_3006805976 (mut i64) (i64.const -4465518994457975628))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    (f32.const -4.228923735017281e+22)
    f32.neg
    i32.reinterpret_f32
    f32.convert_i32_s
    ;;INSPECT
    local.tee 0
    i32.reinterpret_f32
    i32.extend16_s
    (i32.const -153659159)
    i32.div_s
    i32.clz
    f32.convert_i32_s
    i32.reinterpret_f32
    f32.convert_i32_u
    i32.reinterpret_f32
    f64.convert_i32_u
    f64.sqrt
    f64.trunc
    f64.sqrt
    i64.trunc_f64_s
    local.get 0
    i32.reinterpret_f32
    f32.convert_i32_u
    global.set $global_864272887
    i64.eqz
    i64.extend_i32_u
    global.set $global_3006805976
)

)