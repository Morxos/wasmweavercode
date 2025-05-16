(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2234453840 (mut f32) (f32.const -1.6245407995448525e+17))
(func $run (export "run")
    (local f32 f32 i32)
    (local $temp i32)
    nop
    local.get 0
    i32.reinterpret_f32
    f32.reinterpret_i32
    f32.nearest
    f32.sqrt
    local.tee 1
    f32.ceil
    f32.abs
    f32.floor
    f32.ceil
    f32.ceil
    f32.nearest
    i32.trunc_f32_u
    ;;INSPECT
    i32.extend16_s
    i32.eqz
    f32.convert_i32_u
    i32.reinterpret_f32
    local.tee 2
    i32.clz
    f32.reinterpret_i32
    f32.floor
    (i32.const 78)
    i32.clz
    i32.eqz
    f32.convert_i32_s
    f32.max
    i32.reinterpret_f32
    i32.extend8_s
    f32.convert_i32_u
    i32.reinterpret_f32
    i32.clz
    i32.clz
    f32.convert_i32_u
    global.set $global_2234453840
)

)