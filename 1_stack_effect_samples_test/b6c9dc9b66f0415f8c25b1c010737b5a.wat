(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_857461397 (mut i64) (i64.const 1171006990833726882))
(global $global_1186179612 (mut i32) (i32.const 133538218))
(func $run (export "run")
    (local f64 i32)
    (local $temp i32)
    local.get 0
    local.get 0
    i64.trunc_f64_u
    i64.popcnt
    global.set $global_857461397
    i64.trunc_f64_u
    i64.ctz
    i64.popcnt
    ;;INSPECT
    (i64.const -9)
    f64.convert_i64_s
    f64.neg
    i64.reinterpret_f64
    i64.rem_s
    local.get 0
    i64.trunc_f64_u
    i64.clz
    i64.sub
    i64.ctz
    i64.eqz
    i32.extend16_s
    i64.extend_i32_s
    f32.convert_i64_u
    f32.nearest
    nop
    f32.abs
    f32.trunc
    f32.ceil
    f32.abs
    f32.abs
    f32.nearest
    i32.reinterpret_f32
    local.tee 1
    global.set $global_1186179612
)

)