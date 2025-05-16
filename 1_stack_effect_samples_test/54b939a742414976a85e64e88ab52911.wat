(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3490916702 (mut i32) (i32.const 1587132093))
(func $run (export "run")
    (local f64 i32 f32)
    (local $temp i32)
    local.get 0
    f64.trunc
    local.get 0
    f64.le
    local.tee 1
    global.set $global_3490916702
    (f32.const 4753934336.0)
    local.tee 2
    (i32.const -816)
    f32.convert_i32_u
    i32.reinterpret_f32
    i32.extend8_s
    f32.convert_i32_u
    f32.lt
    i32.clz
    i32.extend8_s
    i32.extend16_s
    f32.reinterpret_i32
    i32.reinterpret_f32
    i32.clz
    i32.clz
    i32.clz
    i32.eqz
    i32.clz
    f32.reinterpret_i32
    f32.sqrt
    i32.trunc_f32_u
    i32.clz
    f32.reinterpret_i32
    ;;INSPECT
    i32.trunc_f32_u
    nop
    drop
)

)