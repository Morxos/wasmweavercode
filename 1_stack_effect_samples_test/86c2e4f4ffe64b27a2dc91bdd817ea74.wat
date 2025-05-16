(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1569388136 (mut i32) (i32.const 1112893833))
(global $global_2707567485 (mut f32) (f32.const 9.077264258831483e+17))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    (f32.const 1020466848333824.0)
    i32.reinterpret_f32
    local.tee 0
    f64.convert_i32_u
    i32.trunc_f64_s
    f32.convert_i32_u
    f32.ceil
    i32.trunc_f32_u
    nop
    i32.clz
    f32.convert_i32_s
    i64.trunc_f32_u
    i64.eqz
    i32.extend16_s
    i32.eqz
    i32.clz
    (f32.const -2.7298111194713293e+17)
    i32.reinterpret_f32
    i32.div_s
    i32.clz
    f32.convert_i32_s
    f32.nearest
    local.get 0
    global.set $global_1569388136
    ;;INSPECT
    global.set $global_2707567485
    (f32.const 1.0825449994756492e-27)
    i32.reinterpret_f32
    global.set $global_1569388136
)

)