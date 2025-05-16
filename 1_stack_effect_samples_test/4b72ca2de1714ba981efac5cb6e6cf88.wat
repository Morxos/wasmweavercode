(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32 f32)
    (local $temp i32)
    local.get 0
    local.get 0
    f32.min
    (f32.const 77749688.0)
    local.tee 1
    f32.lt
    f32.convert_i32_u
    i32.reinterpret_f32
    f32.convert_i32_u
    f32.trunc
    f32.neg
    f32.nearest
    local.get 0
    f32.sqrt
    f32.min
    (f32.const -1.6156553112085005e+30)
    f32.min
    i32.reinterpret_f32
    i32.eqz
    i32.extend8_s
    i32.extend16_s
    ;;INSPECT
    i32.extend8_s
    i32.clz
    f32.convert_i32_u
    f32.trunc
    i32.reinterpret_f32
    f32.convert_i32_s
    i32.trunc_f32_u
    f64.convert_i32_u
    f64.floor
    drop
)

)