(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32 i32)
    (local $temp i32)
    local.get 0
    local.get 0
    local.get 0
    ;;INSPECT
    (f32.const -1.1627862920712375e+28)
    local.get 0
    (f32.const -188821520.0)
    i64.trunc_f32_s
    i64.extend16_s
    i64.extend32_s
    i64.extend16_s
    i64.clz
    i64.clz
    i64.extend32_s
    drop
    f32.neg
    f32.neg
    i32.trunc_f32_s
    i32.eqz
    i32.eqz
    i32.eqz
    drop
    f32.min
    f32.neg
    f32.lt
    local.tee 1
    f64.convert_i32_s
    f32.demote_f64
    f32.ceil
    f32.le
    i64.extend_i32_s
    i32.wrap_i64
    i32.eqz
    f32.reinterpret_i32
    drop
)

)