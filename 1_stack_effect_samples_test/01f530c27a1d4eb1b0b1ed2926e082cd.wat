(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2618082792 (mut i32) (i32.const -838208177))
(global $global_4268869143 (mut f32) (f32.const 3.50235719492436e+17))
(func $run (export "run")
    (local i64 i32 i32)
    (local $temp i32)
    local.get 0
    f32.convert_i64_u
    f32.ceil
    i32.reinterpret_f32
    i32.popcnt
    f64.convert_i32_u
    i64.reinterpret_f64
    i64.popcnt
    f64.convert_i64_s
    i64.trunc_f64_u
    f64.convert_i64_u
    i64.trunc_f64_s
    i64.eqz
    f32.reinterpret_i32
    f32.ceil
    i32.trunc_f32_u
    drop
    (f32.const -6126917413502976.0)
    global.get $global_2618082792
    i64.extend_i32_u
    i64.popcnt
    i64.extend32_s
    i64.extend32_s
    i64.extend16_s
    i64.eqz
    ;;INSPECT
    local.tee 1
    i32.clz
    f64.convert_i32_s
    i32.trunc_f64_u
    local.tee 2
    i32.extend16_s
    i64.extend_i32_u
    i64.clz
    i64.clz
    local.set 0
    f32.ceil
    f32.floor
    global.set $global_4268869143
)

)