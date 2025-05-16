(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3043302631 f32 (f32.const 7.095105653085045e+18))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    global.get $global_3043302631
    (i32.const 58329)
    local.tee 0
    f32.convert_i32_u
    f32.max
    (i32.const 7012827)
    f32.convert_i32_u
    f32.lt
    i32.extend16_s
    local.get 0
    i32.div_s
    f32.convert_i32_u
    i32.trunc_f32_u
    f32.reinterpret_i32
    f32.floor
    (f32.const 3.364249767656702e-09)
    f32.gt
    f32.convert_i32_u
    i32.trunc_f32_s
    f32.convert_i32_u
    i32.trunc_f32_u
    f32.convert_i32_u
    i32.trunc_f32_u
    ;;INSPECT
    f32.convert_i32_u
    drop
)

)