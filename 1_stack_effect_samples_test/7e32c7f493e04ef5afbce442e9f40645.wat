(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3482344254 (mut f64) (f64.const 5.589945087137436e+18))
(global $global_2548562582 (mut i32) (i32.const -567965154))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    (i32.const -4605480)
    f64.convert_i32_s
    global.set $global_3482344254
    (f32.const 4.3532441610511974e+17)
    local.tee 0
    nop
    i32.reinterpret_f32
    local.get 0
    i64.trunc_f32_u
    i64.eqz
    ;;INSPECT
    i32.lt_u
    i32.clz
    i32.extend8_s
    i32.clz
    f32.reinterpret_i32
    i32.trunc_f32_s
    i32.clz
    f32.convert_i32_s
    (i32.const 8271)
    i32.clz
    drop
    i32.reinterpret_f32
    i32.clz
    i32.clz
    i32.clz
    i32.clz
    global.set $global_2548562582
)

)