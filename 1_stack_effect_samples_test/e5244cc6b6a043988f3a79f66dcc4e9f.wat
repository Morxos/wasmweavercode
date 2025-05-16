(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    nop
    (f32.const -112713187328.0)
    i32.reinterpret_f32
    i64.extend_i32_s
    i64.eqz
    (f32.const 3.336799676047844e+30)
    local.tee 0
    i32.reinterpret_f32
    i32.div_s
    f32.convert_i32_u
    local.get 0
    f32.sub
    i32.reinterpret_f32
    i32.popcnt
    i32.clz
    i32.clz
    ;;INSPECT
    (i32.const 666)
    i32.div_s
    i32.clz
    i32.clz
    f32.convert_i32_u
    i64.trunc_f32_u
    i64.popcnt
    i64.popcnt
    i64.clz
    i64.eqz
    i32.clz
    drop
)

)