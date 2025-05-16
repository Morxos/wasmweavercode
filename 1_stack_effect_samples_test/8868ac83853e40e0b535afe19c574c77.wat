(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_411993944 (mut i32) (i32.const 942863846))
(func $run (export "run")
    (local f32 i64 f64)
    (local $temp i32)
    local.get 0
    f32.sqrt
    f32.ceil
    i32.reinterpret_f32
    i32.popcnt
    i32.ctz
    local.get 0
    i32.reinterpret_f32
    i32.le_u
    f32.reinterpret_i32
    f32.abs
    ;;INSPECT
    i64.trunc_f32_u
    (f32.const -22.19446563720703)
    local.get 0
    f32.trunc
    f32.copysign
    i64.trunc_f32_s
    i64.sub
    local.tee 1
    f64.convert_i64_u
    f64.sqrt
    f64.sqrt
    local.set 2
    (i32.const -27985)
    i32.extend8_s
    global.set $global_411993944
    (f32.const -3.6476854741571506e+23)
    drop
)

)