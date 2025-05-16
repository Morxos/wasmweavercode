(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    local.get 0
    (f32.const 5.831929300589006e+19)
    f32.max
    i32.reinterpret_f32
    local.get 0
    (i32.const 217022398)
    f32.convert_i32_u
    f32.max
    f32.ceil
    f64.promote_f32
    f64.trunc
    f64.trunc
    (i32.const 4)
    i32.eqz
    i64.extend_i32_u
    f32.convert_i64_u
    i64.trunc_f32_s
    i64.extend32_s
    f64.reinterpret_i64
    f64.floor
    f64.sqrt
    f64.ne
    i32.or
    i32.clz
    i32.eqz
    f32.convert_i32_s
    f32.trunc
    f32.nearest
    i32.trunc_f32_s
    i32.popcnt
    ;;INSPECT
    drop
)

)