(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1995511787 (mut i32) (i32.const 702760866))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    (f32.const 3.8120229060988764e-25)
    i32.reinterpret_f32
    local.tee 0
    global.set $global_1995511787
    (i32.const -9022753)
    f32.reinterpret_i32
    i32.reinterpret_f32
    local.get 0
    i32.div_s
    i32.extend16_s
    i32.extend8_s
    f32.reinterpret_i32
    i32.trunc_f32_u
    i32.extend16_s
    f32.convert_i32_u
    i32.reinterpret_f32
    f32.reinterpret_i32
    f32.nearest
    i32.reinterpret_f32
    f32.convert_i32_u
    f32.floor
    i32.reinterpret_f32
    f32.reinterpret_i32
    f32.floor
    i32.reinterpret_f32
    ;;INSPECT
    i32.clz
    f32.convert_i32_u
    i32.reinterpret_f32
    f32.convert_i32_s
    i32.reinterpret_f32
    global.set $global_1995511787
)

)