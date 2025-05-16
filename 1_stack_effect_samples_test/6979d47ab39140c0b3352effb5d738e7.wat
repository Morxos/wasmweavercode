(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1372072590 (mut i64) (i64.const -8580072752620283943))
(func $run (export "run")
    (local f32 f32 i64 i64)
    (local $temp i32)
    local.get 0
    i32.reinterpret_f32
    f32.reinterpret_i32
    local.tee 1
    f32.nearest
    i64.trunc_f32_u
    i64.extend32_s
    local.tee 2
    f64.reinterpret_i64
    local.get 0
    f32.ceil
    f32.trunc
    i64.trunc_f32_u
    i64.popcnt
    i64.ctz
    local.tee 3
    i64.clz
    f64.convert_i64_s
    f64.sqrt
    f64.sub
    ;;INSPECT
    f64.abs
    i64.reinterpret_f64
    global.set $global_1372072590
    nop
)

)