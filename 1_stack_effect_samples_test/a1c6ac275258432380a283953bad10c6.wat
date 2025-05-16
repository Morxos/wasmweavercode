(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1621162855 (mut f32) (f32.const -7.119624350067589e+17))
(func $run (export "run")
    (local i64 i32)
    (local $temp i32)
    (f32.const 2.148821840819437e-05)
    i64.trunc_f32_u
    local.tee 0
    i64.ctz
    local.get 0
    i64.sub
    f64.convert_i64_u
    f64.nearest
    drop
    (f32.const 0.0011825703550130129)
    i32.reinterpret_f32
    local.tee 1
    (i32.const -720)
    i32.div_s
    i64.extend_i32_s
    i64.eqz
    i32.clz
    f32.reinterpret_i32
    ;;INSPECT
    i32.reinterpret_f32
    f32.convert_i32_u
    i32.trunc_f32_u
    drop
    local.get 0
    i64.eqz
    f32.reinterpret_i32
    i32.reinterpret_f32
    f32.reinterpret_i32
    global.set $global_1621162855
)

)