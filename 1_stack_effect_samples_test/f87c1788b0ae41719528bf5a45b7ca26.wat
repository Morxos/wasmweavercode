(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i32 i32 f32 i64)
    (local $temp i32)
    nop
    local.get 0
    f32.reinterpret_i32
    f32.nearest
    i32.trunc_f32_u
    i32.extend16_s
    f32.convert_i32_s
    local.get 0
    local.tee 1
    i32.popcnt
    i64.extend_i32_u
    f32.convert_i64_u
    f32.floor
    f32.abs
    f32.min
    local.tee 2
    i64.trunc_f32_u
    i64.extend32_s
    f64.convert_i64_s
    f32.demote_f64
    f32.trunc
    i64.trunc_f32_u
    local.tee 3
    f32.convert_i64_u
    f32.nearest
    ;;INSPECT
    (f32.const 1.8470527091908904e+27)
    f32.lt
    local.set 0
)

)