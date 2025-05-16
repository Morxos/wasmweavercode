(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3349548279 (mut f32) (f32.const -7.111519712420299e+18))
(func $run (export "run")
    (local i32 i32)
    (local $temp i32)
    local.get 0
    f32.convert_i32_u
    i64.trunc_f32_u
    i64.eqz
    f32.convert_i32_s
    i32.reinterpret_f32
    local.tee 1
    nop
    i64.extend_i32_s
    f64.convert_i64_s
    ;;INSPECT
    f64.floor
    f64.trunc
    f64.floor
    f64.sqrt
    i64.trunc_f64_s
    i64.extend8_s
    i64.eqz
    i32.eqz
    local.get 0
    i32.lt_u
    f32.convert_i32_u
    i32.reinterpret_f32
    global.get $global_3349548279
    drop
    i32.extend16_s
    f32.convert_i32_s
    (f32.const 3.323923692732933e-06)
    i32.reinterpret_f32
    local.set 0
    drop
)

)