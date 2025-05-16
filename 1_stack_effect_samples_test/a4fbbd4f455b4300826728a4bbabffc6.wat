(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2105914700 (mut i32) (i32.const -1007034380))
(func $run (export "run")
    (local f64 f64 f32 i64)
    (local $temp i32)
    local.get 0
    local.tee 1
    i32.trunc_f64_u
    ;;INSPECT
    i32.extend16_s
    i64.extend_i32_u
    i64.ctz
    f32.convert_i64_s
    f32.floor
    nop
    f32.ceil
    f32.ceil
    f32.trunc
    (f32.const 3.359919959558976e+22)
    f32.lt
    i32.extend16_s
    f32.convert_i32_u
    i32.reinterpret_f32
    f32.convert_i32_u
    nop
    local.tee 2
    i32.trunc_f32_u
    f64.convert_i32_u
    f64.sqrt
    f64.sqrt
    i64.reinterpret_f64
    local.tee 3
    i64.popcnt
    i64.popcnt
    i64.clz
    i64.popcnt
    i64.eqz
    global.set $global_2105914700
)

)