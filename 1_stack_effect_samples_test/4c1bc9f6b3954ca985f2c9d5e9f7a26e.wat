(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2589665947 (mut f32) (f32.const 1.7825741212011725e+17))
(global $global_1970543315 (mut i32) (i32.const 150277553))
(func $run (export "run")
    (local i64 f32)
    (local $temp i32)
    local.get 0
    (f32.const 3.729087677133902e+22)
    f32.ceil
    local.tee 1
    global.set $global_2589665947
    f64.reinterpret_i64
    local.get 0
    i64.eqz
    ;;INSPECT
    f32.convert_i32_u
    (i32.const -842188)
    f32.convert_i32_u
    f32.lt
    i32.clz
    f32.convert_i32_u
    local.get 0
    i64.eqz
    f32.reinterpret_i32
    f32.lt
    i32.clz
    global.set $global_1970543315
    f32.demote_f64
    global.set $global_2589665947
)

)