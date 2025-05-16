(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_4266304123 (mut i32) (i32.const 1846163844))
(func $run (export "run")
    (local f32 i32)
    (local $temp i32)
    local.get 0
    local.get 0
    f32.min
    f32.neg
    i64.trunc_f32_u
    i64.eqz
    local.get 0
    (f32.const 1.2871222317134556e-11)
    i32.reinterpret_f32
    local.tee 1
    f32.convert_i32_u
    f32.lt
    i32.div_s
    i32.extend8_s
    i32.clz
    i32.extend8_s
    f32.reinterpret_i32
    f32.sqrt
    i32.reinterpret_f32
    i32.extend16_s
    (f32.const 16473.0546875)
    i32.trunc_f32_u
    i32.div_s
    i32.extend8_s
    f32.reinterpret_i32
    i32.reinterpret_f32
    ;;INSPECT
    i32.clz
    i32.clz
    i32.clz
    i32.clz
    i32.clz
    i32.clz
    global.set $global_4266304123
)

)