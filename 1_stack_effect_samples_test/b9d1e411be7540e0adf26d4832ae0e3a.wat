(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3356956289 (mut i32) (i32.const 235777554))
(func $run (export "run")
    (local f32 f32 i64 i64)
    (local $temp i32)
    local.get 0
    local.tee 1
    i32.reinterpret_f32
    i64.extend_i32_s
    i64.ctz
    f64.convert_i64_s
    local.get 0
    f32.neg
    (f32.const -2.981514257962485e-15)
    i32.reinterpret_f32
    nop
    i64.extend_i32_s
    i32.wrap_i64
    nop
    global.set $global_3356956289
    i64.trunc_f32_u
    i64.ctz
    local.tee 2
    local.tee 3
    i64.popcnt
    f64.convert_i64_s
    f64.nearest
    f64.le
    local.get 0
    local.get 0
    f32.copysign
    f32.trunc
    i64.trunc_f32_u
    i64.popcnt
    i64.eqz
    i32.lt_u
    ;;INSPECT
    f32.convert_i32_s
    f32.sqrt
    nop
    f32.nearest
    drop
)

)