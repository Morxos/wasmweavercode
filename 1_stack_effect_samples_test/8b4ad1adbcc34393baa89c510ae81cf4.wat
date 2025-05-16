(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3352752742 (mut i32) (i32.const -66740134))
(global $global_600768323 (mut f32) (f32.const -7.844511887856239e+18))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    (i64.const 43058667)
    local.tee 0
    i32.wrap_i64
    global.set $global_3352752742
    local.get 0
    i64.eqz
    local.get 0
    nop
    f32.convert_i64_s
    i32.trunc_f32_u
    i32.div_s
    f32.convert_i32_u
    i32.reinterpret_f32
    global.set $global_3352752742
    local.get 0
    f64.convert_i64_s
    nop
    f64.sqrt
    f64.sqrt
    ;;INSPECT
    f32.demote_f64
    (i32.const 64)
    i32.extend16_s
    f32.convert_i32_u
    f32.lt
    f32.reinterpret_i32
    f32.sqrt
    i32.reinterpret_f32
    i32.extend16_s
    i32.extend8_s
    i32.extend8_s
    i32.extend8_s
    i32.clz
    i32.clz
    i32.clz
    f32.convert_i32_u
    global.set $global_600768323
)

)