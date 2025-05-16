(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i64 f32)
    (local $temp i32)
    (i32.const 4932)
    i32.extend8_s
    i64.extend_i32_s
    i64.eqz
    i64.extend_i32_u
    i64.ctz
    i64.eqz
    f64.convert_i32_s
    local.get 0
    i32.wrap_i64
    (f32.const 5893.712890625)
    f32.trunc
    local.tee 1
    local.get 0
    i32.wrap_i64
    f32.convert_i32_s
    f32.max
    f64.promote_f32
    i32.trunc_f64_u
    i32.div_s
    i64.extend_i32_s
    i64.eqz
    (i32.const 81051333)
    i32.lt_u
    i64.extend_i32_s
    i64.clz
    f64.convert_i64_s
    f64.lt
    f32.convert_i32_u
    f32.trunc
    ;;INSPECT
    f32.sqrt
    i32.trunc_f32_u
    i32.clz
    drop
)

)