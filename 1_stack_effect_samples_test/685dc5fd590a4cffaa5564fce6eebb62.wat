(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    (i32.const -1717946)
    i32.clz
    f32.convert_i32_u
    f32.floor
    i32.reinterpret_f32
    f32.convert_i32_u
    local.set 0
    (f32.const 6.43689969876992e+16)
    i32.reinterpret_f32
    i32.popcnt
    f32.convert_i32_u
    f32.trunc
    i64.trunc_f32_u
    (f32.const -1.2588805249034383e+25)
    f32.neg
    local.set 0
    ;;INSPECT
    i64.popcnt
    i64.popcnt
    i64.popcnt
    i32.wrap_i64
    i32.clz
    i32.clz
    drop
)

)