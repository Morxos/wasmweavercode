(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    (i64.const 846458583)
    i64.extend32_s
    ;;INSPECT
    f32.convert_i64_u
    i32.reinterpret_f32
    local.tee 0
    f32.convert_i32_u
    f32.sqrt
    f32.trunc
    drop
    (i32.const 656266489)
    f32.convert_i32_u
    i32.trunc_f32_u
    (i32.const -2)
    i32.div_s
    i32.eqz
    f32.reinterpret_i32
    (i32.const -1087790)
    local.get 0
    i32.div_s
    f32.reinterpret_i32
    f32.mul
    f32.ceil
    drop
)

)